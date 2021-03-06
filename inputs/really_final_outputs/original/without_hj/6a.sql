 [                                                                                   
   {                                                                                 
     "Plan": {                                                                       
       "Node Type": "Aggregate",                                                     
       "Strategy": "Plain",                                                          
       "Partial Mode": "Simple",                                                     
       "Parallel Aware": false,                                                      
       "Startup Cost": 667.67,                                                       
       "Total Cost": 667.67,                                                         
       "Plan Rows": 1,                                                               
       "Plan Width": 96,                                                             
       "Actual Startup Time": 17564.728,                                             
       "Actual Total Time": 17564.729,                                               
       "Actual Rows": 1,                                                             
       "Actual Loops": 1,                                                            
       "Shared Hit Blocks": 3187,                                                    
       "Shared Read Blocks": 3946,                                                   
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
           "Total Cost": 667.67,                                                     
           "Plan Rows": 1,                                                           
           "Plan Width": 48,                                                         
           "Actual Startup Time": 4023.170,                                          
           "Actual Total Time": 17564.658,                                           
           "Actual Rows": 6,                                                         
           "Actual Loops": 1,                                                        
           "Inner Unique": true,                                                     
           "Shared Hit Blocks": 3187,                                                
           "Shared Read Blocks": 3946,                                               
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
               "Total Cost": 664.24,                                                 
               "Plan Rows": 175,                                                     
               "Plan Width": 37,                                                     
               "Actual Startup Time": 181.916,                                       
               "Actual Total Time": 7548.571,                                        
               "Actual Rows": 1224,                                                  
               "Actual Loops": 1,                                                    
               "Inner Unique": false,                                                
               "Join Filter": "(t.id = ci.movie_id)",                                
               "Rows Removed by Join Filter": 0,                                     
               "Shared Hit Blocks": 227,                                             
               "Shared Read Blocks": 2005,                                           
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
                   "Total Cost": 662.93,                                             
                   "Plan Rows": 5,                                                   
                   "Plan Width": 41,                                                 
                   "Actual Startup Time": 144.569,                                   
                   "Actual Total Time": 782.391,                                     
                   "Actual Rows": 11,                                                
                   "Actual Loops": 1,                                                
                   "Inner Unique": true,                                             
                   "Shared Hit Blocks": 27,                                          
                   "Shared Read Blocks": 993,                                        
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
                       "Total Cost": 661.48,                                         
                       "Plan Rows": 34,                                              
                       "Plan Width": 20,                                             
                       "Actual Startup Time": 104.638,                               
                       "Actual Total Time": 253.910,                                 
                       "Actual Rows": 14,                                            
                       "Actual Loops": 1,                                            
                       "Inner Unique": false,                                        
                       "Shared Hit Blocks": 3,                                       
                       "Shared Read Blocks": 961,                                    
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
                           "Plan Rows": 1,                                           
                           "Plan Width": 20,                                         
                           "Actual Startup Time": 69.564,                            
                           "Actual Total Time": 156.023,                             
                           "Actual Rows": 1,                                         
                           "Actual Loops": 1,                                        
                           "Filter": "(keyword = 'marvel-cinematic-universe'::text)",
                           "Rows Removed by Filter": 134169,                         
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
                           "Total Cost": 122.40,                                     
                           "Plan Rows": 39,                                          
                           "Plan Width": 8,                                          
                           "Actual Startup Time": 35.064,                            
                           "Actual Total Time": 97.828,                              
                           "Actual Rows": 14,                                        
                           "Actual Loops": 1,                                        
                           "Index Cond": "(keyword_id = k.id)",                      
                           "Rows Removed by Index Recheck": 0,                       
                           "Shared Hit Blocks": 1,                                   
                           "Shared Read Blocks": 14,                                 
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
                       "Actual Startup Time": 37.739,                                
                       "Actual Total Time": 37.739,                                  
                       "Actual Rows": 1,                                             
                       "Actual Loops": 14,                                           
                       "Index Cond": "(id = mk.movie_id)",                           
                       "Rows Removed by Index Recheck": 0,                           
                       "Filter": "(production_year > 2010)",                         
                       "Rows Removed by Filter": 0,                                  
                       "Shared Hit Blocks": 24,                                      
                       "Shared Read Blocks": 32,                                     
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
                   "Actual Startup Time": 25.613,                                    
                   "Actual Total Time": 614.642,                                     
                   "Actual Rows": 111,                                               
                   "Actual Loops": 11,                                               
                   "Index Cond": "(movie_id = mk.movie_id)",                         
                   "Rows Removed by Index Recheck": 0,                               
                   "Shared Hit Blocks": 200,                                         
                   "Shared Read Blocks": 1012,                                       
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
               "Actual Startup Time": 8.176,                                         
               "Actual Total Time": 8.176,                                           
               "Actual Rows": 0,                                                     
               "Actual Loops": 1224,                                                 
               "Index Cond": "(id = ci.person_id)",                                  
               "Rows Removed by Index Recheck": 0,                                   
               "Filter": "(name ~~ '%Downey%Robert%'::text)",                        
               "Rows Removed by Filter": 1,                                          
               "Shared Hit Blocks": 2960,                                            
               "Shared Read Blocks": 1941,                                           
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
     "Planning Time": 2671.591,                                                      
     "Triggers": [                                                                   
     ],                                                                              
     "Execution Time": 17565.420                                                     
   }                                                                                 
 ]
