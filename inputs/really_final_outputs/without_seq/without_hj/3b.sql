 [                                                               
   {                                                             
     "Plan": {                                                   
       "Node Type": "Aggregate",                                 
       "Strategy": "Plain",                                      
       "Partial Mode": "Simple",                                 
       "Parallel Aware": false,                                  
       "Startup Cost": 9538.37,                                  
       "Total Cost": 9538.37,                                    
       "Plan Rows": 1,                                           
       "Plan Width": 32,                                         
       "Actual Startup Time": 42356.674,                         
       "Actual Total Time": 42356.675,                           
       "Actual Rows": 1,                                         
       "Actual Loops": 1,                                        
       "Shared Hit Blocks": 177148,                              
       "Shared Read Blocks": 20659,                              
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
           "Startup Cost": 0.05,                                 
           "Total Cost": 9538.37,                                
           "Plan Rows": 2,                                       
           "Plan Width": 17,                                     
           "Actual Startup Time": 5489.829,                      
           "Actual Total Time": 42356.579,                       
           "Actual Rows": 5,                                     
           "Actual Loops": 1,                                    
           "Inner Unique": false,                                
           "Join Filter": "(t.id = mi.movie_id)",                
           "Rows Removed by Join Filter": 0,                     
           "Shared Hit Blocks": 177148,                          
           "Shared Read Blocks": 20659,                          
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
               "Total Cost": 9484.79,                            
               "Plan Rows": 350,                                 
               "Plan Width": 25,                                 
               "Actual Startup Time": 1270.484,                  
               "Actual Total Time": 22206.018,                   
               "Actual Rows": 405,                               
               "Actual Loops": 1,                                
               "Inner Unique": true,                             
               "Shared Hit Blocks": 174682,                      
               "Shared Read Blocks": 16912,                      
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
                   "Total Cost": 9388.42,                        
                   "Plan Rows": 2259,                            
                   "Plan Width": 4,                              
                   "Actual Startup Time": 55.067,                
                   "Actual Total Time": 6306.974,                
                   "Actual Rows": 12951,                         
                   "Actual Loops": 1,                            
                   "Inner Unique": false,                        
                   "Shared Hit Blocks": 132504,                  
                   "Shared Read Blocks": 7213,                   
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
                       "Index Name": "keyword_pkey",             
                       "Relation Name": "keyword",               
                       "Alias": "k",                             
                       "Startup Cost": 0.01,                     
                       "Total Cost": 1591.24,                    
                       "Plan Rows": 67,                          
                       "Plan Width": 4,                          
                       "Actual Startup Time": 29.173,            
                       "Actual Total Time": 545.782,             
                       "Actual Rows": 30,                        
                       "Actual Loops": 1,                        
                       "Filter": "(keyword ~~ '%sequel%'::text)",
                       "Rows Removed by Filter": 134140,         
                       "Shared Hit Blocks": 131177,              
                       "Shared Read Blocks": 1432,               
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
                       "Total Cost": 116.37,                     
                       "Plan Rows": 39,                          
                       "Plan Width": 8,                          
                       "Actual Startup Time": 12.102,            
                       "Actual Total Time": 191.677,             
                       "Actual Rows": 432,                       
                       "Actual Loops": 30,                       
                       "Index Cond": "(keyword_id = k.id)",      
                       "Rows Removed by Index Recheck": 0,       
                       "Shared Hit Blocks": 1327,                
                       "Shared Read Blocks": 5781,               
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
                   "Total Cost": 0.04,                           
                   "Plan Rows": 1,                               
                   "Plan Width": 21,                             
                   "Actual Startup Time": 1.225,                 
                   "Actual Total Time": 1.225,                   
                   "Actual Rows": 0,                             
                   "Actual Loops": 12951,                        
                   "Index Cond": "(id = mk.movie_id)",           
                   "Rows Removed by Index Recheck": 0,           
                   "Filter": "(production_year > 2010)",         
                   "Rows Removed by Filter": 1,                  
                   "Shared Hit Blocks": 42178,                   
                   "Shared Read Blocks": 9699,                   
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
               "Index Name": "movie_id_movie_info",              
               "Relation Name": "movie_info",                    
               "Alias": "mi",                                    
               "Startup Cost": 0.01,                             
               "Total Cost": 0.15,                               
               "Plan Rows": 1,                                   
               "Plan Width": 4,                                  
               "Actual Startup Time": 49.645,                    
               "Actual Total Time": 49.751,                      
               "Actual Rows": 0,                                 
               "Actual Loops": 405,                              
               "Index Cond": "(movie_id = mk.movie_id)",         
               "Rows Removed by Index Recheck": 0,               
               "Filter": "(info = 'Bulgaria'::text)",            
               "Rows Removed by Filter": 63,                     
               "Shared Hit Blocks": 2466,                        
               "Shared Read Blocks": 3747,                       
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
     "Planning Time": 2257.539,                                  
     "Triggers": [                                               
     ],                                                          
     "Execution Time": 42394.397                                 
   }                                                             
 ]
