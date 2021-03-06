     "Plan": {                                                                           
       "Node Type": "Aggregate",                                                         
       "Strategy": "Plain",                                                              
       "Partial Mode": "Simple",                                                         
       "Parallel Aware": false,                                                          
       "Startup Cost": 18943.43,                                                         
       "Total Cost": 18943.43,                                                           
       "Plan Rows": 1,                                                                   
       "Plan Width": 96,                                                                 
       "Actual Startup Time": 17957.303,                                                 
       "Actual Total Time": 17957.304,                                                   
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
           "Startup Cost": 5557.32,                                                      
           "Total Cost": 18943.43,                                                       
           "Plan Rows": 1,                                                               
           "Plan Width": 48,                                                             
           "Actual Startup Time": 6858.814,                                              
           "Actual Total Time": 17957.281,                                               
           "Actual Rows": 6,                                                             
           "Actual Loops": 1,                                                            
           "Inner Unique": true,                                                         
           "Hash Cond": "(mk.movie_id = t.id)",                                          
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
               "Startup Cost": 3854.29,                                                  
               "Total Cost": 17240.40,                                                   
               "Plan Rows": 1,                                                           
               "Plan Width": 39,                                                         
               "Actual Startup Time": 5104.271,                                          
               "Actual Total Time": 16202.735,                                           
               "Actual Rows": 6,                                                         
               "Actual Loops": 1,                                                        
               "Inner Unique": false,                                                    
               "Hash Cond": "(ci.movie_id = mk.movie_id)",                               
               "Shared Hit Blocks": 0,                                                   
               "Shared Read Blocks": 333670,                                             
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
                   "Actual Startup Time": 3665.959,                                      
                   "Actual Total Time": 14764.387,                                       
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
                       "Actual Startup Time": 50.532,                                    
                       "Actual Total Time": 6493.139,                                    
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
                       "Actual Startup Time": 2643.709,                                  
                       "Actual Total Time": 2643.709,                                    
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
                           "Actual Startup Time": 315.728,                               
                           "Actual Total Time": 2643.689,                                
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
                   "Startup Cost": 1498.10,                                              
                   "Total Cost": 1498.10,                                                
                   "Plan Rows": 34,                                                      
                   "Plan Width": 20,                                                     
                   "Actual Startup Time": 1438.250,                                      
                   "Actual Total Time": 1438.250,                                        
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
                       "Actual Startup Time": 134.857,                                   
                       "Actual Total Time": 1438.212,                                    
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
                           "Actual Startup Time": 4.666,                                 
                           "Actual Total Time": 701.841,                                 
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
                           "Actual Startup Time": 91.345,                                
                           "Actual Total Time": 91.345,                                  
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
                               "Actual Startup Time": 29.158,                            
                               "Actual Total Time": 91.333,                              
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
             },                                                                          
             {                                                                           
               "Node Type": "Hash",                                                      
               "Parent Relationship": "Inner",                                           
               "Parallel Aware": false,                                                  
               "Startup Cost": 1500.26,                                                  
               "Total Cost": 1500.26,                                                    
               "Plan Rows": 1381453,                                                     
               "Plan Width": 21,                                                         
               "Actual Startup Time": 1739.942,                                          
               "Actual Total Time": 1739.942,                                            
               "Actual Rows": 1381453,                                                   
               "Actual Loops": 1,                                                        
               "Hash Buckets": 2097152,                                                  
               "Original Hash Buckets": 2097152,                                         
               "Hash Batches": 1,                                                        
               "Original Hash Batches": 1,                                               
               "Peak Memory Usage": 90381,                                               
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
                   "Plan Rows": 1381453,                                                 
                   "Plan Width": 21,                                                     
                   "Actual Startup Time": 23.721,                                        
                   "Actual Total Time": 1163.483,                                        
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
                 }                                                                       
               ]                                                                         
             }                                                                           
           ]                                                                             
         }                                                                               
       ]                                                                                 
     },                                                                                  
     "Planning Time": 2154.349,                                                          
     "Triggers": [                                                                       
     ],                                                                                  
     "Execution Time": 17974.511                                                         
