 [                                                                                   
   {                                                                                 
     "Plan": {                                                                       
       "Node Type": "Aggregate",                                                     
       "Strategy": "Plain",                                                          
       "Partial Mode": "Simple",                                                     
       "Parallel Aware": false,                                                      
       "Startup Cost": 314967.86,                                                    
       "Total Cost": 314967.86,                                                      
       "Plan Rows": 1,                                                               
       "Plan Width": 64,                                                             
       "Actual Startup Time": 325831.837,                                            
       "Actual Total Time": 325831.837,                                              
       "Actual Rows": 1,                                                             
       "Actual Loops": 1,                                                            
       "Shared Hit Blocks": 21412131,                                                
       "Shared Read Blocks": 147063,                                                 
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
           "Startup Cost": 223696.21,                                                
           "Total Cost": 314685.10,                                                  
           "Plan Rows": 1820954,                                                     
           "Plan Width": 33,                                                         
           "Actual Startup Time": 17549.138,                                         
           "Actual Total Time": 323955.006,                                          
           "Actual Rows": 2487611,                                                   
           "Actual Loops": 1,                                                        
           "Inner Unique": true,                                                     
           "Join Filter": "(a.person_id = n.id)",                                  
           "Rows Removed by Join Filter": 0,                                         
           "Shared Hit Blocks": 21412131,                                            
           "Shared Read Blocks": 147063,                                             
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
               "Startup Cost": 223696.19,                                            
               "Total Cost": 278885.88,                                              
               "Plan Rows": 1820954,                                                 
               "Plan Width": 41,                                                     
               "Actual Startup Time": 17526.954,                                     
               "Actual Total Time": 122371.985,                                      
               "Actual Rows": 2487611,                                               
               "Actual Loops": 1,                                                    
               "Inner Unique": false,                                                
               "Shared Hit Blocks": 11491693,                                        
               "Shared Read Blocks": 112651,                                         
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
                   "Startup Cost": 223696.18,                                        
                   "Total Cost": 247720.51,                                          
                   "Plan Rows": 2094450,                                             
                   "Plan Width": 21,                                                 
                   "Actual Startup Time": 17310.495,                                 
                   "Actual Total Time": 39362.641,                                   
                   "Actual Rows": 1970658,                                           
                   "Actual Loops": 1,                                                
                   "Inner Unique": false,                                            
                   "Merge Cond": "(t.id = ci.movie_id)",                             
                   "Shared Hit Blocks": 4170078,                                     
                   "Shared Read Blocks": 99833,                                      
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
                       "Startup Cost": 67525.72,                                     
                       "Total Cost": 90951.87,                                       
                       "Plan Rows": 941996,                                          
                       "Plan Width": 25,                                             
                       "Actual Startup Time": 14459.348,                             
                       "Actual Total Time": 33099.650,                               
                       "Actual Rows": 1153798,                                       
                       "Actual Loops": 1,                                            
                       "Inner Unique": true,                                         
                       "Merge Cond": "(mc.movie_id = t.id)",                         
                       "Shared Hit Blocks": 4170077,                                 
                       "Shared Read Blocks": 72608,                                  
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
                           "Startup Cost": 67525.70,                                 
                           "Total Cost": 67598.84,                                   
                           "Plan Rows": 941996,                                      
                           "Plan Width": 4,                                          
                           "Actual Startup Time": 14452.970,                         
                           "Actual Total Time": 14802.731,                           
                           "Actual Rows": 1153798,                                   
                           "Actual Loops": 1,                                        
                           "Sort Key": ["mc.movie_id"],                              
                           "Sort Method": "quicksort",                               
                           "Sort Space Used": 103237,                                
                           "Sort Space Type": "Memory",                              
                           "Shared Hit Blocks": 1681929,                             
                           "Shared Read Blocks": 29747,                              
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
                               "Startup Cost": 0.03,                                 
                               "Total Cost": 64622.87,                               
                               "Plan Rows": 941996,                                  
                               "Plan Width": 4,                                      
                               "Actual Startup Time": 0.107,                         
                               "Actual Total Time": 13919.757,                       
                               "Actual Rows": 1153798,                               
                               "Actual Loops": 1,                                    
                               "Inner Unique": false,                                
                               "Merge Cond": "(cn.id = mc.company_id)",              
                               "Shared Hit Blocks": 1681925,                         
                               "Shared Read Blocks": 29747,                          
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
                                   "Node Type": "Index Scan",                        
                                   "Parent Relationship": "Outer",                   
                                   "Parallel Aware": false,                          
                                   "Scan Direction": "Forward",                      
                                   "Index Name": "company_name_pkey",                
                                   "Relation Name": "company_name",                  
                                   "Alias": "cn",                                    
                                   "Startup Cost": 0.01,                             
                                   "Total Cost": 4597.20,                            
                                   "Plan Rows": 84843,                               
                                   "Plan Width": 4,                                  
                                   "Actual Startup Time": 0.065,                     
                                   "Actual Total Time": 1666.990,                    
                                   "Actual Rows": 84843,                             
                                   "Actual Loops": 1,                                
                                   "Filter": "((country_code)::text = '[us]'::text)",
                                   "Rows Removed by Filter": 150154,                 
                                   "Shared Hit Blocks": 231720,                      
                                   "Shared Read Blocks": 3834,                       
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
                                   "Index Name": "company_id_movie_companies",       
                                   "Relation Name": "movie_companies",               
                                   "Alias": "mc",                                    
                                   "Startup Cost": 0.01,                             
                                   "Total Cost": 59751.38,                           
                                   "Plan Rows": 2609129,                             
                                   "Plan Width": 8,                                  
                                   "Actual Startup Time": 0.035,                     
                                   "Actual Total Time": 11655.664,                   
                                   "Actual Rows": 2609129,                           
                                   "Actual Loops": 1,                                
                                   "Shared Hit Blocks": 1450205,                     
                                   "Shared Read Blocks": 25913,                      
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
                           "Total Cost": 23042.05,                                   
                           "Plan Rows": 2528312,                                     
                           "Plan Width": 21,                                         
                           "Actual Startup Time": 0.028,                             
                           "Actual Total Time": 16248.181,                           
                           "Actual Rows": 2525744,                                   
                           "Actual Loops": 1,                                        
                           "Shared Hit Blocks": 2488148,                             
                           "Shared Read Blocks": 42861,                              
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
                       "Node Type": "Sort",                                          
                       "Parent Relationship": "Inner",                               
                       "Parallel Aware": false,                                      
                       "Startup Cost": 156170.43,                                    
                       "Total Cost": 156404.93,                                      
                       "Plan Rows": 3020362,                                         
                       "Plan Width": 8,                                              
                       "Actual Startup Time": 2799.653,                              
                       "Actual Total Time": 3734.421,                                
                       "Actual Rows": 3863824,                                       
                       "Actual Loops": 1,                                            
                       "Sort Key": ["ci.movie_id"],                                  
                       "Sort Method": "quicksort",                                   
                       "Sort Space Used": 226224,                                    
                       "Sort Space Type": "Memory",                                  
                       "Shared Hit Blocks": 1,                                       
                       "Shared Read Blocks": 27225,                                  
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
                           "Total Cost": 146074.60,                                  
                           "Plan Rows": 3020362,                                     
                           "Plan Width": 8,                                          
                           "Actual Startup Time": 54.329,                            
                           "Actual Total Time": 1646.657,                            
                           "Actual Rows": 2728943,                                   
                           "Actual Loops": 1,                                        
                           "Inner Unique": false,                                    
                           "Shared Hit Blocks": 1,                                   
                           "Shared Read Blocks": 27225,                              
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
                               "Node Type": "Index Scan",                            
                               "Parent Relationship": "Outer",                       
                               "Parallel Aware": false,                              
                               "Scan Direction": "Forward",                          
                               "Index Name": "role_type_role_key",                   
                               "Relation Name": "role_type",                         
                               "Alias": "rt",                                        
                               "Startup Cost": 0.00,                                 
                               "Total Cost": 6.12,                                   
                               "Plan Rows": 1,                                       
                               "Plan Width": 4,                                      
                               "Actual Startup Time": 0.046,                         
                               "Actual Total Time": 0.047,                           
                               "Actual Rows": 1,                                     
                               "Actual Loops": 1,                                    
                               "Index Cond": "((role)::text = 'writer'::text)",      
                               "Rows Removed by Index Recheck": 0,                   
                               "Shared Hit Blocks": 1,                               
                               "Shared Read Blocks": 1,                              
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
                               "Index Name": "role_id_cast_info",                    
                               "Relation Name": "cast_info",                         
                               "Alias": "ci",                                        
                               "Startup Cost": 0.02,                                 
                               "Total Cost": 28985.88,                               
                               "Plan Rows": 3294940,                                 
                               "Plan Width": 12,                                     
                               "Actual Startup Time": 54.273,                        
                               "Actual Total Time": 1161.191,                        
                               "Actual Rows": 2728943,                               
                               "Actual Loops": 1,                                    
                               "Index Cond": "(role_id = rt.id)",                    
                               "Rows Removed by Index Recheck": 0,                   
                               "Shared Hit Blocks": 0,                               
                               "Shared Read Blocks": 27224,                          
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
                   "Index Name": "person_id_aka_name",                               
                   "Relation Name": "aka_name",                                      
                   "Alias": "a",                                                    
                   "Startup Cost": 0.01,                                             
                   "Total Cost": 0.01,                                               
                   "Plan Rows": 2,                                                   
                   "Plan Width": 20,                                                 
                   "Actual Startup Time": 0.037,                                     
                   "Actual Total Time": 0.041,                                       
                   "Actual Rows": 1,                                                 
                   "Actual Loops": 1970658,                                          
                   "Index Cond": "(person_id = ci.person_id)",                       
                   "Rows Removed by Index Recheck": 0,                               
                   "Shared Hit Blocks": 7321615,                                     
                   "Shared Read Blocks": 12818,                                      
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
               "Actual Startup Time": 0.080,                                         
               "Actual Total Time": 0.080,                                           
               "Actual Rows": 1,                                                     
               "Actual Loops": 2487611,                                              
               "Index Cond": "(id = ci.person_id)",                                  
               "Rows Removed by Index Recheck": 0,                                   
               "Shared Hit Blocks": 9920438,                                         
               "Shared Read Blocks": 34412,                                          
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
     "Planning Time": 4683.866,                                                      
     "Triggers": [                                                                   
     ],                                                                              
     "Execution Time": 325875.981                                                    
   }                                                                                 
 ]
