                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4663.97..4663.97 rows=1 width=96) (actual time=4457.446..4457.446 rows=1 loops=1)
   Buffers: shared hit=36001 read=60620
   ->  Hash Join  (cost=3065.56..4663.97 rows=2 width=46) (actual time=3829.649..4447.120 rows=4388 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=36001 read=60620
         ->  Hash Join  (cost=3065.53..4663.94 rows=2 width=38) (actual time=3829.379..4445.520 rows=4388 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=35998 read=60619
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.269..222.743 rows=2528312 loops=1)
                     Buffers: shared hit=35997 read=1
               ->  Hash  (cost=3065.53..3065.53 rows=2 width=25) (actual time=3808.000..3808.001 rows=4388 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 314kB
                     Buffers: shared hit=1 read=60618
                     ->  Hash Join  (cost=1467.12..3065.53 rows=2 width=25) (actual time=1841.855..3805.806 rows=4388 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=1 read=60618
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.010..1352.704 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=1467.12..1467.12 rows=2 width=16) (actual time=1837.768..1837.768 rows=4388 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 270kB
                                 Buffers: shared read=24621
                                 ->  Hash Join  (cost=17.72..1467.12 rows=2 width=16) (actual time=139.577..1836.028 rows=4388 loops=1)
                                       Hash Cond: (mk.movie_id = ml.movie_id)
                                       Buffers: shared read=24621
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=76.170..1782.474 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=21.049..1037.652 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=54.968..54.969 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=54.953..54.956 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=7.19..7.19 rows=29997 width=12) (actual time=41.021..41.022 rows=29997 loops=1)
                                             Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                             Buffers: shared read=163
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.209..25.272 rows=29997 loops=1)
                                                   Buffers: shared read=163
         ->  Hash  (cost=0.03..0.03 rows=18 width=16) (actual time=0.207..0.207 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.173..0.184 rows=18 loops=1)
                     Buffers: shared read=1
 Planning Time: 1118.707 ms
 Execution Time: 4479.318 ms
(47 rows)

