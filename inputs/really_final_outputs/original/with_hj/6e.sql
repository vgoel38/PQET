                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18900.10..18900.10 rows=1 width=96) (actual time=17982.169..17982.169 rows=1 loops=1)
   Buffers: shared hit=3 read=368723
   ->  Hash Join  (cost=5514.00..18900.10 rows=1 width=48) (actual time=6784.196..17982.152 rows=6 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=3 read=368723
         ->  Hash Join  (cost=3810.97..17197.07 rows=1 width=39) (actual time=4926.666..16124.619 rows=6 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared read=332725
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3574.931..14772.848 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=9.114..6647.690 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2601.863..2601.863 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=274.383..2601.842 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1351.684..1351.684 rows=14 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=24458
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=92.926..1351.642 rows=14 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=24458
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=10.019..706.458 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.854..44.854 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.836..44.840 rows=1 loops=1)
                                       Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1842.930..1842.930 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared read=35998
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=23.716..1266.914 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared read=35998
 Planning Time: 2259.714 ms
 Execution Time: 17998.163 ms
(43 rows)

