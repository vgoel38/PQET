                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18900.10..18900.10 rows=1 width=96) (actual time=17966.165..17966.165 rows=1 loops=1)
   Buffers: shared hit=12 read=368714
   ->  Hash Join  (cost=5514.00..18900.10 rows=1 width=48) (actual time=6750.987..17966.134 rows=6 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=12 read=368714
         ->  Hash Join  (cost=3810.97..17197.07 rows=1 width=39) (actual time=4893.807..16108.949 rows=6 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared hit=8 read=332717
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3566.722..14781.834 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.007..6532.087 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2603.160..2603.160 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=274.787..2603.140 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1327.031..1327.031 rows=14 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=3 read=24455
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=72.545..1326.997 rows=14 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=3 read=24455
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.008..664.221 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=38.590..38.590 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=38.569..38.573 rows=1 loops=1)
                                       Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1843.209..1843.209 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=24.364..1259.432 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared hit=1 read=35997
 Planning Time: 2557.345 ms
 Execution Time: 17984.449 ms
(43 rows)

