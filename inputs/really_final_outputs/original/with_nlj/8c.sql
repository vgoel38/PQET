 [                                                                                 
   {                                                                               
     "Plan": {                                                                     
       "Node Type": "Aggregate",                                                   
       "Strategy": "Plain",                                                        
       "Partial Mode": "Simple",                                                   
       "Parallel Aware": false,                                                    
       "Startup Cost": 262856.79,                                                  
       "Total Cost": 262856.79,                                                    
       "Plan Rows": 1,                                                             
       "Plan Width": 64,                                                           
       "Actual Startup Time": 509213.113,                                          
       "Actual Total Time": 509213.113,                                            
       "Actual Rows": 1,                                                           
       "Actual Loops": 1,                                                          
       "Shared Hit Blocks": 58794434,                                              
       "Shared Read Blocks": 370904,                                               
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
           "Startup Cost": 0.07,                                                   
           "Total Cost": 262574.04,                                                
           "Plan Rows": 1820954,                                                   
           "Plan Width": 33,                                                       
           "Actual Startup Time": 12306.748,                                       
           "Actual Total Time": 507945.546,                                        
           "Actual Rows": 2487611,                                                 
           "Actual Loops": 1,                                                      
           "Inner Unique": true,                                                   
           "Shared Hit Blocks": 58794434,                                          
           "Shared Read Blocks": 370904,                                           
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
               "Total Cost": 231317.32,                                            
               "Plan Rows": 1820954,                                               
               "Plan Width": 24,                                                   
               "Actual Startup Time": 12248.268,                                   
               "Actual Total Time": 261898.044,                                    
               "Actual Rows": 2487611,                                             
               "Actual Loops": 1,                                                  
               "Inner Unique": true,                                               
               "Join Filter": "(a.person_id = n.id)",                            
               "Rows Removed by Join Filter": 0,                                   
               "Shared Hit Blocks": 48879240,                                      
               "Shared Read Blocks": 329662,                                       
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
                   "Total Cost": 195518.10,                                        
                   "Plan Rows": 1820954,                                           
                   "Plan Width": 32,                                               
                   "Actual Startup Time": 12234.362,                               
                   "Actual Total Time": 230428.165,                                
                   "Actual Rows": 2487611,                                         
                   "Actual Loops": 1,                                              
                   "Inner Unique": true,                                           
                   "Shared Hit Blocks": 38958806,                                  
                   "Shared Read Blocks": 295246,                                   
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
                       "Total Cost": 105667.66,                                    
                       "Plan Rows": 5043654,                                       
                       "Plan Width": 36,                                           
                       "Actual Startup Time": 12184.488,                           
                       "Actual Total Time": 188880.855,                            
                       "Actual Rows": 4961427,                                     
                       "Actual Loops": 1,                                          
                       "Inner Unique": false,                                      
                       "Shared Hit Blocks": 19093387,                              
                       "Shared Read Blocks": 291404,                               
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
                           "Total Cost": 63507.95,                                 
                           "Plan Rows": 2625959,                                   
                           "Plan Width": 28,                                       
                           "Actual Startup Time": 12099.810,                       
                           "Actual Total Time": 30639.035,                         
                           "Actual Rows": 2343724,                                 
                           "Actual Loops": 1,                                      
                           "Inner Unique": false,                                  
                           "Shared Hit Blocks": 9570264,                           
                           "Shared Read Blocks": 265829,                           
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
                               "Total Cost": 18565.03,                             
                               "Plan Rows": 3020362,                               
                               "Plan Width": 8,                                    
                               "Actual Startup Time": 12061.404,                   
                               "Actual Total Time": 19229.089,                     
                               "Actual Rows": 2728943,                             
                               "Actual Loops": 1,                                  
                               "Inner Unique": true,                               
                               "Join Filter": "(ci.role_id = rt.id)",              
                               "Rows Removed by Join Filter": 33515401,            
                               "Shared Hit Blocks": 0,                             
                               "Shared Read Blocks": 252655,                       
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
                                   "Plan Width": 12,                               
                                   "Actual Startup Time": 26.870,                  
                                   "Actual Total Time": 4557.210,                  
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
                                   "Node Type": "Materialize",                     
                                   "Parent Relationship": "Inner",                 
                                   "Parallel Aware": false,                        
                                   "Startup Cost": 0.00,                           
                                   "Total Cost": 0.03,                             
                                   "Plan Rows": 1,                                 
                                   "Plan Width": 4,                                
                                   "Actual Startup Time": 0.000,                   
                                   "Actual Total Time": 0.000,                     
                                   "Actual Rows": 1,                               
                                   "Actual Loops": 36244344,                       
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
                                       "Relation Name": "role_type",               
                                       "Alias": "rt",                              
                                       "Startup Cost": 0.00,                       
                                       "Total Cost": 0.03,                         
                                       "Plan Rows": 1,                             
                                       "Plan Width": 4,                            
                                       "Actual Startup Time": 0.133,               
                                       "Actual Total Time": 0.138,                 
                                       "Actual Rows": 1,                           
                                       "Actual Loops": 1,                          
                                       "Filter": "((role)::text = 'writer'::text)",
                                       "Rows Removed by Filter": 11,               
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
                             },                                                    
                             {                                                     
                               "Node Type": "Index Scan",                          
                               "Parent Relationship": "Inner",                     
                               "Parallel Aware": false,                            
                               "Scan Direction": "Forward",                        
                               "Index Name": "person_id_aka_name",                 
                               "Relation Name": "aka_name",                        
                               "Alias": "a",                                      
                               "Startup Cost": 0.01,                               
                               "Total Cost": 0.01,                                 
                               "Plan Rows": 2,                                     
                               "Plan Width": 20,                                   
                               "Actual Startup Time": 0.003,                       
                               "Actual Total Time": 0.003,                         
                               "Actual Rows": 1,                                   
                               "Actual Loops": 2728943,                            
                               "Index Cond": "(person_id = ci.person_id)",         
                               "Rows Removed by Index Recheck": 0,                 
                               "Shared Hit Blocks": 9570264,                       
                               "Shared Read Blocks": 13174,                        
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
                           "Index Name": "movie_id_movie_companies",               
                           "Relation Name": "movie_companies",                     
                           "Alias": "mc",                                          
                           "Startup Cost": 0.01,                                   
                           "Total Cost": 0.02,                                     
                           "Plan Rows": 2,                                         
                           "Plan Width": 8,                                        
                           "Actual Startup Time": 0.056,                           
                           "Actual Total Time": 0.066,                             
                           "Actual Rows": 2,                                       
                           "Actual Loops": 2343724,                                
                           "Index Cond": "(movie_id = ci.movie_id)",               
                           "Rows Removed by Index Recheck": 0,                     
                           "Shared Hit Blocks": 9523123,                           
                           "Shared Read Blocks": 25575,                            
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
                       "Index Name": "company_name_pkey",                          
                       "Relation Name": "company_name",                            
                       "Alias": "cn",                                              
                       "Startup Cost": 0.01,                                       
                       "Total Cost": 0.02,                                         
                       "Plan Rows": 1,                                             
                       "Plan Width": 4,                                            
                       "Actual Startup Time": 0.008,                               
                       "Actual Total Time": 0.008,                                 
                       "Actual Rows": 1,                                           
                       "Actual Loops": 4961427,                                    
                       "Index Cond": "(id = mc.company_id)",                       
                       "Rows Removed by Index Recheck": 0,                         
                       "Filter": "((country_code)::text = '[us]'::text)",          
                       "Rows Removed by Filter": 0,                                
                       "Shared Hit Blocks": 19865419,                              
                       "Shared Read Blocks": 3842,                                 
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
                   "Plan Width": 4,                                                
                   "Actual Startup Time": 0.012,                                   
                   "Actual Total Time": 0.012,                                     
                   "Actual Rows": 1,                                               
                   "Actual Loops": 2487611,                                        
                   "Index Cond": "(id = ci.person_id)",                            
                   "Rows Removed by Index Recheck": 0,                             
                   "Shared Hit Blocks": 9920434,                                   
                   "Shared Read Blocks": 34416,                                    
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
               "Total Cost": 0.02,                                                 
               "Plan Rows": 1,                                                     
               "Plan Width": 21,                                                   
               "Actual Startup Time": 0.098,                                       
               "Actual Total Time": 0.098,                                         
               "Actual Rows": 1,                                                   
               "Actual Loops": 2487611,                                            
               "Index Cond": "(id = ci.movie_id)",                                 
               "Rows Removed by Index Recheck": 0,                                 
               "Shared Hit Blocks": 9915194,                                       
               "Shared Read Blocks": 41242,                                        
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
     "Planning Time": 2504.059,                                                    
     "Triggers": [                                                                 
     ],                                                                            
     "Execution Time": 509229.589                                                  
   }                                                                               
 ]