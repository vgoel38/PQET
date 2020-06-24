 [                                                                                            
   {                                                                                          
     "Plan": {                                                                                
       "Node Type": "Aggregate",                                                              
       "Strategy": "Plain",                                                                   
       "Partial Mode": "Simple",                                                              
       "Parallel Aware": false,                                                               
       "Startup Cost": 18275.55,                                                              
       "Total Cost": 18275.55,                                                                
       "Plan Rows": 1,                                                                        
       "Plan Width": 68,                                                                      
       "Actual Startup Time": 4077.459,                                                       
       "Actual Total Time": 4077.459,                                                         
       "Actual Rows": 1,                                                                      
       "Actual Loops": 1,                                                                     
       "Shared Hit Blocks": 11,                                                               
       "Shared Read Blocks": 63235,                                                           
       "Shared Dirtied Blocks": 0,                                                            
       "Shared Written Blocks": 0,                                                            
       "Local Hit Blocks": 0,                                                                 
       "Local Read Blocks": 0,                                                                
       "Local Dirtied Blocks": 0,                                                             
       "Local Written Blocks": 0,                                                             
       "Temp Read Blocks": 3701,                                                              
       "Temp Written Blocks": 3849,                                                           
       "Plans": [                                                                             
         {                                                                                    
           "Node Type": "Merge Join",                                                         
           "Parent Relationship": "Outer",                                                    
           "Parallel Aware": false,                                                           
           "Join Type": "Inner",                                                              
           "Startup Cost": 18109.76,                                                          
           "Total Cost": 18275.30,                                                            
           "Plan Rows": 1069,                                                                 
           "Plan Width": 45,                                                                  
           "Actual Startup Time": 4035.351,                                                   
           "Actual Total Time": 4077.411,                                                     
           "Actual Rows": 3,                                                                  
           "Actual Loops": 1,                                                                 
           "Inner Unique": true,                                                              
           "Merge Cond": "(mc.movie_id = t.id)",                                              
           "Shared Hit Blocks": 11,                                                           
           "Shared Read Blocks": 63235,                                                       
           "Shared Dirtied Blocks": 0,                                                        
           "Shared Written Blocks": 0,                                                        
           "Local Hit Blocks": 0,                                                             
           "Local Read Blocks": 0,                                                            
           "Local Dirtied Blocks": 0,                                                         
           "Local Written Blocks": 0,                                                         
           "Temp Read Blocks": 3701,                                                          
           "Temp Written Blocks": 3849,                                                       
           "Plans": [                                                                         
             {                                                                                
               "Node Type": "Merge Join",                                                     
               "Parent Relationship": "Outer",                                                
               "Parallel Aware": false,                                                       
               "Join Type": "Inner",                                                          
               "Startup Cost": 6526.45,                                                       
               "Total Cost": 6580.51,                                                         
               "Plan Rows": 3775,                                                             
               "Plan Width": 32,                                                              
               "Actual Startup Time": 2025.891,                                               
               "Actual Total Time": 2040.635,                                                 
               "Actual Rows": 5,                                                              
               "Actual Loops": 1,                                                             
               "Inner Unique": false,                                                         
               "Merge Cond": "(mc.movie_id = mi_idx.movie_id)",                               
               "Shared Hit Blocks": 10,                                                       
               "Shared Read Blocks": 27238,                                                   
               "Shared Dirtied Blocks": 0,                                                    
               "Shared Written Blocks": 0,                                                    
               "Local Hit Blocks": 0,                                                         
               "Local Read Blocks": 0,                                                        
               "Local Dirtied Blocks": 0,                                                     
               "Local Written Blocks": 0,                                                     
               "Temp Read Blocks": 622,                                                       
               "Temp Written Blocks": 623,                                                    
               "Plans": [                                                                     
                 {                                                                            
                   "Node Type": "Sort",                                                       
                   "Parent Relationship": "Outer",                                            
                   "Parallel Aware": false,                                                   
                   "Startup Cost": 5830.39,                                                   
                   "Total Cost": 5856.34,                                                     
                   "Plan Rows": 334271,                                                       
                   "Plan Width": 28,                                                          
                   "Actual Startup Time": 1126.825,                                           
                   "Actual Total Time": 1142.286,                                             
                   "Actual Rows": 132371,                                                     
                   "Actual Loops": 1,                                                         
                   "Sort Key": ["mc.movie_id"],                                               
                   "Sort Method": "external merge",                                           
                   "Sort Space Used": 4976,                                                   
                   "Sort Space Type": "Disk",                                                 
                   "Shared Hit Blocks": 7,                                                    
                   "Shared Read Blocks": 18787,                                               
                   "Shared Dirtied Blocks": 0,                                                
                   "Shared Written Blocks": 0,                                                
                   "Local Hit Blocks": 0,                                                     
                   "Local Read Blocks": 0,                                                    
                   "Local Dirtied Blocks": 0,                                                 
                   "Local Written Blocks": 0,                                                 
                   "Temp Read Blocks": 622,                                                   
                   "Temp Written Blocks": 623,                                                
                   "Plans": [                                                                 
                     {                                                                        
                       "Node Type": "Nested Loop",                                            
                       "Parent Relationship": "Outer",                                        
                       "Parallel Aware": false,                                               
                       "Join Type": "Inner",                                                  
                       "Startup Cost": 0.00,                                                  
                       "Total Cost": 1272.43,                                                 
                       "Plan Rows": 334271,                                                   
                       "Plan Width": 28,                                                      
                       "Actual Startup Time": 795.228,                                        
                       "Actual Total Time": 1055.582,                                         
                       "Actual Rows": 140904,                                                 
                       "Actual Loops": 1,                                                     
                       "Inner Unique": true,                                                  
                       "Join Filter": "(ct.id = mc.company_type_id)",                         
                       "Rows Removed by Join Filter": 1196184,                                
                       "Shared Hit Blocks": 3,                                                
                       "Shared Read Blocks": 18787,                                           
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
                           "Relation Name": "movie_companies",                                
                           "Alias": "mc",                                                     
                           "Startup Cost": 0.00,                                              
                           "Total Cost": 972.33,                                              
                           "Plan Rows": 1337085,                                              
                           "Plan Width": 32,                                                  
                           "Actual Startup Time": 0.031,                                      
                           "Actual Total Time": 599.243,                                      
                           "Actual Rows": 1337088,                                            
                           "Actual Loops": 1,                                                 
                           "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",
                           "Rows Removed by Filter": 1272041,                                 
                           "Shared Hit Blocks": 2,                                            
                           "Shared Read Blocks": 18787,                                       
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
                           "Actual Loops": 1337088,                                           
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
                               "Relation Name": "company_type",                               
                               "Alias": "ct",                                                 
                               "Startup Cost": 0.00,                                          
                               "Total Cost": 0.03,                                            
                               "Plan Rows": 1,                                                
                               "Plan Width": 4,                                               
                               "Actual Startup Time": 0.018,                                  
                               "Actual Total Time": 0.021,                                    
                               "Actual Rows": 1,                                              
                               "Actual Loops": 1,                                             
                               "Filter": "((kind)::text = 'production companies'::text)",     
                               "Rows Removed by Filter": 3,                                   
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
                     }                                                                        
                   ]                                                                          
                 },                                                                           
                 {                                                                            
                   "Node Type": "Sort",                                                       
                   "Parent Relationship": "Inner",                                            
                   "Parallel Aware": false,                                                   
                   "Startup Cost": 696.07,                                                    
                   "Total Cost": 697.01,                                                      
                   "Plan Rows": 12213,                                                        
                   "Plan Width": 4,                                                           
                   "Actual Startup Time": 884.443,                                            
                   "Actual Total Time": 884.445,                                              
                   "Actual Rows": 12,                                                         
                   "Actual Loops": 1,                                                         
                   "Sort Key": ["mi_idx.movie_id"],                                           
                   "Sort Method": "quicksort",                                                
                   "Sort Space Used": 25,                                                     
                   "Sort Space Type": "Memory",                                               
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
                       "Node Type": "Nested Loop",                                            
                       "Parent Relationship": "Outer",                                        
                       "Parallel Aware": false,                                               
                       "Join Type": "Inner",                                                  
                       "Startup Cost": 0.00,                                                  
                       "Total Cost": 670.32,                                                  
                       "Plan Rows": 12213,                                                    
                       "Plan Width": 4,                                                       
                       "Actual Startup Time": 884.425,                                        
                       "Actual Total Time": 884.429,                                          
                       "Actual Rows": 10,                                                     
                       "Actual Loops": 1,                                                     
                       "Inner Unique": true,                                                  
                       "Join Filter": "(it.id = mi_idx.info_type_id)",                        
                       "Rows Removed by Join Filter": 1380025,                                
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
                           "Total Cost": 360.56,                                              
                           "Plan Rows": 1380035,                                              
                           "Plan Width": 8,                                                   
                           "Actual Startup Time": 0.010,                                      
                           "Actual Total Time": 341.078,                                      
                           "Actual Rows": 1380035,                                            
                           "Actual Loops": 1,                                                 
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
                           "Actual Loops": 1380035,                                           
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
                               "Actual Startup Time": 0.019,                                  
                               "Actual Total Time": 0.019,                                    
                               "Actual Rows": 1,                                              
                               "Actual Loops": 1,                                             
                               "Filter": "((info)::text = 'bottom 10 rank'::text)",           
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
                     }                                                                        
                   ]                                                                          
                 }                                                                            
               ]                                                                              
             },                                                                               
             {                                                                                
               "Node Type": "Sort",                                                           
               "Parent Relationship": "Inner",                                                
               "Parallel Aware": false,                                                       
               "Startup Cost": 11583.31,                                                      
               "Total Cost": 11638.92,                                                        
               "Plan Rows": 716259,                                                           
               "Plan Width": 25,                                                              
               "Actual Startup Time": 1870.977,                                               
               "Actual Total Time": 1962.481,                                                 
               "Actual Rows": 669805,                                                         
               "Actual Loops": 1,                                                             
               "Sort Key": ["t.id"],                                                          
               "Sort Method": "external merge",                                               
               "Sort Space Used": 25752,                                                      
               "Sort Space Type": "Disk",                                                     
               "Shared Hit Blocks": 1,                                                        
               "Shared Read Blocks": 35997,                                                   
               "Shared Dirtied Blocks": 0,                                                    
               "Shared Written Blocks": 0,                                                    
               "Local Hit Blocks": 0,                                                         
               "Local Read Blocks": 0,                                                        
               "Local Dirtied Blocks": 0,                                                     
               "Local Written Blocks": 0,                                                     
               "Temp Read Blocks": 3079,                                                      
               "Temp Written Blocks": 3226,                                                   
               "Plans": [                                                                     
                 {                                                                            
                   "Node Type": "Seq Scan",                                                   
                   "Parent Relationship": "Outer",                                            
                   "Parallel Aware": false,                                                   
                   "Relation Name": "title",                                                  
                   "Alias": "t",                                                              
                   "Startup Cost": 0.00,                                                      
                   "Total Cost": 1696.56,                                                     
                   "Plan Rows": 716259,                                                       
                   "Plan Width": 25,                                                          
                   "Actual Startup Time": 23.237,                                             
                   "Actual Total Time": 1291.215,                                             
                   "Actual Rows": 716259,                                                     
                   "Actual Loops": 1,                                                         
                   "Filter": "((production_year >= 2005) AND (production_year <= 2010))",     
                   "Rows Removed by Filter": 1812053,                                         
                   "Shared Hit Blocks": 1,                                                    
                   "Shared Read Blocks": 35997,                                               
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
     "Planning Time": 2416.798,                                                               
     "Triggers": [                                                                            
     ],                                                                                       
     "Execution Time": 4115.513                                                               
   }                                                                                          
 ]
