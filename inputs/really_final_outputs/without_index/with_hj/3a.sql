 [                                                                                                                  
   {                                                                                                                
     "Plan": {                                                                                                      
       "Node Type": "Aggregate",                                                                                    
       "Strategy": "Plain",                                                                                         
       "Partial Mode": "Simple",                                                                                    
       "Parallel Aware": false,                                                                                     
       "Startup Cost": 13876.58,                                                                                    
       "Total Cost": 13876.58,                                                                                      
       "Plan Rows": 1,                                                                                              
       "Plan Width": 32,                                                                                            
       "Actual Startup Time": 11508.192,                                                                            
       "Actual Total Time": 11508.193,                                                                              
       "Actual Rows": 1,                                                                                            
       "Actual Loops": 1,                                                                                           
       "Shared Hit Blocks": 3,                                                                                      
       "Shared Read Blocks": 223293,                                                                                
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
           "Startup Cost": 3147.37,                                                                                 
           "Total Cost": 13876.56,                                                                                  
           "Plan Rows": 364,                                                                                        
           "Plan Width": 17,                                                                                        
           "Actual Startup Time": 3302.020,                                                                         
           "Actual Total Time": 11508.019,                                                                          
           "Actual Rows": 206,                                                                                      
           "Actual Loops": 1,                                                                                       
           "Inner Unique": false,                                                                                   
           "Hash Cond": "(mi.movie_id = t.id)",                                                                     
           "Shared Hit Blocks": 3,                                                                                  
           "Shared Read Blocks": 223293,                                                                            
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
               "Relation Name": "movie_info",                                                                       
               "Alias": "mi",                                                                                       
               "Startup Cost": 0.00,                                                                                
               "Total Cost": 10711.20,                                                                              
               "Plan Rows": 154416,                                                                                 
               "Plan Width": 4,                                                                                     
               "Actual Startup Time": 76.130,                                                                       
               "Actual Total Time": 8317.115,                                                                       
               "Actual Rows": 153897,                                                                               
               "Actual Loops": 1,                                                                                   
               "Filter": "(info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))",
               "Rows Removed by Filter": 14681823,                                                                  
               "Shared Hit Blocks": 0,                                                                              
               "Shared Read Blocks": 161892,                                                                        
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
               "Startup Cost": 3147.24,                                                                             
               "Total Cost": 3147.24,                                                                               
               "Plan Rows": 905,                                                                                    
               "Plan Width": 25,                                                                                    
               "Actual Startup Time": 3166.083,                                                                     
               "Actual Total Time": 3166.083,                                                                       
               "Actual Rows": 2235,                                                                                 
               "Actual Loops": 1,                                                                                   
               "Hash Buckets": 4096,                                                                                
               "Original Hash Buckets": 1024,                                                                       
               "Hash Batches": 1,                                                                                   
               "Original Hash Batches": 1,                                                                          
               "Peak Memory Usage": 175,                                                                            
               "Shared Hit Blocks": 0,                                                                              
               "Shared Read Blocks": 61401,                                                                         
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
                   "Startup Cost": 1698.41,                                                                         
                   "Total Cost": 3147.24,                                                                           
                   "Plan Rows": 905,                                                                                
                   "Plan Width": 25,                                                                                
                   "Actual Startup Time": 1901.832,                                                                 
                   "Actual Total Time": 3165.065,                                                                   
                   "Actual Rows": 2235,                                                                             
                   "Actual Loops": 1,                                                                               
                   "Inner Unique": true,                                                                            
                   "Hash Cond": "(mk.movie_id = t.id)",                                                             
                   "Shared Hit Blocks": 0,                                                                          
                   "Shared Read Blocks": 61401,                                                                     
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
                       "Startup Cost": 49.47,                                                                       
                       "Total Cost": 1498.11,                                                                       
                       "Plan Rows": 2259,                                                                           
                       "Plan Width": 4,                                                                             
                       "Actual Startup Time": 96.328,                                                               
                       "Actual Total Time": 1424.127,                                                               
                       "Actual Rows": 12951,                                                                        
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
                           "Actual Startup Time": 2.994,                                                            
                           "Actual Total Time": 700.632,                                                            
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
                           "Plan Rows": 67,                                                                         
                           "Plan Width": 4,                                                                         
                           "Actual Startup Time": 92.971,                                                           
                           "Actual Total Time": 92.971,                                                             
                           "Actual Rows": 30,                                                                       
                           "Actual Loops": 1,                                                                       
                           "Hash Buckets": 1024,                                                                    
                           "Original Hash Buckets": 1024,                                                           
                           "Hash Batches": 1,                                                                       
                           "Original Hash Batches": 1,                                                              
                           "Peak Memory Usage": 10,                                                                 
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
                               "Plan Rows": 67,                                                                     
                               "Plan Width": 4,                                                                     
                               "Actual Startup Time": 31.668,                                                       
                               "Actual Total Time": 92.925,                                                         
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
                       "Plan Rows": 1012920,                                                                        
                       "Plan Width": 21,                                                                            
                       "Actual Startup Time": 1730.981,                                                             
                       "Actual Total Time": 1730.981,                                                               
                       "Actual Rows": 1012920,                                                                      
                       "Actual Loops": 1,                                                                           
                       "Hash Buckets": 1048576,                                                                     
                       "Original Hash Buckets": 1048576,                                                            
                       "Hash Batches": 1,                                                                           
                       "Original Hash Batches": 1,                                                                  
                       "Peak Memory Usage": 62527,                                                                  
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
                           "Plan Rows": 1012920,                                                                    
                           "Plan Width": 21,                                                                        
                           "Actual Startup Time": 23.162,                                                           
                           "Actual Total Time": 1272.635,                                                           
                           "Actual Rows": 1012920,                                                                  
                           "Actual Loops": 1,                                                                       
                           "Filter": "(production_year > 2005)",                                                    
                           "Rows Removed by Filter": 1515392,                                                       
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
             }                                                                                                      
           ]                                                                                                        
         }                                                                                                          
       ]                                                                                                            
     },                                                                                                             
     "Planning Time": 1933.423,                                                                                     
     "Triggers": [                                                                                                  
     ],                                                                                                             
     "Execution Time": 11509.051                                                                                    
   }                                                                                                                
 ]
