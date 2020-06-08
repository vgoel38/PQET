 [                                                                                                                                   
   {                                                                                                                                 
     "Plan": {                                                                                                                       
       "Node Type": "Aggregate",                                                                                                     
       "Strategy": "Plain",                                                                                                          
       "Partial Mode": "Simple",                                                                                                     
       "Parallel Aware": false,                                                                                                      
       "Startup Cost": 701257.29,                                                                                                    
       "Total Cost": 701257.29,                                                                                                      
       "Plan Rows": 1,                                                                                                               
       "Plan Width": 32,                                                                                                             
       "Actual Startup Time": 115223.788,                                                                                            
       "Actual Total Time": 115223.788,                                                                                              
       "Actual Rows": 1,                                                                                                             
       "Actual Loops": 1,                                                                                                            
       "Shared Hit Blocks": 11713270,                                                                                                
       "Shared Read Blocks": 283522,                                                                                                 
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
           "Startup Cost": 57119.97,                                                                                                 
           "Total Cost": 701257.07,                                                                                                  
           "Plan Rows": 2873,                                                                                                        
           "Plan Width": 17,                                                                                                         
           "Actual Startup Time": 8872.406,                                                                                          
           "Actual Total Time": 115201.196,                                                                                          
           "Actual Rows": 7250,                                                                                                      
           "Actual Loops": 1,                                                                                                        
           "Inner Unique": false,                                                                                                    
           "Merge Cond": "(t.id = mk.movie_id)",                                                                                     
           "Shared Hit Blocks": 11713270,                                                                                            
           "Shared Read Blocks": 283522,                                                                                             
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
               "Total Cost": 644701.18,                                                                                              
               "Plan Rows": 488105,                                                                                                  
               "Plan Width": 25,                                                                                                     
               "Actual Startup Time": 119.077,                                                                                       
               "Actual Total Time": 109416.067,                                                                                      
               "Actual Rows": 476379,                                                                                                
               "Actual Loops": 1,                                                                                                    
               "Inner Unique": true,                                                                                                 
               "Merge Cond": "(mi.movie_id = t.id)",                                                                                 
               "Shared Hit Blocks": 11560446,                                                                                        
               "Shared Read Blocks": 245280,                                                                                         
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
                   "Index Name": "movie_id_movie_info",                                                                              
                   "Relation Name": "movie_info",                                                                                    
                   "Alias": "mi",                                                                                                    
                   "Startup Cost": 0.01,                                                                                             
                   "Total Cost": 621255.91,                                                                                          
                   "Plan Rows": 705579,                                                                                              
                   "Plan Width": 4,                                                                                                  
                   "Actual Startup Time": 115.486,                                                                                   
                   "Actual Total Time": 90640.484,                                                                                   
                   "Actual Rows": 706640,                                                                                            
                   "Actual Loops": 1,                                                                                                
                   "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))",
                   "Rows Removed by Filter": 14127693,                                                                               
                   "Shared Hit Blocks": 9072299,                                                                                     
                   "Shared Read Blocks": 202420,                                                                                     
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
                   "Index Name": "title_idx_id",                                                                                     
                   "Relation Name": "title",                                                                                         
                   "Alias": "t",                                                                                                     
                   "Startup Cost": 0.01,                                                                                             
                   "Total Cost": 23238.35,                                                                                           
                   "Plan Rows": 1749033,                                                                                             
                   "Plan Width": 21,                                                                                                 
                   "Actual Startup Time": 0.031,                                                                                     
                   "Actual Total Time": 17650.774,                                                                                   
                   "Actual Rows": 1748432,                                                                                           
                   "Actual Loops": 1,                                                                                                
                   "Filter": "(production_year > 1990)",                                                                             
                   "Rows Removed by Filter": 777301,                                                                                 
                   "Shared Hit Blocks": 2488147,                                                                                     
                   "Shared Read Blocks": 42860,                                                                                      
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
               "Node Type": "Sort",                                                                                                  
               "Parent Relationship": "Inner",                                                                                       
               "Parallel Aware": false,                                                                                              
               "Startup Cost": 57114.66,                                                                                             
               "Total Cost": 57114.84,                                                                                               
               "Plan Rows": 2259,                                                                                                    
               "Plan Width": 4,                                                                                                      
               "Actual Startup Time": 5618.930,                                                                                      
               "Actual Total Time": 5625.693,                                                                                        
               "Actual Rows": 14165,                                                                                                 
               "Actual Loops": 1,                                                                                                    
               "Sort Key": ["mk.movie_id"],                                                                                          
               "Sort Method": "quicksort",                                                                                           
               "Sort Space Used": 992,                                                                                               
               "Sort Space Type": "Memory",                                                                                          
               "Shared Hit Blocks": 152824,                                                                                          
               "Shared Read Blocks": 38242,                                                                                          
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
                   "Startup Cost": 54816.89,                                                                                         
                   "Total Cost": 57110.76,                                                                                           
                   "Plan Rows": 2259,                                                                                                
                   "Plan Width": 4,                                                                                                  
                   "Actual Startup Time": 4140.810,                                                                                  
                   "Actual Total Time": 5585.839,                                                                                    
                   "Actual Rows": 12951,                                                                                             
                   "Actual Loops": 1,                                                                                                
                   "Inner Unique": false,                                                                                            
                   "Merge Cond": "(k.id = mk.keyword_id)",                                                                           
                   "Shared Hit Blocks": 152820,                                                                                      
                   "Shared Read Blocks": 38242,                                                                                      
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
                       "Actual Startup Time": 36.791,                                                                                
                       "Actual Total Time": 371.999,                                                                                 
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
                       "Node Type": "Sort",                                                                                          
                       "Parent Relationship": "Inner",                                                                               
                       "Parallel Aware": false,                                                                                      
                       "Startup Cost": 54816.88,                                                                                     
                       "Total Cost": 55168.11,                                                                                       
                       "Plan Rows": 4523930,                                                                                         
                       "Plan Width": 8,                                                                                              
                       "Actual Startup Time": 3954.262,                                                                              
                       "Actual Total Time": 4649.159,                                                                                
                       "Actual Rows": 4518173,                                                                                       
                       "Actual Loops": 1,                                                                                            
                       "Sort Key": ["mk.keyword_id"],                                                                                
                       "Sort Method": "quicksort",                                                                                   
                       "Sort Space Used": 408668,                                                                                    
                       "Sort Space Type": "Memory",                                                                                  
                       "Shared Hit Blocks": 21643,                                                                                   
                       "Shared Read Blocks": 36810,                                                                                  
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
                           "Index Name": "movie_id_movie_keyword",                                                                   
                           "Relation Name": "movie_keyword",                                                                         
                           "Alias": "mk",                                                                                            
                           "Startup Cost": 0.01,                                                                                     
                           "Total Cost": 39285.80,                                                                                   
                           "Plan Rows": 4523930,                                                                                     
                           "Plan Width": 8,                                                                                          
                           "Actual Startup Time": 0.028,                                                                             
                           "Actual Total Time": 2251.819,                                                                            
                           "Actual Rows": 4523930,                                                                                   
                           "Actual Loops": 1,                                                                                        
                           "Shared Hit Blocks": 21643,                                                                               
                           "Shared Read Blocks": 36810,                                                                              
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
             }                                                                                                                       
           ]                                                                                                                         
         }                                                                                                                           
       ]                                                                                                                             
     },                                                                                                                              
     "Planning Time": 2162.826,                                                                                                      
     "Triggers": [                                                                                                                   
     ],                                                                                                                              
     "Execution Time": 115269.538                                                                                                    
   }                                                                                                                                 
 ]
