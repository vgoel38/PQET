 [                                                               
   {                                                             
     "Plan": {                                                   
       "Node Type": "Aggregate",                                 
       "Strategy": "Plain",                                      
       "Partial Mode": "Simple",                                 
       "Parallel Aware": false,                                  
       "Startup Cost": 7996.58,                                  
       "Total Cost": 7996.58,                                    
       "Plan Rows": 1,                                           
       "Plan Width": 32,                                         
       "Actual Startup Time": 42491.650,                         
       "Actual Total Time": 42491.651,                           
       "Actual Rows": 1,                                         
       "Actual Loops": 1,                                        
       "Shared Hit Blocks": 45964,                               
       "Shared Read Blocks": 20183,                              
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
           "Total Cost": 7996.58,                                
           "Plan Rows": 2,                                       
           "Plan Width": 17,                                     
           "Actual Startup Time": 5514.814,                      
           "Actual Total Time": 42491.546,                       
           "Actual Rows": 5,                                     
           "Actual Loops": 1,                                    
           "Inner Unique": false,                                
           "Join Filter": "(t.id = mi.movie_id)",                
           "Rows Removed by Join Filter": 0,                     
           "Shared Hit Blocks": 45964,                           
           "Shared Read Blocks": 20183,                          
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
               "Total Cost": 7943.01,                            
               "Plan Rows": 350,                                 
               "Plan Width": 25,                                 
               "Actual Startup Time": 1295.478,                  
               "Actual Total Time": 22520.712,                   
               "Actual Rows": 405,                               
               "Actual Loops": 1,                                
               "Inner Unique": true,                             
               "Shared Hit Blocks": 43500,                       
               "Shared Read Blocks": 16434,                      
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
                   "Startup Cost": 0.01,                         
                   "Total Cost": 7846.64,                        
                   "Plan Rows": 2259,                            
                   "Plan Width": 4,                              
                   "Actual Startup Time": 51.032,                
                   "Actual Total Time": 6046.727,                
                   "Actual Rows": 12951,                         
                   "Actual Loops": 1,                            
                   "Inner Unique": false,                        
                   "Shared Hit Blocks": 1324,                    
                   "Shared Read Blocks": 6733,                   
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
                       "Node Type": "Seq Scan",                  
                       "Parent Relationship": "Outer",           
                       "Parallel Aware": false,                  
                       "Relation Name": "keyword",               
                       "Alias": "k",                             
                       "Startup Cost": 0.00,                     
                       "Total Cost": 49.46,                      
                       "Plan Rows": 67,                          
                       "Plan Width": 4,                          
                       "Actual Startup Time": 7.514,             
                       "Actual Total Time": 240.365,             
                       "Actual Rows": 30,                        
                       "Actual Loops": 1,                        
                       "Filter": "(keyword ~~ '%sequel%'::text)",
                       "Rows Removed by Filter": 134140,         
                       "Shared Hit Blocks": 0,                   
                       "Shared Read Blocks": 949,                
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
                       "Actual Startup Time": 15.381,            
                       "Actual Total Time": 193.164,             
                       "Actual Rows": 432,                       
                       "Actual Loops": 30,                       
                       "Index Cond": "(keyword_id = k.id)",      
                       "Rows Removed by Index Recheck": 0,       
                       "Shared Hit Blocks": 1324,                
                       "Shared Read Blocks": 5784,               
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
                   "Actual Startup Time": 1.270,                 
                   "Actual Total Time": 1.270,                   
                   "Actual Rows": 0,                             
                   "Actual Loops": 12951,                        
                   "Index Cond": "(id = mk.movie_id)",           
                   "Rows Removed by Index Recheck": 0,           
                   "Filter": "(production_year > 2010)",         
                   "Rows Removed by Filter": 1,                  
                   "Shared Hit Blocks": 42176,                   
                   "Shared Read Blocks": 9701,                   
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
               "Actual Startup Time": 49.049,                    
               "Actual Total Time": 49.307,                      
               "Actual Rows": 0,                                 
               "Actual Loops": 405,                              
               "Index Cond": "(movie_id = mk.movie_id)",         
               "Rows Removed by Index Recheck": 0,               
               "Filter": "(info = 'Bulgaria'::text)",            
               "Rows Removed by Filter": 63,                     
               "Shared Hit Blocks": 2464,                        
               "Shared Read Blocks": 3749,                       
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
     "Planning Time": 1729.806,                                  
     "Triggers": [                                               
     ],                                                          
     "Execution Time": 42540.755                                 
   }                                                             
 ]
