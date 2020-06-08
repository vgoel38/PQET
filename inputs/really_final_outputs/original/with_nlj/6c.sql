 [                                                                                       
   {                                                                                     
     "Plan": {                                                                           
       "Node Type": "Aggregate",                                                         
       "Strategy": "Plain",                                                              
       "Partial Mode": "Simple",                                                         
       "Parallel Aware": false,                                                          
       "Startup Cost": 621.02,                                                           
       "Total Cost": 621.02,                                                             
       "Plan Rows": 1,                                                                   
       "Plan Width": 96,                                                                 
       "Actual Startup Time": 1231.276,                                                  
       "Actual Total Time": 1231.276,                                                    
       "Actual Rows": 1,                                                                 
       "Actual Loops": 1,                                                                
       "Shared Hit Blocks": 102,                                                         
       "Shared Read Blocks": 140,                                                        
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
           "Total Cost": 621.02,                                                         
           "Plan Rows": 1,                                                               
           "Plan Width": 48,                                                             
           "Actual Startup Time": 858.652,                                               
           "Actual Total Time": 1231.201,                                                
           "Actual Rows": 2,                                                             
           "Actual Loops": 1,                                                            
           "Inner Unique": true,                                                         
           "Shared Hit Blocks": 102,                                                     
           "Shared Read Blocks": 140,                                                    
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
               "Total Cost": 620.92,                                                     
               "Plan Rows": 1,                                                           
               "Plan Width": 37,                                                         
               "Actual Startup Time": 243.631,                                           
               "Actual Total Time": 929.383,                                             
               "Actual Rows": 33,                                                        
               "Actual Loops": 1,                                                        
               "Inner Unique": false,                                                    
               "Join Filter": "(t.id = ci.movie_id)",                                    
               "Rows Removed by Join Filter": 0,                                         
               "Shared Hit Blocks": 24,                                                  
               "Shared Read Blocks": 86,                                                 
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
                   "Total Cost": 619.60,                                                 
                   "Plan Rows": 1,                                                       
                   "Plan Width": 41,                                                     
                   "Actual Startup Time": 188.323,                                       
                   "Actual Total Time": 678.913,                                         
                   "Actual Rows": 2,                                                     
                   "Actual Loops": 1,                                                    
                   "Inner Unique": true,                                                 
                   "Shared Hit Blocks": 22,                                              
                   "Shared Read Blocks": 53,                                             
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
                       "Plan Width": 20,                                                 
                       "Actual Startup Time": 81.710,                                    
                       "Actual Total Time": 165.515,                                     
                       "Actual Rows": 14,                                                
                       "Actual Loops": 1,                                                
                       "Inner Unique": false,                                            
                       "Shared Hit Blocks": 0,                                           
                       "Shared Read Blocks": 19,                                         
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
                           "Plan Width": 20,                                             
                           "Actual Startup Time": 37.509,                                
                           "Actual Total Time": 37.511,                                  
                           "Actual Rows": 1,                                             
                           "Actual Loops": 1,                                            
                           "Index Cond": "(keyword = 'marvel-cinematic-universe'::text)",
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
                           "Actual Startup Time": 44.187,                                
                           "Actual Total Time": 127.948,                                 
                           "Actual Rows": 14,                                            
                           "Actual Loops": 1,                                            
                           "Index Cond": "(keyword_id = k.id)",                          
                           "Rows Removed by Index Recheck": 0,                           
                           "Shared Hit Blocks": 0,                                       
                           "Shared Read Blocks": 15,                                     
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
                       "Actual Startup Time": 36.662,                                    
                       "Actual Total Time": 36.662,                                      
                       "Actual Rows": 0,                                                 
                       "Actual Loops": 14,                                               
                       "Index Cond": "(id = mk.movie_id)",                               
                       "Rows Removed by Index Recheck": 0,                               
                       "Filter": "(production_year > 2014)",                             
                       "Rows Removed by Filter": 1,                                      
                       "Shared Hit Blocks": 22,                                          
                       "Shared Read Blocks": 34,                                         
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
                   "Actual Startup Time": 43.707,                                        
                   "Actual Total Time": 125.157,                                         
                   "Actual Rows": 16,                                                    
                   "Actual Loops": 2,                                                    
                   "Index Cond": "(movie_id = mk.movie_id)",                             
                   "Rows Removed by Index Recheck": 0,                                   
                   "Shared Hit Blocks": 2,                                               
                   "Shared Read Blocks": 33,                                             
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
               "Actual Startup Time": 9.138,                                             
               "Actual Total Time": 9.138,                                               
               "Actual Rows": 0,                                                         
               "Actual Loops": 33,                                                       
               "Index Cond": "(id = ci.person_id)",                                      
               "Rows Removed by Index Recheck": 0,                                       
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                            
               "Rows Removed by Filter": 1,                                              
               "Shared Hit Blocks": 78,                                                  
               "Shared Read Blocks": 54,                                                 
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
     "Planning Time": 1524.245,                                                          
     "Triggers": [                                                                       
     ],                                                                                  
     "Execution Time": 1335.606                                                          
   }                                                                                     
 ]