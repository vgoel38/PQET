                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9439.33..9439.33 rows=1 width=64) (actual time=13729.745..13729.745 rows=1 loops=1)
   Buffers: shared hit=175256 read=12450
   ->  Nested Loop  (cost=0.06..9439.33 rows=1 width=23) (actual time=3474.933..13729.665 rows=6 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=175256 read=12450
         ->  Nested Loop  (cost=0.04..9439.29 rows=1 width=14) (actual time=3223.839..13146.673 rows=21 loops=1)
               Buffers: shared hit=175212 read=12410
               ->  Nested Loop  (cost=0.04..9439.06 rows=38 width=18) (actual time=155.526..13144.267 rows=298 loops=1)
                     Buffers: shared hit=174616 read=12410
                     ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=46.811..8755.703 rows=12951 loops=1)
                           Buffers: shared hit=132504 read=7213
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=20.901..446.650 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared hit=131177 read=1432
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=10.507..276.681 rows=432 loops=30)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1327 read=5781
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=0.337..0.337 rows=0 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '9.0'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=42112 read=5197
               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.01 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=298)
                     Index Cond: (id = mi_idx.info_type_id)
                     Filter: ((info)::text = 'rating'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=596
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=27.757..27.757 rows=0 loops=21)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=44 read=40
 Planning Time: 2387.664 ms
 Execution Time: 13765.813 ms
(35 rows)

