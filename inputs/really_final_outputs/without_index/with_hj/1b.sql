 [                                                                                            
   {                                                                                          
     "Plan": {                                                                                
       "Node Type": "Aggregate",                                                              
       "Strategy": "Plain",                                                                   
       "Partial Mode": "Simple",                                                              
       "Parallel Aware": false,                                                               
       "Startup Cost": 3387.77,                                                               
       "Total Cost": 3387.77,                                                                 
       "Plan Rows": 1,                                                                        
       "Plan Width": 68,                                                                      
       "Actual Startup Time": 3537.618,                                                       
       "Actual Total Time": 3537.618,                                                         
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
           "Total Cost": 3387.52,                                                             
           "Plan Rows": 1069,                                                                 
           "Plan Width": 45,                                                                  
           "Actual Startup Time": 2959.202,                                                   
           "Actual Total Time": 3537.593,                                                     
           "Actual Rows": 3,                                                                  
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
               "Total Cost": 1696.56,                                                         
               "Plan Rows": 716259,                                                           
               "Plan Width": 25,                                                              
               "Actual Startup Time": 21.619,                                                 
               "Actual Total Time": 1777.033,                                                 
               "Actual Rows": 716259,                                                         
               "Actual Loops": 1,                                                             
               "Filter": "((production_year >= 2005) AND (production_year <= 2010))",         
               "Rows Removed by Filter": 1812053,                                             
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
               "Actual Startup Time": 1601.048,                                               
               "Actual Total Time": 1601.048,                                                 
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
                   "Actual Startup Time": 1431.161,                                           
                   "Actual Total Time": 1601.030,                                             
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
                       "Actual Startup Time": 892.126,                                        
                       "Actual Total Time": 1580.991,                                         
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
                           "Actual Startup Time": 26.388,                                     
                           "Actual Total Time": 783.337,                                      
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
                           "Actual Startup Time": 642.259,                                    
                           "Actual Total Time": 642.259,                                      
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
                               "Actual Startup Time": 642.246,                                
                               "Actual Total Time": 642.250,                                  
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
                                   "Actual Startup Time": 27.067,                             
                                   "Actual Total Time": 361.647,                              
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
                                   "Actual Startup Time": 7.521,                              
                                   "Actual Total Time": 7.521,                                
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
                                       "Actual Startup Time": 7.507,                          
                                       "Actual Total Time": 7.509,                            
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
                       "Actual Startup Time": 20.002,                                         
                       "Actual Total Time": 20.002,                                           
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
                           "Actual Startup Time": 19.986,                                     
                           "Actual Total Time": 19.989,                                       
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
     "Planning Time": 2153.659,                                                               
     "Triggers": [                                                                            
     ],                                                                                       
     "Execution Time": 3546.227                                                               
   }                                                                                          
 ]