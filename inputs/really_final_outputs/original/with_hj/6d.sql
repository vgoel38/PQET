                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18943.06..18943.06 rows=1 width=96) (actual time=18016.450..18016.450 rows=1 loops=1)
   Buffers: shared hit=18 read=368739
   ->  Hash Join  (cost=5556.96..18943.06 rows=1 width=48) (actual time=6938.802..18016.386 rows=88 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=18 read=368739
         ->  Hash Join  (cost=3853.93..17240.03 rows=1 width=39) (actual time=5021.826..16099.368 rows=112 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared hit=15 read=332741
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3615.645..14693.007 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=7.921..6445.922 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2643.906..2643.906 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=274.415..2643.885 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=1497.70..1497.70 rows=270 width=20) (actual time=1406.153..1406.153 rows=35548 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
                     Buffers: shared hit=15 read=24474
                     ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=101.311..1394.993 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=15 read=24474
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.969..681.109 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.843..95.843 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=15 read=20
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.592..95.796 rows=8 loops=1)
                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Buffers: shared hit=15 read=20
         ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1911.919..1911.919 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared read=35998
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=20.984..1323.593 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared read=35998
 Planning Time: 2252.387 ms
 Execution Time: 18018.698 ms
(43 rows)

