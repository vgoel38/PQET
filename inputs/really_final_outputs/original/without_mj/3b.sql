                                                                     QUERY PLAN                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1648.06..1648.06 rows=1 width=32) (actual time=37797.116..37797.116 rows=1 loops=1)
   Buffers: shared hit=44643 read=38853
   ->  Nested Loop  (cost=49.50..1648.06 rows=2 width=17) (actual time=5890.575..37797.076 rows=5 loops=1)
         Join Filter: (t.id = mi.movie_id)
         Buffers: shared hit=44643 read=38853
         ->  Nested Loop  (cost=49.48..1594.48 rows=350 width=25) (actual time=1403.861..18724.404 rows=405 loops=1)
               Buffers: shared hit=42179 read=35104
               ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=117.701..2957.643 rows=12951 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=3 read=25403
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=26.026..1590.997 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=91.412..91.412 rows=30 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 10kB
                           Buffers: shared read=949
                           ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.484..91.373 rows=30 loops=1)
                                 Filter: (keyword ~~ '%sequel%'::text)
                                 Rows Removed by Filter: 134140
                                 Buffers: shared read=949
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.216..1.216 rows=0 loops=12951)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=42176 read=9701
         ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=46.902..47.090 rows=0 loops=405)
               Index Cond: (movie_id = mk.movie_id)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 63
               Buffers: shared hit=2464 read=3749
 Planning Time: 1811.338 ms
 Execution Time: 37817.818 ms
(31 rows)

