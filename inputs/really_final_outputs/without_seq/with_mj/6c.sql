 [                                                                               
   {                                                                             
     "Plan": {                                                                   
       "Node Type": "Aggregate",                                                 
       "Strategy": "Plain",                                                      
       "Partial Mode": "Simple",                                                 
       "Parallel Aware": false,                                                  
       "Startup Cost": 795192.95,                                                
       "Total Cost": 795192.95,                                                  
       "Plan Rows": 1,                                                           
       "Plan Width": 96,                                                         
       "Actual Startup Time": 18111.625,                                         
       "Actual Total Time": 18111.626,                                           
       "Actual Rows": 1,                                                         
       "Actual Loops": 1,                                                        
       "Shared Hit Blocks": 4140795,                                             
       "Shared Read Blocks": 164281,                                             
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
           "Startup Cost": 795192.95,                                            
           "Total Cost": 795192.95,                                              
           "Plan Rows": 1,                                                       
           "Plan Width": 48,                                                     
           "Actual Startup Time": 18111.566,                                     
           "Actual Total Time": 18111.570,                                       
           "Actual Rows": 2,                                                     
           "Actual Loops": 1,                                                    
           "Inner Unique": true,                                                 
           "Merge Cond": "(mk.keyword_id = k.id)",                               
           "Shared Hit Blocks": 4140795,                                         
           "Shared Read Blocks": 164281,                                         
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
               "Startup Cost": 795186.81,                                        
               "Total Cost": 795186.81,                                          
               "Plan Rows": 3,                                                   
               "Plan Width": 36,                                                 
               "Actual Startup Time": 18068.466,                                 
               "Actual Total Time": 18068.471,                                   
               "Actual Rows": 17,                                                
               "Actual Loops": 1,                                                
               "Sort Key": ["mk.keyword_id"],                                    
               "Sort Method": "quicksort",                                       
               "Sort Space Used": 26,                                            
               "Sort Space Type": "Memory",                                      
               "Shared Hit Blocks": 4140795,                                     
               "Shared Read Blocks": 164277,                                     
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
                   "Startup Cost": 755599.63,                                    
                   "Total Cost": 795186.81,                                      
                   "Plan Rows": 3,                                               
                   "Plan Width": 36,                                             
                   "Actual Startup Time": 17426.000,                             
                   "Actual Total Time": 18051.128,                               
                   "Actual Rows": 18,                                            
                   "Actual Loops": 1,                                            
                   "Inner Unique": false,                                        
                   "Merge Cond": "(t.id = ci.movie_id)",                         
                   "Shared Hit Blocks": 4140791,                                 
                   "Shared Read Blocks": 164277,                                 
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
                       "Startup Cost": 1310.68,                                  
                       "Total Cost": 40947.82,                                   
                       "Plan Rows": 784,                                         
                       "Plan Width": 29,                                         
                       "Actual Startup Time": 1117.758,                          
                       "Actual Total Time": 3792.977,                            
                       "Actual Rows": 1052,                                      
                       "Actual Loops": 1,                                        
                       "Inner Unique": true,                                     
                       "Merge Cond": "(mk.movie_id = t.id)",                     
                       "Shared Hit Blocks": 21522,                               
                       "Shared Read Blocks": 37121,                              
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
                           "Index Name": "movie_id_movie_keyword",               
                           "Relation Name": "movie_keyword",                     
                           "Alias": "mk",                                        
                           "Startup Cost": 0.01,                                 
                           "Total Cost": 39285.80,                               
                           "Plan Rows": 4523930,                                 
                           "Plan Width": 8,                                      
                           "Actual Startup Time": 0.026,                         
                           "Actual Total Time": 2266.398,                        
                           "Actual Rows": 4507883,                               
                           "Actual Loops": 1,                                    
                           "Shared Hit Blocks": 21519,                           
                           "Shared Read Blocks": 36685,                          
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
                           "Node Type": "Sort",                                  
                           "Parent Relationship": "Inner",                       
                           "Parallel Aware": false,                              
                           "Startup Cost": 1310.67,                              
                           "Total Cost": 1310.70,                                
                           "Plan Rows": 438,                                     
                           "Plan Width": 21,                                     
                           "Actual Startup Time": 770.997,                       
                           "Actual Total Time": 771.151,                         
                           "Actual Rows": 438,                                   
                           "Actual Loops": 1,                                    
                           "Sort Key": ["t.id"],                                 
                           "Sort Method": "quicksort",                           
                           "Sort Space Used": 55,                                
                           "Sort Space Type": "Memory",                          
                           "Shared Hit Blocks": 3,                               
                           "Shared Read Blocks": 436,                            
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
                               "Index Name": "title_idx_production_year",        
                               "Relation Name": "title",                         
                               "Alias": "t",                                     
                               "Startup Cost": 0.01,                             
                               "Total Cost": 1310.07,                            
                               "Plan Rows": 438,                                 
                               "Plan Width": 21,                                 
                               "Actual Startup Time": 45.021,                    
                               "Actual Total Time": 768.697,                     
                               "Actual Rows": 438,                               
                               "Actual Loops": 1,                                
                               "Index Cond": "(production_year > 2014)",         
                               "Rows Removed by Index Recheck": 0,               
                               "Shared Hit Blocks": 3,                           
                               "Shared Read Blocks": 436,                        
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
                       "Startup Cost": 754288.95,                                
                       "Total Cost": 754289.22,                                  
                       "Plan Rows": 3479,                                        
                       "Plan Width": 19,                                         
                       "Actual Startup Time": 14257.767,                         
                       "Actual Total Time": 14257.854,                           
                       "Actual Rows": 502,                                       
                       "Actual Loops": 1,                                        
                       "Sort Key": ["ci.movie_id"],                              
                       "Sort Method": "quicksort",                               
                       "Sort Space Used": 62,                                    
                       "Sort Space Type": "Memory",                              
                       "Shared Hit Blocks": 4119269,                             
                       "Shared Read Blocks": 127156,                             
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
                           "Total Cost": 754282.59,                              
                           "Plan Rows": 3479,                                    
                           "Plan Width": 19,                                     
                           "Actual Startup Time": 10284.865,                     
                           "Actual Total Time": 14257.505,                       
                           "Actual Rows": 486,                                   
                           "Actual Loops": 1,                                    
                           "Inner Unique": true,                                 
                           "Merge Cond": "(ci.person_id = n.id)",                
                           "Shared Hit Blocks": 4119269,                         
                           "Shared Read Blocks": 127156,                         
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
                               "Index Name": "person_id_cast_info",              
                               "Relation Name": "cast_info",                     
                               "Alias": "ci",                                    
                               "Startup Cost": 0.02,                             
                               "Total Cost": 703876.26,                          
                               "Plan Rows": 36244344,                            
                               "Plan Width": 8,                                  
                               "Actual Startup Time": 0.016,                     
                               "Actual Total Time": 8426.928,                    
                               "Actual Rows": 4303605,                           
                               "Actual Loops": 1,                                
                               "Shared Hit Blocks": 180667,                      
                               "Shared Read Blocks": 56474,                      
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
                               "Index Name": "name_pkey",                        
                               "Relation Name": "name",                          
                               "Alias": "n",                                     
                               "Startup Cost": 0.01,                             
                               "Total Cost": 48812.37,                           
                               "Plan Rows": 400,                                 
                               "Plan Width": 19,                                 
                               "Actual Startup Time": 608.376,                   
                               "Actual Total Time": 4580.447,                    
                               "Actual Rows": 2,                                 
                               "Actual Loops": 1,                                
                               "Filter": "(name ~~ '%Downey%Robert%'::text)",    
                               "Rows Removed by Filter": 4167489,                
                               "Shared Hit Blocks": 3938602,                     
                               "Shared Read Blocks": 70682,                      
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
               "Node Type": "Sort",                                              
               "Parent Relationship": "Inner",                                   
               "Parallel Aware": false,                                          
               "Startup Cost": 6.13,                                             
               "Total Cost": 6.13,                                               
               "Plan Rows": 1,                                                   
               "Plan Width": 20,                                                 
               "Actual Startup Time": 43.079,                                    
               "Actual Total Time": 43.080,                                      
               "Actual Rows": 1,                                                 
               "Actual Loops": 1,                                                
               "Sort Key": ["k.id"],                                             
               "Sort Method": "quicksort",                                       
               "Sort Space Used": 25,                                            
               "Sort Space Type": "Memory",                                      
               "Shared Hit Blocks": 0,                                           
               "Shared Read Blocks": 4,                                          
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
                   "Index Name": "keyword_idx_keyword",                          
                   "Relation Name": "keyword",                                   
                   "Alias": "k",                                                 
                   "Startup Cost": 0.01,                                         
                   "Total Cost": 6.13,                                           
                   "Plan Rows": 1,                                               
                   "Plan Width": 20,                                             
                   "Actual Startup Time": 43.056,                                
                   "Actual Total Time": 43.059,                                  
                   "Actual Rows": 1,                                             
                   "Actual Loops": 1,                                            
                   "Index Cond": "(keyword = 'marvel-cinematic-universe'::text)",
                   "Rows Removed by Index Recheck": 0,                           
                   "Shared Hit Blocks": 0,                                       
                   "Shared Read Blocks": 4,                                      
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
     "Planning Time": 2690.243,                                                  
     "Triggers": [                                                               
     ],                                                                          
     "Execution Time": 18141.512                                                 
   }                                                                             
 ]
