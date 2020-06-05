                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=9538.37..9538.37 rows=1 width=32) (actual time=42501.431..42501.432 rows=1 loops=1)
   Buffers: shared hit=177148 read=20659
   ->  Nested Loop  (cost=0.05..9538.37 rows=2 width=17) (actual time=5551.077..42501.369 rows=5 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=177148 read=20659
         ->  Nested Loop  (cost=0.04..9484.79 rows=350 width=25) (actual time=1237.172..22460.246 rows=405 loops=1)
               Buffers: shared hit=174682 read=16912
               ->  Nested Loop  (cost=0.03..9388.42 rows=2259 width=4) (actual time=55.128..6150.429 rows=12951 loops=1)
                     Buffers: shared hit=132504 read=7213
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=29.139..539.106 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..116.37 rows=39 width=8) (actual time=11.667..186.665 rows=432 loops=30)
                           Index Cond: (keyword_id = k.id)
                           Buffers: shared hit=1327 read=5781
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.257..1.257 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42178 read=9699
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=49.264..49.481 rows=0 loops=405)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 63
               Buffers: shared hit=2466 read=3747
 Planning Time: 2134.033 ms
 Execution Time: 42524.454 ms
(28 rows)

