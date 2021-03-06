 [                                                                            
   {                                                                          
     "Plan": {                                                                
       "Node Type": "Aggregate",                                              
       "Strategy": "Plain",                                                   
       "Partial Mode": "Simple",                                              
       "Parallel Aware": false,                                               
       "Startup Cost": 282251.24,                                             
       "Total Cost": 282251.24,                                               
       "Plan Rows": 1,                                                        
       "Plan Width": 64,                                                      
       "Actual Startup Time": 13928.891,                                      
       "Actual Total Time": 13928.892,                                        
       "Actual Rows": 1,                                                      
       "Actual Loops": 1,                                                     
       "Shared Hit Blocks": 184,                                              
       "Shared Read Blocks": 252781,                                          
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
           "Total Cost": 282199.55,                                           
           "Plan Rows": 332865,                                               
           "Plan Width": 33,                                                  
           "Actual Startup Time": 1073.614,                                   
           "Actual Total Time": 13928.755,                                    
           "Actual Rows": 10,                                                 
           "Actual Loops": 1,                                                 
           "Inner Unique": true,                                              
           "Join Filter": "(ci.role_id = rt.id)",                             
           "Rows Removed by Join Filter": 0,                                  
           "Shared Hit Blocks": 184,                                          
           "Shared Read Blocks": 252781,                                      
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
               "Total Cost": 281366.30,                                       
               "Plan Rows": 332865,                                           
               "Plan Width": 37,                                              
               "Actual Startup Time": 1066.601,                               
               "Actual Total Time": 13921.715,                                
               "Actual Rows": 10,                                             
               "Actual Loops": 1,                                             
               "Inner Unique": true,                                          
               "Join Filter": "(mc.company_type_id = ct.id)",                 
               "Rows Removed by Join Filter": 4,                              
               "Shared Hit Blocks": 184,                                      
               "Shared Read Blocks": 252780,                                  
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
                   "Total Cost": 281112.28,                                   
                   "Plan Rows": 332865,                                       
                   "Plan Width": 41,                                          
                   "Actual Startup Time": 1043.620,                           
                   "Actual Total Time": 13898.676,                            
                   "Actual Rows": 10,                                         
                   "Actual Loops": 1,                                         
                   "Inner Unique": true,                                      
                   "Shared Hit Blocks": 184,                                  
                   "Shared Read Blocks": 252779,                              
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
                       "Total Cost": 250329.58,                               
                       "Plan Rows": 481173,                                   
                       "Plan Width": 32,                                      
                       "Actual Startup Time": 978.091,                        
                       "Actual Total Time": 13577.511,                        
                       "Actual Rows": 14,                                     
                       "Actual Loops": 1,                                     
                       "Inner Unique": true,                                  
                       "Shared Hit Blocks": 147,                              
                       "Shared Read Blocks": 252760,                          
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
                           "Total Cost": 226587.31,                           
                           "Plan Rows": 1332746,                              
                           "Plan Width": 36,                                  
                           "Actual Startup Time": 927.216,                    
                           "Actual Total Time": 12890.132,                    
                           "Actual Rows": 31,                                 
                           "Actual Loops": 1,                                 
                           "Inner Unique": false,                             
                           "Shared Hit Blocks": 70,                           
                           "Shared Read Blocks": 252712,                      
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
                               "Total Cost": 178433.06,                       
                               "Plan Rows": 693889,                           
                               "Plan Width": 24,                              
                               "Actual Startup Time": 883.714,                
                               "Actual Total Time": 12290.608,                
                               "Actual Rows": 15,                             
                               "Actual Loops": 1,                             
                               "Inner Unique": true,                          
                               "Shared Hit Blocks": 51,                       
                               "Shared Read Blocks": 252663,                  
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
                                   "Actual Startup Time": 864.698,            
                                   "Actual Total Time": 11765.203,            
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
                                   "Actual Loops": 1435439,                   
                                   "Index Cond": "(id = ci.person_role_id)",  
                                   "Rows Removed by Index Recheck": 0,        
                                   "Shared Hit Blocks": 51,                   
                                   "Shared Read Blocks": 9,                   
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
                               "Total Cost": 0.07,                            
                               "Plan Rows": 2,                                
                               "Plan Width": 12,                              
                               "Actual Startup Time": 34.665,                 
                               "Actual Total Time": 39.957,                   
                               "Actual Rows": 2,                              
                               "Actual Loops": 15,                            
                               "Index Cond": "(movie_id = ci.movie_id)",      
                               "Rows Removed by Index Recheck": 0,            
                               "Shared Hit Blocks": 19,                       
                               "Shared Read Blocks": 49,                      
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
                           "Actual Startup Time": 22.165,                     
                           "Actual Total Time": 22.165,                       
                           "Actual Rows": 0,                                  
                           "Actual Loops": 31,                                
                           "Index Cond": "(id = mc.company_id)",              
                           "Rows Removed by Index Recheck": 0,                
                           "Filter": "((country_code)::text = '[us]'::text)", 
                           "Rows Removed by Filter": 1,                       
                           "Shared Hit Blocks": 77,                           
                           "Shared Read Blocks": 48,                          
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
                       "Actual Startup Time": 22.933,                         
                       "Actual Total Time": 22.933,                           
                       "Actual Rows": 1,                                      
                       "Actual Loops": 14,                                    
                       "Index Cond": "(id = mc.movie_id)",                    
                       "Rows Removed by Index Recheck": 0,                    
                       "Filter": "(production_year > 1990)",                  
                       "Rows Removed by Filter": 0,                           
                       "Shared Hit Blocks": 37,                               
                       "Shared Read Blocks": 19,                              
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
                   "Actual Startup Time": 2.298,                              
                   "Actual Total Time": 2.299,                                
                   "Actual Rows": 1,                                          
                   "Actual Loops": 10,                                        
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
                       "Plan Rows": 4,                                        
                       "Plan Width": 4,                                       
                       "Actual Startup Time": 22.958,                         
                       "Actual Total Time": 22.960,                           
                       "Actual Rows": 2,                                      
                       "Actual Loops": 1,                                     
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
               "Node Type": "Materialize",                                    
               "Parent Relationship": "Inner",                                
               "Parallel Aware": false,                                       
               "Startup Cost": 0.00,                                          
               "Total Cost": 0.03,                                            
               "Plan Rows": 12,                                               
               "Plan Width": 4,                                               
               "Actual Startup Time": 0.701,                                  
               "Actual Total Time": 0.701,                                    
               "Actual Rows": 1,                                              
               "Actual Loops": 10,                                            
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
                   "Plan Rows": 12,                                           
                   "Plan Width": 4,                                           
                   "Actual Startup Time": 6.988,                              
                   "Actual Total Time": 6.988,                                
                   "Actual Rows": 1,                                          
                   "Actual Loops": 1,                                         
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
     },                                                                       
     "Planning Time": 1595.530,                                               
     "Triggers": [                                                            
     ],                                                                       
     "Execution Time": 13945.692                                              
   }                                                                          
 ]
