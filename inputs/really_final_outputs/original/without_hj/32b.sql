 [                                                                                         
   {                                                                                       
     "Plan": {                                                                             
       "Node Type": "Aggregate",                                                           
       "Strategy": "Plain",                                                                
       "Partial Mode": "Simple",                                                           
       "Parallel Aware": false,                                                            
       "Startup Cost": 667.72,                                                             
       "Total Cost": 667.72,                                                               
       "Plan Rows": 1,                                                                     
       "Plan Width": 96,                                                                   
       "Actual Startup Time": 65934.147,                                                   
       "Actual Total Time": 65934.148,                                                     
       "Actual Rows": 1,                                                                   
       "Actual Loops": 1,                                                                  
       "Shared Hit Blocks": 113533,                                                        
       "Shared Read Blocks": 18445,                                                        
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
           "Startup Cost": 0.05,                                                           
           "Total Cost": 667.72,                                                           
           "Plan Rows": 2,                                                                 
           "Plan Width": 46,                                                               
           "Actual Startup Time": 301.448,                                                 
           "Actual Total Time": 65899.543,                                                 
           "Actual Rows": 4388,                                                            
           "Actual Loops": 1,                                                              
           "Inner Unique": true,                                                           
           "Shared Hit Blocks": 113533,                                                    
           "Shared Read Blocks": 18445,                                                    
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
               "Total Cost": 661.96,                                                       
               "Plan Rows": 2,                                                             
               "Plan Width": 33,                                                           
               "Actual Startup Time": 200.941,                                             
               "Actual Total Time": 5985.923,                                              
               "Actual Rows": 4388,                                                        
               "Actual Loops": 1,                                                          
               "Inner Unique": true,                                                       
               "Shared Hit Blocks": 101049,                                                
               "Shared Read Blocks": 13370,                                                
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
                   "Startup Cost": 0.02,                                                   
                   "Total Cost": 661.87,                                                   
                   "Plan Rows": 2,                                                         
                   "Plan Width": 24,                                                       
                   "Actual Startup Time": 126.607,                                         
                   "Actual Total Time": 1732.265,                                          
                   "Actual Rows": 4388,                                                    
                   "Actual Loops": 1,                                                      
                   "Inner Unique": false,                                                  
                   "Join Filter": "(ml.link_type_id = lt.id)",                             
                   "Rows Removed by Join Filter": 74596,                                   
                   "Shared Hit Blocks": 84097,                                             
                   "Shared Read Blocks": 12768,                                            
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
                       "Relation Name": "link_type",                                       
                       "Alias": "lt",                                                      
                       "Startup Cost": 0.00,                                               
                       "Total Cost": 0.03,                                                 
                       "Plan Rows": 18,                                                    
                       "Plan Width": 16,                                                   
                       "Actual Startup Time": 0.003,                                       
                       "Actual Total Time": 0.041,                                         
                       "Actual Rows": 18,                                                  
                       "Actual Loops": 1,                                                  
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
                     },                                                                    
                     {                                                                     
                       "Node Type": "Materialize",                                         
                       "Parent Relationship": "Inner",                                     
                       "Parallel Aware": false,                                            
                       "Startup Cost": 0.02,                                               
                       "Total Cost": 661.83,                                               
                       "Plan Rows": 2,                                                     
                       "Plan Width": 16,                                                   
                       "Actual Startup Time": 4.217,                                       
                       "Actual Total Time": 94.161,                                        
                       "Actual Rows": 4388,                                                
                       "Actual Loops": 18,                                                 
                       "Shared Hit Blocks": 84096,                                         
                       "Shared Read Blocks": 12768,                                        
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
                           "Startup Cost": 0.02,                                           
                           "Total Cost": 661.83,                                           
                           "Plan Rows": 2,                                                 
                           "Plan Width": 16,                                               
                           "Actual Startup Time": 75.894,                                  
                           "Actual Total Time": 1676.064,                                  
                           "Actual Rows": 4388,                                            
                           "Actual Loops": 1,                                              
                           "Inner Unique": false,                                          
                           "Shared Hit Blocks": 84096,                                     
                           "Shared Read Blocks": 12768,                                    
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
                               "Plan Width": 4,                                            
                               "Actual Startup Time": 38.811,                              
                               "Actual Total Time": 1411.964,                              
                               "Actual Rows": 41840,                                       
                               "Actual Loops": 1,                                          
                               "Inner Unique": false,                                      
                               "Shared Hit Blocks": 5,                                     
                               "Shared Read Blocks": 12602,                                
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
                                   "Plan Width": 4,                                        
                                   "Actual Startup Time": 13.829,                          
                                   "Actual Total Time": 98.302,                            
                                   "Actual Rows": 1,                                       
                                   "Actual Loops": 1,                                      
                                   "Filter": "(keyword = 'character-name-in-title'::text)",
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
                                   "Actual Startup Time": 24.976,                          
                                   "Actual Total Time": 1295.968,                          
                                   "Actual Rows": 41840,                                   
                                   "Actual Loops": 1,                                      
                                   "Index Cond": "(keyword_id = k.id)",                    
                                   "Rows Removed by Index Recheck": 0,                     
                                   "Shared Hit Blocks": 3,                                 
                                   "Shared Read Blocks": 11655,                            
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
                               "Index Name": "movie_id_movie_link",                        
                               "Relation Name": "movie_link",                              
                               "Alias": "ml",                                              
                               "Startup Cost": 0.01,                                       
                               "Total Cost": 0.01,                                         
                               "Plan Rows": 5,                                             
                               "Plan Width": 12,                                           
                               "Actual Startup Time": 0.005,                               
                               "Actual Total Time": 0.005,                                 
                               "Actual Rows": 0,                                           
                               "Actual Loops": 41840,                                      
                               "Index Cond": "(movie_id = mk.movie_id)",                   
                               "Rows Removed by Index Recheck": 0,                         
                               "Shared Hit Blocks": 84091,                                 
                               "Shared Read Blocks": 166,                                  
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
                 {                                                                         
                   "Node Type": "Index Scan",                                              
                   "Parent Relationship": "Inner",                                         
                   "Parallel Aware": false,                                                
                   "Scan Direction": "Forward",                                            
                   "Index Name": "title_idx_id",                                           
                   "Relation Name": "title",                                               
                   "Alias": "t1",                                                          
                   "Startup Cost": 0.01,                                                   
                   "Total Cost": 0.04,                                                     
                   "Plan Rows": 1,                                                         
                   "Plan Width": 21,                                                       
                   "Actual Startup Time": 0.963,                                           
                   "Actual Total Time": 0.963,                                             
                   "Actual Rows": 1,                                                       
                   "Actual Loops": 4388,                                                   
                   "Index Cond": "(id = mk.movie_id)",                                     
                   "Rows Removed by Index Recheck": 0,                                     
                   "Shared Hit Blocks": 16952,                                             
                   "Shared Read Blocks": 602,                                              
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
               "Alias": "t2",                                                              
               "Startup Cost": 0.01,                                                       
               "Total Cost": 2.88,                                                         
               "Plan Rows": 1,                                                             
               "Plan Width": 21,                                                           
               "Actual Startup Time": 13.649,                                              
               "Actual Total Time": 13.649,                                                
               "Actual Rows": 1,                                                           
               "Actual Loops": 4388,                                                       
               "Index Cond": "(id = ml.linked_movie_id)",                                  
               "Rows Removed by Index Recheck": 0,                                         
               "Shared Hit Blocks": 12484,                                                 
               "Shared Read Blocks": 5075,                                                 
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
     "Planning Time": 1437.938,                                                            
     "Triggers": [                                                                         
     ],                                                                                    
     "Execution Time": 65934.876                                                           
   }                                                                                       
 ]
