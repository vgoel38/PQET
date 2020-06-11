 [                                                                                   
   {                                                                                 
     "Plan": {                                                                       
       "Node Type": "Aggregate",                                                     
       "Strategy": "Plain",                                                          
       "Partial Mode": "Simple",                                                     
       "Parallel Aware": false,                                                      
       "Startup Cost": 18798.11,                                                     
       "Total Cost": 18798.11,                                                       
       "Plan Rows": 1,                                                               
       "Plan Width": 96,                                                             
       "Actual Startup Time": 18095.914,                                             
       "Actual Total Time": 18095.914,                                               
       "Actual Rows": 1,                                                             
       "Actual Loops": 1,                                                            
       "Shared Hit Blocks": 3,                                                       
       "Shared Read Blocks": 369668,                                                 
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
           "Startup Cost": 5412.04,                                                  
           "Total Cost": 18798.11,                                                   
           "Plan Rows": 1,                                                           
           "Plan Width": 48,                                                         
           "Actual Startup Time": 6991.255,                                          
           "Actual Total Time": 18095.891,                                           
           "Actual Rows": 6,                                                         
           "Actual Loops": 1,                                                        
           "Inner Unique": false,                                                    
           "Hash Cond": "(t.id = mk.movie_id)",                                      
           "Shared Hit Blocks": 3,                                                   
           "Shared Read Blocks": 369668,                                             
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
               "Startup Cost": 3913.93,                                              
               "Total Cost": 17299.92,                                               
               "Plan Rows": 539,                                                     
               "Plan Width": 40,                                                     
               "Actual Startup Time": 5715.214,                                      
               "Actual Total Time": 16819.864,                                       
               "Actual Rows": 61,                                                    
               "Actual Loops": 1,                                                    
               "Inner Unique": true,                                                 
               "Hash Cond": "(ci.movie_id = t.id)",                                  
               "Shared Hit Blocks": 0,                                               
               "Shared Read Blocks": 344265,                                         
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
                   "Startup Cost": 2356.18,                                          
                   "Total Cost": 15741.88,                                           
                   "Plan Rows": 3479,                                                
                   "Plan Width": 19,                                                 
                   "Actual Startup Time": 3712.152,                                  
                   "Actual Total Time": 14816.618,                                   
                   "Actual Rows": 486,                                               
                   "Actual Loops": 1,                                                
                   "Inner Unique": true,                                             
                   "Hash Cond": "(ci.person_id = n.id)",                             
                   "Shared Hit Blocks": 0,                                           
                   "Shared Read Blocks": 308267,                                     
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
                       "Relation Name": "cast_info",                                 
                       "Alias": "ci",                                                
                       "Startup Cost": 0.00,                                         
                       "Total Cost": 10431.00,                                       
                       "Plan Rows": 36244344,                                        
                       "Plan Width": 8,                                              
                       "Actual Startup Time": 47.639,                                
                       "Actual Total Time": 6562.448,                                
                       "Actual Rows": 36244344,                                      
                       "Actual Loops": 1,                                            
                       "Shared Hit Blocks": 0,                                       
                       "Shared Read Blocks": 252654,                                 
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
                       "Startup Cost": 2356.12,                                      
                       "Total Cost": 2356.12,                                        
                       "Plan Rows": 400,                                             
                       "Plan Width": 19,                                             
                       "Actual Startup Time": 2693.316,                              
                       "Actual Total Time": 2693.317,                                
                       "Actual Rows": 2,                                             
                       "Actual Loops": 1,                                            
                       "Hash Buckets": 1024,                                         
                       "Original Hash Buckets": 1024,                                
                       "Hash Batches": 1,                                            
                       "Original Hash Batches": 1,                                   
                       "Peak Memory Usage": 9,                                       
                       "Shared Hit Blocks": 0,                                       
                       "Shared Read Blocks": 55613,                                  
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
                           "Relation Name": "name",                                  
                           "Alias": "n",                                             
                           "Startup Cost": 0.00,                                     
                           "Total Cost": 2356.12,                                    
                           "Plan Rows": 400,                                         
                           "Plan Width": 19,                                         
                           "Actual Startup Time": 315.783,                           
                           "Actual Total Time": 2693.304,                            
                           "Actual Rows": 2,                                         
                           "Actual Loops": 1,                                        
                           "Filter": "(name ~~ '%Downey%Robert%'::text)",            
                           "Rows Removed by Filter": 4167489,                        
                           "Shared Hit Blocks": 0,                                   
                           "Shared Read Blocks": 55613,                              
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
                   "Node Type": "Hash",                                              
                   "Parent Relationship": "Inner",                                   
                   "Parallel Aware": false,                                          
                   "Startup Cost": 1500.26,                                          
                   "Total Cost": 1500.26,                                            
                   "Plan Rows": 391667,                                              
                   "Plan Width": 21,                                                 
                   "Actual Startup Time": 2001.782,                                  
                   "Actual Total Time": 2001.782,                                    
                   "Actual Rows": 391666,                                            
                   "Actual Loops": 1,                                                
                   "Hash Buckets": 524288,                                           
                   "Original Hash Buckets": 524288,                                  
                   "Hash Batches": 1,                                                
                   "Original Hash Batches": 1,                                       
                   "Peak Memory Usage": 25255,                                       
                   "Shared Hit Blocks": 0,                                           
                   "Shared Read Blocks": 35998,                                      
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
                       "Plan Rows": 391667,                                          
                       "Plan Width": 21,                                             
                       "Actual Startup Time": 10.948,                                
                       "Actual Total Time": 1768.703,                                
                       "Actual Rows": 391666,                                        
                       "Actual Loops": 1,                                            
                       "Filter": "(production_year > 2010)",                         
                       "Rows Removed by Filter": 2136646,                            
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
                     }                                                               
                   ]                                                                 
                 }                                                                   
               ]                                                                     
             },                                                                      
             {                                                                       
               "Node Type": "Hash",                                                  
               "Parent Relationship": "Inner",                                       
               "Parallel Aware": false,                                              
               "Startup Cost": 1498.10,                                              
               "Total Cost": 1498.10,                                                
               "Plan Rows": 34,                                                      
               "Plan Width": 20,                                                     
               "Actual Startup Time": 1275.942,                                      
               "Actual Total Time": 1275.943,                                        
               "Actual Rows": 14,                                                    
               "Actual Loops": 1,                                                    
               "Hash Buckets": 1024,                                                 
               "Original Hash Buckets": 1024,                                        
               "Hash Batches": 1,                                                    
               "Original Hash Batches": 1,                                           
               "Peak Memory Usage": 9,                                               
               "Shared Hit Blocks": 0,                                               
               "Shared Read Blocks": 25403,                                          
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
                   "Startup Cost": 49.46,                                            
                   "Total Cost": 1498.10,                                            
                   "Plan Rows": 34,                                                  
                   "Plan Width": 20,                                                 
                   "Actual Startup Time": 158.732,                                   
                   "Actual Total Time": 1275.905,                                    
                   "Actual Rows": 14,                                                
                   "Actual Loops": 1,                                                
                   "Inner Unique": true,                                             
                   "Hash Cond": "(mk.keyword_id = k.id)",                            
                   "Shared Hit Blocks": 0,                                           
                   "Shared Read Blocks": 25403,                                      
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
                       "Relation Name": "movie_keyword",                             
                       "Alias": "mk",                                                
                       "Startup Cost": 0.00,                                         
                       "Total Cost": 1079.84,                                        
                       "Plan Rows": 4523930,                                         
                       "Plan Width": 8,                                              
                       "Actual Startup Time": 25.921,                                
                       "Actual Total Time": 573.326,                                 
                       "Actual Rows": 4523930,                                       
                       "Actual Loops": 1,                                            
                       "Shared Hit Blocks": 0,                                       
                       "Shared Read Blocks": 24454,                                  
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
                       "Startup Cost": 49.46,                                        
                       "Total Cost": 49.46,                                          
                       "Plan Rows": 1,                                               
                       "Plan Width": 20,                                             
                       "Actual Startup Time": 91.584,                                
                       "Actual Total Time": 91.584,                                  
                       "Actual Rows": 1,                                             
                       "Actual Loops": 1,                                            
                       "Hash Buckets": 1024,                                         
                       "Original Hash Buckets": 1024,                                
                       "Hash Batches": 1,                                            
                       "Original Hash Batches": 1,                                   
                       "Peak Memory Usage": 9,                                       
                       "Shared Hit Blocks": 0,                                       
                       "Shared Read Blocks": 949,                                    
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
                           "Actual Startup Time": 29.113,                            
                           "Actual Total Time": 91.560,                              
                           "Actual Rows": 1,                                         
                           "Actual Loops": 1,                                        
                           "Filter": "(keyword = 'marvel-cinematic-universe'::text)",
                           "Rows Removed by Filter": 134169,                         
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
     "Planning Time": 2273.238,                                                      
     "Triggers": [                                                                   
     ],                                                                              
     "Execution Time": 18118.360                                                     
   }                                                                                 
 ]
