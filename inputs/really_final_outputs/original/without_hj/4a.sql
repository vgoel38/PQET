 [                                                                             
   {                                                                           
     "Plan": {                                                                 
       "Node Type": "Aggregate",                                               
       "Strategy": "Plain",                                                    
       "Partial Mode": "Simple",                                               
       "Parallel Aware": false,                                                
       "Startup Cost": 1825.11,                                                
       "Total Cost": 1825.11,                                                  
       "Plan Rows": 1,                                                         
       "Plan Width": 64,                                                       
       "Actual Startup Time": 62625.650,                                       
       "Actual Total Time": 62625.650,                                         
       "Actual Rows": 1,                                                       
       "Actual Loops": 1,                                                      
       "Shared Hit Blocks": 1246658,                                           
       "Shared Read Blocks": 50941,                                            
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
           "Startup Cost": 1817.05,                                            
           "Total Cost": 1825.11,                                              
           "Plan Rows": 9,                                                     
           "Plan Width": 23,                                                   
           "Actual Startup Time": 7204.050,                                    
           "Actual Total Time": 62611.077,                                     
           "Actual Rows": 740,                                                 
           "Actual Loops": 1,                                                  
           "Inner Unique": true,                                               
           "Join Filter": "(mi_idx.movie_id = t.id)",                          
           "Rows Removed by Join Filter": 0,                                   
           "Shared Hit Blocks": 1246658,                                       
           "Shared Read Blocks": 50941,                                        
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
               "Startup Cost": 1817.04,                                        
               "Total Cost": 1824.12,                                          
               "Plan Rows": 23,                                                
               "Plan Width": 14,                                               
               "Actual Startup Time": 6617.328,                                
               "Actual Total Time": 7570.405,                                  
               "Actual Rows": 5820,                                            
               "Actual Loops": 1,                                              
               "Inner Unique": true,                                           
               "Merge Cond": "(mk.keyword_id = k.id)",                         
               "Shared Hit Blocks": 1229367,                                   
               "Shared Read Blocks": 44921,                                    
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
                   "Node Type": "Sort",                                        
                   "Parent Relationship": "Outer",                             
                   "Parallel Aware": false,                                    
                   "Startup Cost": 1767.52,                                    
                   "Total Cost": 1771.05,                                      
                   "Plan Rows": 45532,                                         
                   "Plan Width": 18,                                           
                   "Actual Startup Time": 6426.306,                            
                   "Actual Total Time": 6923.121,                              
                   "Actual Rows": 2877469,                                     
                   "Actual Loops": 1,                                          
                   "Sort Key": ["mk.keyword_id"],                              
                   "Sort Method": "quicksort",                                 
                   "Sort Space Used": 233382,                                  
                   "Sort Space Type": "Memory",                                
                   "Shared Hit Blocks": 1229365,                               
                   "Shared Read Blocks": 43974,                                
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
                       "Total Cost": 1658.11,                                  
                       "Plan Rows": 45532,                                     
                       "Plan Width": 18,                                       
                       "Actual Startup Time": 0.177,                           
                       "Actual Total Time": 5058.740,                          
                       "Actual Rows": 2881657,                                 
                       "Actual Loops": 1,                                      
                       "Inner Unique": false,                                  
                       "Shared Hit Blocks": 1229361,                           
                       "Shared Read Blocks": 43974,                            
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
                           "Startup Cost": 0.00,                               
                           "Total Cost": 584.84,                               
                           "Plan Rows": 4617,                                  
                           "Plan Width": 10,                                   
                           "Actual Startup Time": 0.148,                       
                           "Actual Total Time": 711.951,                       
                           "Actual Rows": 352990,                              
                           "Actual Loops": 1,                                  
                           "Inner Unique": true,                               
                           "Join Filter": "(it.id = mi_idx.info_type_id)",     
                           "Rows Removed by Join Filter": 168733,              
                           "Shared Hit Blocks": 3,                             
                           "Shared Read Blocks": 8451,                         
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
                               "Total Cost": 467.71,                           
                               "Plan Rows": 521708,                            
                               "Plan Width": 14,                               
                               "Actual Startup Time": 0.060,                   
                               "Actual Total Time": 456.118,                   
                               "Actual Rows": 521723,                          
                               "Actual Loops": 1,                              
                               "Filter": "(info > '5.0'::text)",               
                               "Rows Removed by Filter": 858312,               
                               "Shared Hit Blocks": 2,                         
                               "Shared Read Blocks": 8451,                     
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
                               "Node Type": "Materialize",                     
                               "Parent Relationship": "Inner",                 
                               "Parallel Aware": false,                        
                               "Startup Cost": 0.00,                           
                               "Total Cost": 0.05,                             
                               "Plan Rows": 1,                                 
                               "Plan Width": 4,                                
                               "Actual Startup Time": 0.000,                   
                               "Actual Total Time": 0.000,                     
                               "Actual Rows": 1,                               
                               "Actual Loops": 521723,                         
                               "Shared Hit Blocks": 1,                         
                               "Shared Read Blocks": 0,                        
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
                                   "Actual Startup Time": 0.061,               
                                   "Actual Total Time": 0.066,                 
                                   "Actual Rows": 1,                           
                                   "Actual Loops": 1,                          
                                   "Filter": "((info)::text = 'rating'::text)",
                                   "Rows Removed by Filter": 112,              
                                   "Shared Hit Blocks": 1,                     
                                   "Shared Read Blocks": 0,                    
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
                           "Node Type": "Index Scan",                          
                           "Parent Relationship": "Inner",                     
                           "Parallel Aware": false,                            
                           "Scan Direction": "Forward",                        
                           "Index Name": "movie_id_movie_keyword",             
                           "Relation Name": "movie_keyword",                   
                           "Alias": "mk",                                      
                           "Startup Cost": 0.01,                               
                           "Total Cost": 0.23,                                 
                           "Plan Rows": 11,                                    
                           "Plan Width": 8,                                    
                           "Actual Startup Time": 0.005,                       
                           "Actual Total Time": 0.010,                         
                           "Actual Rows": 8,                                   
                           "Actual Loops": 352990,                             
                           "Index Cond": "(movie_id = mi_idx.movie_id)",       
                           "Rows Removed by Index Recheck": 0,                 
                           "Shared Hit Blocks": 1229358,                       
                           "Shared Read Blocks": 35523,                        
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
                   "Node Type": "Sort",                                        
                   "Parent Relationship": "Inner",                             
                   "Parallel Aware": false,                                    
                   "Startup Cost": 49.52,                                      
                   "Total Cost": 49.53,                                        
                   "Plan Rows": 67,                                            
                   "Plan Width": 4,                                            
                   "Actual Startup Time": 92.032,                              
                   "Actual Total Time": 92.047,                                
                   "Actual Rows": 30,                                          
                   "Actual Loops": 1,                                          
                   "Sort Key": ["k.id"],                                       
                   "Sort Method": "quicksort",                                 
                   "Sort Space Used": 26,                                      
                   "Sort Space Type": "Memory",                                
                   "Shared Hit Blocks": 2,                                     
                   "Shared Read Blocks": 947,                                  
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
                       "Actual Startup Time": 31.387,                          
                       "Actual Total Time": 91.983,                            
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
                     }                                                         
                   ]                                                           
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
               "Actual Startup Time": 9.453,                                   
               "Actual Total Time": 9.453,                                     
               "Actual Rows": 0,                                               
               "Actual Loops": 5820,                                           
               "Index Cond": "(id = mk.movie_id)",                             
               "Rows Removed by Index Recheck": 0,                             
               "Filter": "(production_year > 2005)",                           
               "Rows Removed by Filter": 1,                                    
               "Shared Hit Blocks": 17291,                                     
               "Shared Read Blocks": 6020,                                     
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
     "Planning Time": 2377.428,                                                
     "Triggers": [                                                             
     ],                                                                        
     "Execution Time": 62645.218                                               
   }                                                                           
 ]
