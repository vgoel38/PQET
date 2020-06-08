 [                                                                                       
   {                                                                                     
     "Plan": {                                                                           
       "Node Type": "Aggregate",                                                         
       "Strategy": "Plain",                                                              
       "Partial Mode": "Simple",                                                         
       "Parallel Aware": false,                                                          
       "Startup Cost": 127407.76,                                                        
       "Total Cost": 127407.76,                                                          
       "Plan Rows": 1,                                                                   
       "Plan Width": 32,                                                                 
       "Actual Startup Time": 15305.145,                                                 
       "Actual Total Time": 15305.145,                                                   
       "Actual Rows": 1,                                                                 
       "Actual Loops": 1,                                                                
       "Shared Hit Blocks": 1366262,                                                     
       "Shared Read Blocks": 62839,                                                      
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
           "Node Type": "Merge Join",                                                    
           "Parent Relationship": "Outer",                                               
           "Parallel Aware": false,                                                      
           "Join Type": "Inner",                                                         
           "Startup Cost": 104193.02,                                                    
           "Total Cost": 127407.76,                                                      
           "Plan Rows": 1,                                                               
           "Plan Width": 17,                                                             
           "Actual Startup Time": 15305.105,                                             
           "Actual Total Time": 15305.106,                                               
           "Actual Rows": 0,                                                             
           "Actual Loops": 1,                                                            
           "Inner Unique": true,                                                         
           "Merge Cond": "(mc.movie_id = t.id)",                                         
           "Shared Hit Blocks": 1366262,                                                 
           "Shared Read Blocks": 62839,                                                  
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
               "Node Type": "Sort",                                                      
               "Parent Relationship": "Outer",                                           
               "Parallel Aware": false,                                                  
               "Startup Cost": 104193.00,                                                
               "Total Cost": 104193.00,                                                  
               "Plan Rows": 1,                                                           
               "Plan Width": 8,                                                          
               "Actual Startup Time": 15305.104,                                         
               "Actual Total Time": 15305.104,                                           
               "Actual Rows": 0,                                                         
               "Actual Loops": 1,                                                        
               "Sort Key": ["mc.movie_id"],                                              
               "Sort Method": "quicksort",                                               
               "Sort Space Used": 25,                                                    
               "Sort Space Type": "Memory",                                              
               "Shared Hit Blocks": 1366262,                                             
               "Shared Read Blocks": 62839,                                              
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
                   "Node Type": "Merge Join",                                            
                   "Parent Relationship": "Outer",                                       
                   "Parallel Aware": false,                                              
                   "Join Type": "Inner",                                                 
                   "Startup Cost": 104192.98,                                            
                   "Total Cost": 104193.00,                                              
                   "Plan Rows": 1,                                                       
                   "Plan Width": 8,                                                      
                   "Actual Startup Time": 15287.775,                                     
                   "Actual Total Time": 15287.775,                                       
                   "Actual Rows": 0,                                                     
                   "Actual Loops": 1,                                                    
                   "Inner Unique": true,                                                 
                   "Merge Cond": "(mk.keyword_id = k.id)",                               
                   "Shared Hit Blocks": 1366258,                                         
                   "Shared Read Blocks": 62839,                                          
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
                       "Node Type": "Sort",                                              
                       "Parent Relationship": "Outer",                                   
                       "Parallel Aware": false,                                          
                       "Startup Cost": 104186.84,                                        
                       "Total Cost": 104186.85,                                          
                       "Plan Rows": 106,                                                 
                       "Plan Width": 12,                                                 
                       "Actual Startup Time": 15242.520,                                 
                       "Actual Total Time": 15242.520,                                   
                       "Actual Rows": 1,                                                 
                       "Actual Loops": 1,                                                
                       "Sort Key": ["mk.keyword_id"],                                    
                       "Sort Method": "quicksort",                                       
                       "Sort Space Used": 25,                                            
                       "Sort Space Type": "Memory",                                      
                       "Shared Hit Blocks": 1366258,                                     
                       "Shared Read Blocks": 62835,                                      
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
                           "Node Type": "Merge Join",                                    
                           "Parent Relationship": "Outer",                               
                           "Parallel Aware": false,                                      
                           "Join Type": "Inner",                                         
                           "Startup Cost": 64551.17,                                     
                           "Total Cost": 104186.73,                                      
                           "Plan Rows": 106,                                             
                           "Plan Width": 12,                                             
                           "Actual Startup Time": 15242.496,                             
                           "Actual Total Time": 15242.498,                               
                           "Actual Rows": 2,                                             
                           "Actual Loops": 1,                                            
                           "Inner Unique": false,                                        
                           "Merge Cond": "(mc.movie_id = mk.movie_id)",                  
                           "Shared Hit Blocks": 1366258,                                 
                           "Shared Read Blocks": 62835,                                  
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
                               "Node Type": "Sort",                                      
                               "Parent Relationship": "Outer",                           
                               "Parallel Aware": false,                                  
                               "Startup Cost": 64551.16,                                 
                               "Total Cost": 64551.16,                                   
                               "Plan Rows": 11,                                          
                               "Plan Width": 4,                                          
                               "Actual Startup Time": 12706.029,                         
                               "Actual Total Time": 12706.031,                           
                               "Actual Rows": 2,                                         
                               "Actual Loops": 1,                                        
                               "Sort Key": ["mc.movie_id"],                              
                               "Sort Method": "quicksort",                               
                               "Sort Space Used": 25,                                    
                               "Sort Space Type": "Memory",                              
                               "Shared Hit Blocks": 1345894,                             
                               "Shared Read Blocks": 27968,                              
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
                                   "Node Type": "Merge Join",                            
                                   "Parent Relationship": "Outer",                       
                                   "Parallel Aware": false,                              
                                   "Join Type": "Inner",                                 
                                   "Startup Cost": 0.03,                                 
                                   "Total Cost": 64551.15,                               
                                   "Plan Rows": 11,                                      
                                   "Plan Width": 4,                                      
                                   "Actual Startup Time": 12121.369,                     
                                   "Actual Total Time": 12706.008,                       
                                   "Actual Rows": 2,                                     
                                   "Actual Loops": 1,                                    
                                   "Inner Unique": false,                                
                                   "Merge Cond": "(cn.id = mc.company_id)",              
                                   "Shared Hit Blocks": 1345894,                         
                                   "Shared Read Blocks": 27968,                          
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
                                       "Index Name": "company_name_pkey",                
                                       "Relation Name": "company_name",                  
                                       "Alias": "cn",                                    
                                       "Startup Cost": 0.01,                             
                                       "Total Cost": 4597.20,                            
                                       "Plan Rows": 1,                                   
                                       "Plan Width": 4,                                  
                                       "Actual Startup Time": 265.558,                   
                                       "Actual Total Time": 850.194,                     
                                       "Actual Rows": 1,                                 
                                       "Actual Loops": 1,                                
                                       "Filter": "((country_code)::text = '[sm]'::text)",
                                       "Rows Removed by Filter": 234996,                 
                                       "Shared Hit Blocks": 231720,                      
                                       "Shared Read Blocks": 3834,                       
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
                                       "Index Name": "company_id_movie_companies",       
                                       "Relation Name": "movie_companies",               
                                       "Alias": "mc",                                    
                                       "Startup Cost": 0.01,                             
                                       "Total Cost": 59751.38,                           
                                       "Plan Rows": 2609129,                             
                                       "Plan Width": 8,                                  
                                       "Actual Startup Time": 0.016,                     
                                       "Actual Total Time": 11499.276,                   
                                       "Actual Rows": 1970794,                           
                                       "Actual Loops": 1,                                
                                       "Shared Hit Blocks": 1114174,                     
                                       "Shared Read Blocks": 24134,                      
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
                             {                                                           
                               "Node Type": "Index Scan",                                
                               "Parent Relationship": "Inner",                           
                               "Parallel Aware": false,                                  
                               "Scan Direction": "Forward",                              
                               "Index Name": "movie_id_movie_keyword",                   
                               "Relation Name": "movie_keyword",                         
                               "Alias": "mk",                                            
                               "Startup Cost": 0.01,                                     
                               "Total Cost": 39285.80,                                   
                               "Plan Rows": 4523930,                                     
                               "Plan Width": 8,                                          
                               "Actual Startup Time": 0.016,                             
                               "Actual Total Time": 1874.196,                            
                               "Actual Rows": 4284332,                                   
                               "Actual Loops": 1,                                        
                               "Shared Hit Blocks": 20364,                               
                               "Shared Read Blocks": 34867,                              
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
                     {                                                                   
                       "Node Type": "Sort",                                              
                       "Parent Relationship": "Inner",                                   
                       "Parallel Aware": false,                                          
                       "Startup Cost": 6.13,                                             
                       "Total Cost": 6.13,                                               
                       "Plan Rows": 1,                                                   
                       "Plan Width": 4,                                                  
                       "Actual Startup Time": 45.249,                                    
                       "Actual Total Time": 45.250,                                      
                       "Actual Rows": 1,                                                 
                       "Actual Loops": 1,                                                
                       "Sort Key": ["k.id"],                                             
                       "Sort Method": "quicksort",                                       
                       "Sort Space Used": 25,                                            
                       "Sort Space Type": "Memory",                                      
                       "Shared Hit Blocks": 0,                                           
                       "Shared Read Blocks": 4,                                          
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
                           "Actual Startup Time": 45.230,                                
                           "Actual Total Time": 45.234,                                  
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
                         }                                                               
                       ]                                                                 
                     }                                                                   
                   ]                                                                     
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
               "Total Cost": 23042.05,                                                   
               "Plan Rows": 2528312,                                                     
               "Plan Width": 21,                                                         
               "Actual Startup Time": 0.000,                                             
               "Actual Total Time": 0.000,                                               
               "Actual Rows": 0,                                                         
               "Actual Loops": 0,                                                        
               "Shared Hit Blocks": 0,                                                   
               "Shared Read Blocks": 0,                                                  
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
     "Planning Time": 2278.199,                                                          
     "Triggers": [                                                                       
     ],                                                                                  
     "Execution Time": 15330.574                                                         
   }                                                                                     
 ]
