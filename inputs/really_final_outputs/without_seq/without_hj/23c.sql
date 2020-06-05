                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29882.53..29882.53 rows=1 width=64) (actual time=101755.045..101755.045 rows=1 loops=1)
   Buffers: shared hit=2020311 read=87263
   ->  Nested Loop  (cost=0.11..29882.53 rows=5 width=27) (actual time=41945.570..101754.503 rows=628 loops=1)
         Buffers: shared hit=2020311 read=87263
         ->  Nested Loop  (cost=0.10..29882.46 rows=5 width=31) (actual time=41922.048..101601.630 rows=628 loops=1)
               Join Filter: (t.id = mk.movie_id)
               Buffers: shared hit=2018522 read=87163
               ->  Nested Loop  (cost=0.08..29882.40 rows=1 width=43) (actual time=41879.733..101491.758 rows=7 loops=1)
                     Buffers: shared hit=2018496 read=87153
                     ->  Nested Loop  (cost=0.08..29882.39 rows=1 width=47) (actual time=41858.363..101470.351 rows=7 loops=1)
                           Buffers: shared hit=2018489 read=87152
                           ->  Nested Loop  (cost=0.07..29882.20 rows=5 width=51) (actual time=41858.327..101470.249 rows=7 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=2018475 read=87152
                                 ->  Nested Loop  (cost=0.06..26955.02 rows=11478 width=43) (actual time=13758.716..51213.901 rows=21851 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 10263
                                       Buffers: shared hit=1508452 read=35255
                                       ->  Nested Loop  (cost=0.06..26929.35 rows=20087 width=37) (actual time=53.320..51169.752 rows=23689 loops=1)
                                             Buffers: shared hit=1508450 read=35255
                                             ->  Nested Loop  (cost=0.04..25071.73 rows=29037 width=12) (actual time=47.927..20446.175 rows=105289 loops=1)
                                                   Buffers: shared hit=1100029 read=22090
                                                   ->  Nested Loop  (cost=0.03..23638.97 rows=80426 width=16) (actual time=17.514..5040.665 rows=227682 loops=1)
                                                         Buffers: shared hit=192204 read=18297
                                                         ->  Nested Loop  (cost=0.02..3319.95 rows=33772 width=4) (actual time=17.379..415.966 rows=24592 loops=1)
                                                               Join Filter: (cc.status_id = cct.id)
                                                               Rows Removed by Join Filter: 110494
                                                               Buffers: shared hit=86927 read=1098
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=8) (actual time=0.026..256.867 rows=135086 loops=1)
                                                                     Buffers: shared hit=86926 read=1097
                                                               ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=135086)
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                                                                           Index Cond: ((kind)::text = 'complete+verified'::text)
                                                                           Buffers: shared hit=1 read=1
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.60 rows=2 width=12) (actual time=0.118..0.182 rows=9 loops=24592)
                                                               Index Cond: (movie_id = cc.movie_id)
                                                               Buffers: shared hit=105277 read=17199
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.067..0.067 rows=0 loops=227682)
                                                         Index Cond: (id = mc.company_id)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=907825 read=3793
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.291..0.291 rows=0 loops=105289)
                                                   Index Cond: (id = mc.movie_id)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=408421 read=13165
                                       ->  Materialize  (cost=0.00..9.19 rows=4 width=14) (actual time=0.000..0.000 rows=1 loops=23689)
                                             Buffers: shared hit=2
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=4 width=14) (actual time=0.026..0.036 rows=4 loops=1)
                                                   Filter: ((kind)::text = ANY ('{movie,"tv movie","video movie","video game"}'::text[]))
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=2.298..2.299 rows=0 loops=21851)
                                       Index Cond: (movie_id = mc.movie_id)
                                       Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                       Rows Removed by Filter: 183
                                       Buffers: shared hit=510023 read=51897
                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=7)
                                 Index Cond: (id = mi.info_type_id)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Buffers: shared hit=14
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=3.055..3.055 rows=1 loops=7)
                           Index Cond: (id = mc.company_type_id)
                           Heap Fetches: 0
                           Buffers: shared hit=7 read=1
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.06 rows=11 width=8) (actual time=15.543..15.638 rows=90 loops=7)
                     Index Cond: (movie_id = mc.movie_id)
                     Buffers: shared hit=26 read=10
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.242..0.242 rows=1 loops=628)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=1789 read=100
 Planning Time: 8563.876 ms
 Execution Time: 101778.956 ms
(76 rows)

