 [                                                                                                                               
   {                                                                                                                             
     "Plan": {                                                                                                                   
       "Node Type": "Aggregate",                                                                                                 
       "Strategy": "Plain",                                                                                                      
       "Partial Mode": "Simple",                                                                                                 
       "Parallel Aware": false,                                                                                                  
       "Startup Cost": 8186.84,                                                                                                  
       "Total Cost": 8186.84,                                                                                                    
       "Plan Rows": 1,                                                                                                           
       "Plan Width": 32,                                                                                                         
       "Actual Startup Time": 91996.185,                                                                                         
       "Actual Total Time": 91996.185,                                                                                           
       "Actual Rows": 1,                                                                                                         
       "Actual Loops": 1,                                                                                                        
       "Shared Hit Blocks": 112513,                                                                                              
       "Shared Read Blocks": 49053,                                                                                              
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
           "Total Cost": 8186.62,                                                                                                
           "Plan Rows": 2873,                                                                                                    
           "Plan Width": 17,                                                                                                     
           "Actual Startup Time": 291.566,                                                                                       
           "Actual Total Time": 91970.416,                                                                                       
           "Actual Rows": 7250,                                                                                                  
           "Actual Loops": 1,                                                                                                    
           "Inner Unique": false,                                                                                                
           "Join Filter": "(t.id = mi.movie_id)",                                                                                
           "Rows Removed by Join Filter": 0,                                                                                     
           "Shared Hit Blocks": 112513,                                                                                          
           "Shared Read Blocks": 49053,                                                                                          
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
               "Plan Rows": 1563,                                                                                                
               "Plan Width": 25,                                                                                                 
               "Actual Startup Time": 55.717,                                                                                    
               "Actual Total Time": 30637.055,                                                                                   
               "Actual Rows": 7874,                                                                                              
               "Actual Loops": 1,                                                                                                
               "Inner Unique": true,                                                                                             
               "Shared Hit Blocks": 43484,                                                                                       
               "Shared Read Blocks": 16425,                                                                                      
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
                   "Actual Startup Time": 39.077,                                                                                
                   "Actual Total Time": 7780.857,                                                                                
                   "Actual Rows": 12951,                                                                                         
                   "Actual Loops": 1,                                                                                            
                   "Inner Unique": false,                                                                                        
                   "Shared Hit Blocks": 1329,                                                                                    
                   "Shared Read Blocks": 6728,                                                                                   
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
                       "Actual Startup Time": 16.636,                                                                            
                       "Actual Total Time": 291.785,                                                                             
                       "Actual Rows": 30,                                                                                        
                       "Actual Loops": 1,                                                                                        
                       "Filter": "(keyword ~~ '%sequel%'::text)",                                                                
                       "Rows Removed by Filter": 134140,                                                                         
                       "Shared Hit Blocks": 2,                                                                                   
                       "Shared Read Blocks": 947,                                                                                
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
                       "Actual Startup Time": 15.707,                                                                            
                       "Actual Total Time": 249.227,                                                                             
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
                   "Actual Startup Time": 1.762,                                                                                 
                   "Actual Total Time": 1.762,                                                                                   
                   "Actual Rows": 1,                                                                                             
                   "Actual Loops": 12951,                                                                                        
                   "Index Cond": "(id = mk.movie_id)",                                                                           
                   "Rows Removed by Index Recheck": 0,                                                                           
                   "Filter": "(production_year > 1990)",                                                                         
                   "Rows Removed by Filter": 0,                                                                                  
                   "Shared Hit Blocks": 42155,                                                                                   
                   "Shared Read Blocks": 9697,                                                                                   
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
               "Total Cost": 0.16,                                                                                               
               "Plan Rows": 1,                                                                                                   
               "Plan Width": 4,                                                                                                  
               "Actual Startup Time": 6.869,                                                                                     
               "Actual Total Time": 7.786,                                                                                       
               "Actual Rows": 1,                                                                                                 
               "Actual Loops": 7874,                                                                                             
               "Index Cond": "(movie_id = mk.movie_id)",                                                                         
               "Rows Removed by Index Recheck": 0,                                                                               
               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))",
               "Rows Removed by Filter": 35,                                                                                     
               "Shared Hit Blocks": 69029,                                                                                       
               "Shared Read Blocks": 32628,                                                                                      
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
     "Planning Time": 2147.890,                                                                                                  
     "Triggers": [                                                                                                               
     ],                                                                                                                          
     "Execution Time": 92037.259                                                                                                 
   }                                                                                                                             
 ]
