 [                                                                                                    
   {                                                                                                  
     "Plan": {                                                                                        
       "Node Type": "Aggregate",                                                                      
       "Strategy": "Plain",                                                                           
       "Partial Mode": "Simple",                                                                      
       "Parallel Aware": false,                                                                       
       "Startup Cost": 60061.17,                                                                      
       "Total Cost": 60061.17,                                                                        
       "Plan Rows": 1,                                                                                
       "Plan Width": 68,                                                                              
       "Actual Startup Time": 15586.137,                                                              
       "Actual Total Time": 15586.137,                                                                
       "Actual Rows": 1,                                                                              
       "Actual Loops": 1,                                                                             
       "Shared Hit Blocks": 2503628,                                                                  
       "Shared Read Blocks": 80999,                                                                   
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
           "Startup Cost": 60042.09,                                                                  
           "Total Cost": 60060.92,                                                                    
           "Plan Rows": 1069,                                                                         
           "Plan Width": 45,                                                                          
           "Actual Startup Time": 15586.081,                                                          
           "Actual Total Time": 15586.083,                                                            
           "Actual Rows": 3,                                                                          
           "Actual Loops": 1,                                                                         
           "Inner Unique": true,                                                                      
           "Merge Cond": "(mi_idx.info_type_id = it.id)",                                             
           "Shared Hit Blocks": 2503628,                                                              
           "Shared Read Blocks": 80999,                                                               
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
               "Startup Cost": 60035.96,                                                              
               "Total Cost": 60045.34,                                                                
               "Plan Rows": 120831,                                                                   
               "Plan Width": 49,                                                                      
               "Actual Startup Time": 15566.981,                                                      
               "Actual Total Time": 15575.205,                                                        
               "Actual Rows": 96296,                                                                  
               "Actual Loops": 1,                                                                     
               "Sort Key": ["mi_idx.info_type_id"],                                                   
               "Sort Method": "quicksort",                                                            
               "Sort Space Used": 12814,                                                              
               "Sort Space Type": "Memory",                                                           
               "Shared Hit Blocks": 2503627,                                                          
               "Shared Read Blocks": 80998,                                                           
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
                   "Startup Cost": 24068.65,                                                          
                   "Total Cost": 59719.20,                                                            
                   "Plan Rows": 120831,                                                               
                   "Plan Width": 49,                                                                  
                   "Actual Startup Time": 2445.414,                                                   
                   "Actual Total Time": 15499.053,                                                    
                   "Actual Rows": 96296,                                                              
                   "Actual Loops": 1,                                                                 
                   "Inner Unique": false,                                                             
                   "Merge Cond": "(t.id = mi_idx.movie_id)",                                          
                   "Shared Hit Blocks": 2503623,                                                      
                   "Shared Read Blocks": 80998,                                                       
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
                       "Startup Cost": 24068.64,                                                      
                       "Total Cost": 47593.49,                                                        
                       "Plan Rows": 94697,                                                            
                       "Plan Width": 53,                                                              
                       "Actual Startup Time": 2425.518,                                               
                       "Actual Total Time": 13738.801,                                                
                       "Actual Rows": 46509,                                                          
                       "Actual Loops": 1,                                                             
                       "Inner Unique": true,                                                          
                       "Merge Cond": "(mc.movie_id = t.id)",                                          
                       "Shared Hit Blocks": 2488151,                                                  
                       "Shared Read Blocks": 68778,                                                   
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
                           "Startup Cost": 24068.63,                                                  
                           "Total Cost": 24094.58,                                                    
                           "Plan Rows": 334271,                                                       
                           "Plan Width": 28,                                                          
                           "Actual Startup Time": 1959.029,                                           
                           "Actual Total Time": 1981.690,                                             
                           "Actual Rows": 140904,                                                     
                           "Actual Loops": 1,                                                         
                           "Sort Key": ["mc.movie_id"],                                               
                           "Sort Method": "quicksort",                                                
                           "Sort Space Used": 16562,                                                  
                           "Sort Space Type": "Memory",                                               
                           "Shared Hit Blocks": 4,                                                    
                           "Shared Read Blocks": 25918,                                               
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
                               "Startup Cost": 0.02,                                                  
                               "Total Cost": 23116.13,                                                
                               "Plan Rows": 334271,                                                   
                               "Plan Width": 28,                                                      
                               "Actual Startup Time": 1053.282,                                       
                               "Actual Total Time": 1886.831,                                         
                               "Actual Rows": 140904,                                                 
                               "Actual Loops": 1,                                                     
                               "Inner Unique": false,                                                 
                               "Merge Cond": "(ct.id = mc.company_type_id)",                          
                               "Shared Hit Blocks": 4,                                                
                               "Shared Read Blocks": 25918,                                           
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
                                   "Index Name": "company_type_pkey",                                 
                                   "Relation Name": "company_type",                                   
                                   "Alias": "ct",                                                     
                                   "Startup Cost": 0.00,                                              
                                   "Total Cost": 9.19,                                                
                                   "Plan Rows": 1,                                                    
                                   "Plan Width": 4,                                                   
                                   "Actual Startup Time": 0.054,                                      
                                   "Actual Total Time": 0.058,                                        
                                   "Actual Rows": 1,                                                  
                                   "Actual Loops": 1,                                                 
                                   "Filter": "((kind)::text = 'production companies'::text)",         
                                   "Rows Removed by Filter": 3,                                       
                                   "Shared Hit Blocks": 2,                                            
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
                                   "Node Type": "Index Scan",                                         
                                   "Parent Relationship": "Inner",                                    
                                   "Parallel Aware": false,                                           
                                   "Scan Direction": "Forward",                                       
                                   "Index Name": "company_type_id_movie_companies",                   
                                   "Relation Name": "movie_companies",                                
                                   "Alias": "mc",                                                     
                                   "Startup Cost": 0.01,                                              
                                   "Total Cost": 22980.02,                                            
                                   "Plan Rows": 1337085,                                              
                                   "Plan Width": 32,                                                  
                                   "Actual Startup Time": 29.874,                                     
                                   "Actual Total Time": 1696.877,                                     
                                   "Actual Rows": 1337088,                                            
                                   "Actual Loops": 1,                                                 
                                   "Filter": "(note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)",
                                   "Rows Removed by Filter": 1272041,                                 
                                   "Shared Hit Blocks": 2,                                            
                                   "Shared Read Blocks": 25918,                                       
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
                           "Total Cost": 23434.65,                                                    
                           "Plan Rows": 716259,                                                       
                           "Plan Width": 25,                                                          
                           "Actual Startup Time": 8.751,                                              
                           "Actual Total Time": 11578.977,                                            
                           "Actual Rows": 716108,                                                     
                           "Actual Loops": 1,                                                         
                           "Filter": "((production_year >= 2005) AND (production_year <= 2010))",     
                           "Rows Removed by Filter": 1809623,                                         
                           "Shared Hit Blocks": 2488147,                                              
                           "Shared Read Blocks": 42860,                                               
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
                       "Index Name": "movie_id_movie_info_idx",                                       
                       "Relation Name": "movie_info_idx",                                             
                       "Alias": "mi_idx",                                                             
                       "Startup Cost": 0.01,                                                          
                       "Total Cost": 12031.00,                                                        
                       "Plan Rows": 1380035,                                                          
                       "Plan Width": 8,                                                               
                       "Actual Startup Time": 0.023,                                                  
                       "Actual Total Time": 1456.377,                                                 
                       "Actual Rows": 1432805,                                                        
                       "Actual Loops": 1,                                                             
                       "Shared Hit Blocks": 15472,                                                    
                       "Shared Read Blocks": 12220,                                                   
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
               "Startup Cost": 6.13,                                                                  
               "Total Cost": 6.13,                                                                    
               "Plan Rows": 1,                                                                        
               "Plan Width": 4,                                                                       
               "Actual Startup Time": 0.035,                                                          
               "Actual Total Time": 0.035,                                                            
               "Actual Rows": 1,                                                                      
               "Actual Loops": 1,                                                                     
               "Sort Key": ["it.id"],                                                                 
               "Sort Method": "quicksort",                                                            
               "Sort Space Used": 25,                                                                 
               "Sort Space Type": "Memory",                                                           
               "Shared Hit Blocks": 1,                                                                
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
                   "Node Type": "Index Scan",                                                         
                   "Parent Relationship": "Outer",                                                    
                   "Parallel Aware": false,                                                           
                   "Scan Direction": "Forward",                                                       
                   "Index Name": "info_type_info_key",                                                
                   "Relation Name": "info_type",                                                      
                   "Alias": "it",                                                                     
                   "Startup Cost": 0.00,                                                              
                   "Total Cost": 6.13,                                                                
                   "Plan Rows": 1,                                                                    
                   "Plan Width": 4,                                                                   
                   "Actual Startup Time": 0.026,                                                      
                   "Actual Total Time": 0.027,                                                        
                   "Actual Rows": 1,                                                                  
                   "Actual Loops": 1,                                                                 
                   "Index Cond": "((info)::text = 'bottom 10 rank'::text)",                           
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
                 }                                                                                    
               ]                                                                                      
             }                                                                                        
           ]                                                                                          
         }                                                                                            
       ]                                                                                              
     },                                                                                               
     "Planning Time": 2306.880,                                                                       
     "Triggers": [                                                                                    
     ],                                                                                               
     "Execution Time": 15610.087                                                                      
   }                                                                                                  
 ]
