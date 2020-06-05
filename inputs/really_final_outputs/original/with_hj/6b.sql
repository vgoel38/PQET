                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18550.05..18550.05 rows=1 width=96) (actual time=16852.998..16852.998 rows=1 loops=1)
   Buffers: shared hit=21 read=333177
   ->  Hash Join  (cost=5164.06..18550.05 rows=1 width=48) (actual time=5866.845..16852.975 rows=12 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=21 read=333177
         ->  Hash Join  (cost=3666.32..17052.30 rows=1 width=40) (actual time=4582.478..15568.650 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=3 read=308703
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3804.386..14790.502 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=46.913..6391.869 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2793.471..2793.471 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=315.969..2793.450 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=778.047..778.047 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=52.204..776.251 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=1497.70..1497.70 rows=270 width=20) (actual time=1284.298..1284.298 rows=35548 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
               Buffers: shared hit=15 read=24474
               ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=129.965..1273.691 rows=35548 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=15 read=24474
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=33.530..569.747 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.863..95.863 rows=8 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.604..95.797 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
 Planning Time: 2190.660 ms
 Execution Time: 16853.538 ms
(42 rows)

