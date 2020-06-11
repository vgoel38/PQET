 [                                                                                            
   {                                                                                          
     "Plan": {                                                                                
       "Node Type": "Aggregate",                                                              
       "Strategy": "Plain",                                                                   
       "Partial Mode": "Simple",                                                              
       "Parallel Aware": false,                                                               
       "Startup Cost": 3269.24,                                                               
       "Total Cost": 3269.24,                                                                 
       "Plan Rows": 1,                                                                        
       "Plan Width": 68,                                                                      
       "Actual Startup Time": 3495.975,                                                       
       "Actual Total Time": 3495.975,                                                         
       "Actual Rows": 1,                                                                      
       "Actual Loops": 1,                                                                     
       "Shared Hit Blocks": 3,                                                                
       "Shared Read Blocks": 63242,                                                           
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
           "Node Type": "Hash Join",                                                          
           "Parent Relationship": "Outer",                                                    
           "Parallel Aware": false,                                                           
           "Join Type": "Inner",                                                              
           "Startup Cost": 1607.47,                                                           
           "Total Cost": 3268.76,                                                             
           "Plan Rows": 2063,                                                                 
           "Plan Width": 45,                                                                  
           "Actual Startup Time": 3026.011,                                                   
           "Actual Total Time": 3495.934,                                                     
           "Actual Rows": 4,                                                                  
           "Actual Loops": 1,                                                                 
           "Inner Unique": false,                                                             
           "Hash Cond": "(t.id = mc.movie_id)",                                               
           "Shared Hit Blocks": 3,                                                            
           "Shared Read Blocks": 63242,                                                       
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
               "Relation Name": "title",                                                      
               "Alias": "t",                                                                  
               "Startup Cost": 0.00,                                                          
               "Total Cost": 1500.26,                                                         
               "Plan Rows": 1381453,                                                          
               "Plan Width": 25,                                                              
               "Actual Startup Time": 21.579,                                                 
               "Actual Total Time": 1657.893,                                                 
               "Actual Rows": 1381453,                                                        
               "Actual Loops": 1,                                                             
               "Filter": "(production_year > 2000)",                                          
               "Rows Removed by Filter": 1146859,                                             
               "Shared Hit Blocks": 0,                                                        
               "Shared Read Blocks": 35998,                                                   
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
               "Node Type": "Hash",                                                           
               "Parent Relationship": "Inner",                                                
               "Parallel Aware": false,                                                       
               "Startup Cost": 1606.92,                                                       
               "Total Cost": 1606.92,                                                         
               "Plan Rows": 3775,                                                             
               "Plan Width": 32,                                                              
               "Actual Startup Time": 1560.945,                                               
               "Actual Total Time": 1560.945,                                                 
               "Actual Rows": 5,                                                              
               "Actual Loops": 1,                                                             
               "Hash Buckets": 4096,                                                          
               "Original Hash Buckets": 4096,                                                 
               "Hash Batches": 1,                                                             
               "Original Hash Batches": 1,                                                    
               "Peak Memory Usage": 33,                                                       
               "Shared Hit Blocks": 0,                                                        
               "Shared Read Blocks": 27244,                                                   
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
                   "Node Type": "Hash Join",                                                  
                   "Parent Relationship": "Outer",                                            
                   "Parallel Aware": false,                                                   
                   "Join Type": "Inner",                                                      
                   "Startup Cost": 476.21,                                                    
                   "Total Cost": 1606.92,                                                     
                   "Plan Rows": 3775,                                                         
                   "Plan Width": 32,                                                          
                   "Actual Startup Time": 1388.976,                                           
                   "Actual Total Time": 1560.932,                                             
                   "Actual Rows": 5,                                                          
                   "Actual Loops": 1,                                                         
                   "Inner Unique": true,                                                      
                   "Hash Cond": "(mc.company_type_id = ct.id)",                               
                   "Shared Hit Blocks": 0,                                                    
                   "Shared Read Blocks": 27244,                                               
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
                       "Node Type": "Hash Join",                                              
                       "Parent Relationship": "Outer",                                        
                       "Parallel Aware": false,                                               
                       "Join Type": "Inner",                                                  
                       "Startup Cost": 476.18,                                                
                       "Total Cost": 1605.26,                                                 
                       "Plan Rows": 15098,                                                    
                       "Plan Width": 36,                                                      
                       "Actual Startup Time": 868.552,                                        
                       "Actual Total Time": 1560.753,                                         
                       "Actual Rows": 100,                                                    
                       "Actual Loops": 1,                                                     
                       "Inner Unique": false,                                                 
                       "Hash Cond": "(mc.movie_id = mi_idx.movie_id)",                        
                       "Shared Hit Blocks": 0,                                                
                       "Shared Read Blocks": 27243,                                           
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
                           "Relation Name": "movie_companies",                                
                           "Alias": "mc",                                                     
                           "Startup Cost": 0.00,                                              
                           "Total Cost": 972.33,                                              
                           "Plan Rows": 1337085,                                              
                           "Plan Width": 32,                                                  
                           "Actual Startup Time": 4.585,                                      
                           "Actual Total Time": 763.058,                                      
                           "Actual Rows": 1337088,                                            
                           "Actual Loops": 1,                                                 
                           "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",
                           "Rows Removed by Filter": 1272041,                                 
                           "Shared Hit Blocks": 0,                                            
                           "Shared Read Blocks": 18789,                                       
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
                           "Node Type": "Hash",                                               
                           "Parent Relationship": "Inner",                                    
                           "Parallel Aware": false,                                           
                           "Startup Cost": 474.39,                                            
                           "Total Cost": 474.39,                                              
                           "Plan Rows": 12213,                                                
                           "Plan Width": 4,                                                   
                           "Actual Startup Time": 641.988,                                    
                           "Actual Total Time": 641.988,                                      
                           "Actual Rows": 10,                                                 
                           "Actual Loops": 1,                                                 
                           "Hash Buckets": 16384,                                             
                           "Original Hash Buckets": 16384,                                    
                           "Hash Batches": 1,                                                 
                           "Original Hash Batches": 1,                                        
                           "Peak Memory Usage": 129,                                          
                           "Shared Hit Blocks": 0,                                            
                           "Shared Read Blocks": 8454,                                        
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
                               "Node Type": "Hash Join",                                      
                               "Parent Relationship": "Outer",                                
                               "Parallel Aware": false,                                       
                               "Join Type": "Inner",                                          
                               "Startup Cost": 0.05,                                          
                               "Total Cost": 474.39,                                          
                               "Plan Rows": 12213,                                            
                               "Plan Width": 4,                                               
                               "Actual Startup Time": 641.974,                                
                               "Actual Total Time": 641.978,                                  
                               "Actual Rows": 10,                                             
                               "Actual Loops": 1,                                             
                               "Inner Unique": true,                                          
                               "Hash Cond": "(mi_idx.info_type_id = it.id)",                  
                               "Shared Hit Blocks": 0,                                        
                               "Shared Read Blocks": 8454,                                    
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
                                   "Relation Name": "movie_info_idx",                         
                                   "Alias": "mi_idx",                                         
                                   "Startup Cost": 0.00,                                      
                                   "Total Cost": 360.56,                                      
                                   "Plan Rows": 1380035,                                      
                                   "Plan Width": 8,                                           
                                   "Actual Startup Time": 27.069,                             
                                   "Actual Total Time": 350.211,                              
                                   "Actual Rows": 1380035,                                    
                                   "Actual Loops": 1,                                         
                                   "Shared Hit Blocks": 0,                                    
                                   "Shared Read Blocks": 8453,                                
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
                                   "Node Type": "Hash",                                       
                                   "Parent Relationship": "Inner",                            
                                   "Parallel Aware": false,                                   
                                   "Startup Cost": 0.05,                                      
                                   "Total Cost": 0.05,                                        
                                   "Plan Rows": 1,                                            
                                   "Plan Width": 4,                                           
                                   "Actual Startup Time": 7.506,                              
                                   "Actual Total Time": 7.506,                                
                                   "Actual Rows": 1,                                          
                                   "Actual Loops": 1,                                         
                                   "Hash Buckets": 1024,                                      
                                   "Original Hash Buckets": 1024,                             
                                   "Hash Batches": 1,                                         
                                   "Original Hash Batches": 1,                                
                                   "Peak Memory Usage": 9,                                    
                                   "Shared Hit Blocks": 0,                                    
                                   "Shared Read Blocks": 1,                                   
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
                                       "Relation Name": "info_type",                          
                                       "Alias": "it",                                         
                                       "Startup Cost": 0.00,                                  
                                       "Total Cost": 0.05,                                    
                                       "Plan Rows": 1,                                        
                                       "Plan Width": 4,                                       
                                       "Actual Startup Time": 7.492,                          
                                       "Actual Total Time": 7.494,                            
                                       "Actual Rows": 1,                                      
                                       "Actual Loops": 1,                                     
                                       "Filter": "((info)::text = 'bottom 10 rank'::text)",   
                                       "Rows Removed by Filter": 112,                         
                                       "Shared Hit Blocks": 0,                                
                                       "Shared Read Blocks": 1,                               
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
                     },                                                                       
                     {                                                                        
                       "Node Type": "Hash",                                                   
                       "Parent Relationship": "Inner",                                        
                       "Parallel Aware": false,                                               
                       "Startup Cost": 0.03,                                                  
                       "Total Cost": 0.03,                                                    
                       "Plan Rows": 1,                                                        
                       "Plan Width": 4,                                                       
                       "Actual Startup Time": 0.132,                                          
                       "Actual Total Time": 0.132,                                            
                       "Actual Rows": 1,                                                      
                       "Actual Loops": 1,                                                     
                       "Hash Buckets": 1024,                                                  
                       "Original Hash Buckets": 1024,                                         
                       "Hash Batches": 1,                                                     
                       "Original Hash Batches": 1,                                            
                       "Peak Memory Usage": 9,                                                
                       "Shared Hit Blocks": 0,                                                
                       "Shared Read Blocks": 1,                                               
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
                           "Relation Name": "company_type",                                   
                           "Alias": "ct",                                                     
                           "Startup Cost": 0.00,                                              
                           "Total Cost": 0.03,                                                
                           "Plan Rows": 1,                                                    
                           "Plan Width": 4,                                                   
                           "Actual Startup Time": 0.116,                                      
                           "Actual Total Time": 0.119,                                        
                           "Actual Rows": 1,                                                  
                           "Actual Loops": 1,                                                 
                           "Filter": "((kind)::text = 'production companies'::text)",         
                           "Rows Removed by Filter": 3,                                       
                           "Shared Hit Blocks": 0,                                            
                           "Shared Read Blocks": 1,                                           
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
     "Planning Time": 2025.284,                                                               
     "Triggers": [                                                                            
     ],                                                                                       
     "Execution Time": 3566.053                                                               
   }                                                                                          
 ]
