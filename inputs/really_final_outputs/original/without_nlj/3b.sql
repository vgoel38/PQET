                                                                       QUERY PLAN                                                                        
---------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10312.06..10312.06 rows=1 width=32) (actual time=11505.013..11505.014 rows=1 loops=1)
   Buffers: shared hit=11 read=223285
   ->  Hash Join  (cost=3056.10..10312.06 rows=2 width=17) (actual time=3695.842..11504.937 rows=5 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=11 read=223285
         ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=2428 width=4) (actual time=355.832..8300.404 rows=2287 loops=1)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 14833433
               Buffers: shared hit=2 read=161890
         ->  Hash  (cost=3056.05..3056.05 rows=350 width=25) (actual time=3203.333..3203.333 rows=405 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 35kB
               Buffers: shared hit=6 read=61395
               ->  Hash Join  (cost=1607.22..3056.05 rows=350 width=25) (actual time=1983.153..3203.031 rows=405 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared hit=6 read=61395
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=112.084..1395.513 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..682.246 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=87.322..87.322 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=26.610..87.269 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1799.796..1799.796 rows=391666 loops=1)
                           Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                           Buffers: shared hit=1 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=8.779..1566.231 rows=391666 loops=1)
                                 Filter: (production_year > 2010)
                                 Rows Removed by Filter: 2136646
                                 Buffers: shared hit=1 read=35997
 Planning Time: 2088.645 ms
 Execution Time: 11540.624 ms
(36 rows)

