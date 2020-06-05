                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18507.09..18507.09 rows=1 width=96) (actual time=16816.892..16816.893 rows=1 loops=1)
   Buffers: shared hit=6 read=333161
   ->  Hash Join  (cost=5121.10..18507.09 rows=1 width=48) (actual time=5816.244..16816.875 rows=2 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=6 read=333161
         ->  Hash Join  (cost=3666.32..17052.30 rows=1 width=40) (actual time=4590.114..15590.800 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=3 read=308703
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3769.653..14770.270 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=46.919..6368.478 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2751.715..2751.716 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=426.440..2751.685 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=820.413..820.414 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=52.912..818.619 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1226.010..1226.010 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=24458
               ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=109.855..1225.975 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared read=24458
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=25.942..579.621 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.852..44.852 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.836..44.839 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2229.548 ms
 Execution Time: 16827.716 ms
(42 rows)

