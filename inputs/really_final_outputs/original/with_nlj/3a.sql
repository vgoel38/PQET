 [                                                                                                                  
   {                                                                                                                
     "Plan": {                                                                                                      
       "Node Type": "Aggregate",                                                                                    
       "Strategy": "Plain",                                                                                         
       "Partial Mode": "Simple",                                                                                    
       "Parallel Aware": false,                                                                                     
       "Startup Cost": 8083.46,                                                                                     
       "Total Cost": 8083.46,                                                                                       
       "Plan Rows": 1,                                                                                              
       "Plan Width": 32,                                                                                            
       "Actual Startup Time": 67922.821,                                                                            
       "Actual Total Time": 67922.821,                                                                              
       "Actual Rows": 1,                                                                                            
       "Actual Loops": 1,                                                                                           
       "Shared Hit Blocks": 61249,                                                                                  
       "Shared Read Blocks": 28787,                                                                                 
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
           "Total Cost": 8083.43,                                                                                   
           "Plan Rows": 364,                                                                                        
           "Plan Width": 17,                                                                                        
           "Actual Startup Time": 2980.288,                                                                         
           "Actual Total Time": 67921.726,                                                                          
           "Actual Rows": 206,                                                                                      
           "Actual Loops": 1,                                                                                       
           "Inner Unique": false,                                                                                   
           "Join Filter": "(t.id = mi.movie_id)",                                                                   
           "Rows Removed by Join Filter": 0,                                                                        
           "Shared Hit Blocks": 61249,                                                                              
           "Shared Read Blocks": 28787,                                                                             
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
               "Plan Rows": 905,                                                                                    
               "Plan Width": 25,                                                                                    
               "Actual Startup Time": 1241.248,                                                                     
               "Actual Total Time": 26023.763,                                                                      
               "Actual Rows": 2235,                                                                                 
               "Actual Loops": 1,                                                                                   
               "Inner Unique": true,                                                                                
               "Shared Hit Blocks": 43496,                                                                          
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
                   "Actual Startup Time": 59.638,                                                                   
                   "Actual Total Time": 6812.793,                                                                   
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
                       "Actual Startup Time": 16.247,                                                               
                       "Actual Total Time": 253.189,                                                                
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
                       "Actual Startup Time": 13.953,                                                               
                       "Actual Total Time": 218.238,                                                                
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
                   "Actual Startup Time": 1.481,                                                                    
                   "Actual Total Time": 1.481,                                                                      
                   "Actual Rows": 0,                                                                                
                   "Actual Loops": 12951,                                                                           
                   "Index Cond": "(id = mk.movie_id)",                                                              
                   "Rows Removed by Index Recheck": 0,                                                              
                   "Filter": "(production_year > 2005)",                                                            
                   "Rows Removed by Filter": 1,                                                                     
                   "Shared Hit Blocks": 42172,                                                                      
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
               "Total Cost": 0.16,                                                                                  
               "Plan Rows": 1,                                                                                      
               "Plan Width": 4,                                                                                     
               "Actual Startup Time": 17.842,                                                                       
               "Actual Total Time": 18.744,                                                                         
               "Actual Rows": 0,                                                                                    
               "Actual Loops": 2235,                                                                                
               "Index Cond": "(movie_id = mk.movie_id)",                                                            
               "Rows Removed by Index Recheck": 0,                                                                  
               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",
               "Rows Removed by Filter": 45,                                                                        
               "Shared Hit Blocks": 17753,                                                                          
               "Shared Read Blocks": 12353,                                                                         
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
     "Planning Time": 1834.860,                                                                                     
     "Triggers": [                                                                                                  
     ],                                                                                                             
     "Execution Time": 67953.508                                                                                    
   }                                                                                                                
 ]
