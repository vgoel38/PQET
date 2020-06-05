                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4663.97..4663.97 rows=1 width=96) (actual time=1297.794..1297.794 rows=1 loops=1)
   Buffers: shared hit=4 read=24623
   ->  Hash Join  (cost=3065.56..4663.97 rows=2 width=46) (actual time=1297.788..1297.788 rows=0 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=4 read=24623
         ->  Hash Join  (cost=3065.53..4663.94 rows=2 width=38) (actual time=1297.518..1297.518 rows=0 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=1 read=24622
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.364..21.364 rows=1 loops=1)
                     Buffers: shared read=1
               ->  Hash  (cost=3065.53..3065.53 rows=2 width=25) (actual time=1276.117..1276.118 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=1 read=24621
                     ->  Hash Join  (cost=1467.12..3065.53 rows=2 width=25) (actual time=1276.117..1276.117 rows=0 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=1 read=24621
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.010..0.010 rows=1 loops=1)
                                 Buffers: shared hit=1
                           ->  Hash  (cost=1467.12..1467.12 rows=2 width=16) (actual time=1276.072..1276.072 rows=0 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 8kB
                                 Buffers: shared read=24621
                                 ->  Hash Join  (cost=17.72..1467.12 rows=2 width=16) (actual time=1276.071..1276.071 rows=0 loops=1)
                                       Hash Cond: (mk.movie_id = ml.movie_id)
                                       Buffers: shared read=24621
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=1131.478..1222.603 rows=1 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.284..580.462 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=27.928..27.929 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=27.915..27.917 rows=1 loops=1)
                                                         Index Cond: (keyword = '10,000-mile-club'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=7.19..7.19 rows=29997 width=12) (actual time=53.367..53.367 rows=29997 loops=1)
                                             Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                             Buffers: shared read=163
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=22.484..37.133 rows=29997 loops=1)
                                                   Buffers: shared read=163
         ->  Hash  (cost=0.03..0.03 rows=18 width=16) (actual time=0.211..0.211 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.172..0.183 rows=18 loops=1)
                     Buffers: shared read=1
 Planning Time: 994.073 ms
 Execution Time: 1310.985 ms
(47 rows)

