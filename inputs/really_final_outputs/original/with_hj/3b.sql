                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10312.06..10312.06 rows=1 width=32) (actual time=11537.777..11537.777 rows=1 loops=1)
   Buffers: shared hit=3 read=223293
   ->  Hash Join  (cost=3056.10..10312.06 rows=2 width=17) (actual time=3736.090..11537.741 rows=5 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=3 read=223293
         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=2428 width=4) (actual time=355.908..8294.924 rows=2287 loops=1)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 14833433
               Buffers: shared read=161892
         ->  Hash  (cost=3056.05..3056.05 rows=350 width=25) (actual time=3241.626..3241.626 rows=405 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared read=61401
               ->  Hash Join  (cost=1607.22..3056.05 rows=350 width=25) (actual time=2003.755..3241.308 rows=405 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared read=61401
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=95.332..1500.468 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=3.343..778.876 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=91.715..91.715 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=32.297..91.666 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1734.216..1734.216 rows=391666 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=26.730..1496.129 rows=391666 loops=1)
                                 Filter: (production_year > 2010)
                                 Rows Removed by Filter: 2136646
                                 Buffers: shared read=35998
 Planning Time: 2037.231 ms
 Execution Time: 11566.380 ms
(36 rows)

