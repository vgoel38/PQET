                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9447.55..9447.55 rows=1 width=64) (actual time=23685.033..23685.033 rows=1 loops=1)
   Buffers: shared hit=199590 read=19840
   ->  Nested Loop  (cost=0.06..9447.55 rows=26 width=23) (actual time=63.448..23664.524 rows=4700 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=199590 read=19840
         ->  Nested Loop  (cost=0.04..9445.96 rows=37 width=14) (actual time=46.954..11069.623 rows=8092 loops=1)
               Join Filter: (mi_idx.info_type_id = it.id)
               Rows Removed by Join Filter: 6809
               Buffers: shared hit=174617 read=12411
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.043..0.044 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=0.04..9439.22 rows=4212 width=18) (actual time=46.906..11060.346 rows=14901 loops=1)
                     Buffers: shared hit=174616 read=12410
                     ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=46.750..6439.836 rows=12951 loops=1)
                           Buffers: shared hit=132504 read=7213
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=20.669..460.462 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared hit=131177 read=1432
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=10.350..199.019 rows=432 loops=30)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1327 read=5781
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=2 width=14) (actual time=0.350..0.355 rows=1 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '2.0'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=42112 read=5197
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.554..1.554 rows=1 loops=8092)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 0
               Buffers: shared hit=24973 read=7429
 Planning Time: 2289.706 ms
 Execution Time: 23727.334 ms
(35 rows)

