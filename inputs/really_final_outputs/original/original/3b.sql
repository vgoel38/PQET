                                                                     QUERY PLAN                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1648.06..1648.06 rows=1 width=32) (actual time=40594.474..40594.474 rows=1 loops=1)
   Buffers: shared hit=44652 read=38844
   ->  Nested Loop  (cost=49.50..1648.06 rows=2 width=17) (actual time=6071.641..40594.425 rows=5 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=44652 read=38844
         ->  Nested Loop  (cost=49.48..1594.48 rows=350 width=25) (actual time=1406.428..19242.475 rows=405 loops=1)
               Buffers: shared hit=42186 read=35097
               ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=79.125..2790.598 rows=12951 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=8 read=25398
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.014..1468.319 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=78.795..78.795 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared hit=2 read=947
                           ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=19.128..78.754 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared hit=2 read=947
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.269..1.269 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42178 read=9699
         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=52.510..52.718 rows=0 loops=405)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 63
               Buffers: shared hit=2466 read=3747
 Planning Time: 2069.084 ms
 Execution Time: 40613.185 ms
(31 rows)

