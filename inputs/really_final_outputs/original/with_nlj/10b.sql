 [                                                                                
   {                                                                              
     "Plan": {                                                                    
       "Node Type": "Aggregate",                                                  
       "Strategy": "Plain",                                                       
       "Partial Mode": "Simple",                                                  
       "Parallel Aware": false,                                                   
       "Startup Cost": 26020.16,                                                  
       "Total Cost": 26020.16,                                                    
       "Plan Rows": 1,                                                            
       "Plan Width": 64,                                                          
       "Actual Startup Time": 13262.494,                                          
       "Actual Total Time": 13262.494,                                            
       "Actual Rows": 1,                                                          
       "Actual Loops": 1,                                                         
       "Shared Hit Blocks": 92,                                                   
       "Shared Read Blocks": 252745,                                              
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
           "Total Cost": 26020.15,                                                
           "Plan Rows": 100,                                                      
           "Plan Width": 33,                                                      
           "Actual Startup Time": 13262.444,                                      
           "Actual Total Time": 13262.444,                                        
           "Actual Rows": 0,                                                      
           "Actual Loops": 1,                                                     
           "Inner Unique": true,                                                  
           "Join Filter": "(mc.company_type_id = ct.id)",                         
           "Rows Removed by Join Filter": 0,                                      
           "Shared Hit Blocks": 92,                                               
           "Shared Read Blocks": 252745,                                          
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
               "Total Cost": 26020.04,                                            
               "Plan Rows": 100,                                                  
               "Plan Width": 37,                                                  
               "Actual Startup Time": 13262.443,                                  
               "Actual Total Time": 13262.444,                                    
               "Actual Rows": 0,                                                  
               "Actual Loops": 1,                                                 
               "Inner Unique": true,                                              
               "Shared Hit Blocks": 92,                                           
               "Shared Read Blocks": 252745,                                      
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
                   "Total Cost": 25996.35,                                        
                   "Plan Rows": 205,                                              
                   "Plan Width": 25,                                              
                   "Actual Startup Time": 13262.443,                              
                   "Actual Total Time": 13262.443,                                
                   "Actual Rows": 0,                                              
                   "Actual Loops": 1,                                             
                   "Inner Unique": true,                                          
                   "Shared Hit Blocks": 92,                                       
                   "Shared Read Blocks": 252745,                                  
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
                       "Total Cost": 25911.59,                                    
                       "Plan Rows": 1325,                                         
                       "Plan Width": 16,                                          
                       "Actual Startup Time": 13262.442,                          
                       "Actual Total Time": 13262.442,                            
                       "Actual Rows": 0,                                          
                       "Actual Loops": 1,                                         
                       "Inner Unique": true,                                      
                       "Shared Hit Blocks": 92,                                   
                       "Shared Read Blocks": 252745,                              
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
                           "Total Cost": 21834.71,                                
                           "Plan Rows": 228851,                                   
                           "Plan Width": 20,                                      
                           "Actual Startup Time": 935.537,                        
                           "Actual Total Time": 12588.172,                        
                           "Actual Rows": 30,                                     
                           "Actual Loops": 1,                                     
                           "Inner Unique": false,                                 
                           "Shared Hit Blocks": 17,                               
                           "Shared Read Blocks": 252699,                          
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
                               "Total Cost": 13565.91,                            
                               "Plan Rows": 119151,                               
                               "Plan Width": 8,                                   
                               "Actual Startup Time": 890.277,                    
                               "Actual Total Time": 12115.214,                    
                               "Actual Rows": 13,                                 
                               "Actual Loops": 1,                                 
                               "Inner Unique": true,                              
                               "Join Filter": "(ci.role_id = rt.id)",             
                               "Rows Removed by Join Filter": 1435426,            
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
                                   "Total Cost": 13245.00,                        
                                   "Plan Rows": 1429807,                          
                                   "Plan Width": 12,                              
                                   "Actual Startup Time": 865.437,                
                                   "Actual Total Time": 11571.014,                
                                   "Actual Rows": 1435439,                        
                                   "Actual Loops": 1,                             
                                   "Filter": "(note ~~ '%(producer)%'::text)",    
                                   "Rows Removed by Filter": 34808905,            
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
                                   "Actual Loops": 1435439,                       
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
                                       "Actual Startup Time": 24.815,             
                                       "Actual Total Time": 24.819,               
                                       "Actual Rows": 1,                          
                                       "Actual Loops": 1,                         
                                       "Filter": "((role)::text = 'actor'::text)",
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
                               "Index Name": "movie_id_movie_companies",          
                               "Relation Name": "movie_companies",                
                               "Alias": "mc",                                     
                               "Startup Cost": 0.01,                              
                               "Total Cost": 0.07,                                
                               "Plan Rows": 2,                                    
                               "Plan Width": 12,                                  
                               "Actual Startup Time": 32.216,                     
                               "Actual Total Time": 36.369,                       
                               "Actual Rows": 2,                                  
                               "Actual Loops": 13,                                
                               "Index Cond": "(movie_id = ci.movie_id)",          
                               "Rows Removed by Index Recheck": 0,                
                               "Shared Hit Blocks": 17,                           
                               "Shared Read Blocks": 44,                          
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
                           "Actual Startup Time": 22.469,                         
                           "Actual Total Time": 22.469,                           
                           "Actual Rows": 0,                                      
                           "Actual Loops": 30,                                    
                           "Index Cond": "(id = mc.company_id)",                  
                           "Rows Removed by Index Recheck": 0,                    
                           "Filter": "((country_code)::text = '[ru]'::text)",     
                           "Rows Removed by Filter": 1,                           
                           "Shared Hit Blocks": 75,                               
                           "Shared Read Blocks": 46,                              
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
                       "Total Cost": 0.06,                                        
                       "Plan Rows": 1,                                            
                       "Plan Width": 21,                                          
                       "Actual Startup Time": 0.000,                              
                       "Actual Total Time": 0.000,                                
                       "Actual Rows": 0,                                          
                       "Actual Loops": 0,                                         
                       "Index Cond": "(id = mc.movie_id)",                        
                       "Rows Removed by Index Recheck": 0,                        
                       "Filter": "(production_year > 2010)",                      
                       "Rows Removed by Filter": 0,                               
                       "Shared Hit Blocks": 0,                                    
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
                 },                                                               
                 {                                                                
                   "Node Type": "Index Scan",                                     
                   "Parent Relationship": "Inner",                                
                   "Parallel Aware": false,                                       
                   "Scan Direction": "Forward",                                   
                   "Index Name": "char_name_pkey",                                
                   "Relation Name": "char_name",                                  
                   "Alias": "chn",                                                
                   "Startup Cost": 0.01,                                          
                   "Total Cost": 0.12,                                            
                   "Plan Rows": 1,                                                
                   "Plan Width": 20,                                              
                   "Actual Startup Time": 0.000,                                  
                   "Actual Total Time": 0.000,                                    
                   "Actual Rows": 0,                                              
                   "Actual Loops": 0,                                             
                   "Index Cond": "(id = ci.person_role_id)",                      
                   "Rows Removed by Index Recheck": 0,                            
                   "Shared Hit Blocks": 0,                                        
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
             },                                                                   
             {                                                                    
               "Node Type": "Materialize",                                        
               "Parent Relationship": "Inner",                                    
               "Parallel Aware": false,                                           
               "Startup Cost": 0.00,                                              
               "Total Cost": 0.03,                                                
               "Plan Rows": 4,                                                    
               "Plan Width": 4,                                                   
               "Actual Startup Time": 0.000,                                      
               "Actual Total Time": 0.000,                                        
               "Actual Rows": 0,                                                  
               "Actual Loops": 0,                                                 
               "Shared Hit Blocks": 0,                                            
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
                   "Relation Name": "company_type",                               
                   "Alias": "ct",                                                 
                   "Startup Cost": 0.00,                                          
                   "Total Cost": 0.03,                                            
                   "Plan Rows": 4,                                                
                   "Plan Width": 4,                                               
                   "Actual Startup Time": 0.000,                                  
                   "Actual Total Time": 0.000,                                    
                   "Actual Rows": 0,                                              
                   "Actual Loops": 0,                                             
                   "Shared Hit Blocks": 0,                                        
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
         }                                                                        
       ]                                                                          
     },                                                                           
     "Planning Time": 1811.494,                                                   
     "Triggers": [                                                                
     ],                                                                           
     "Execution Time": 13288.298                                                  
   }                                                                              
 ]
