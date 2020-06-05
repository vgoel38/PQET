                                                                          QUERY PLAN                                                                           
---------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3512.66..3512.66 rows=1 width=64) (actual time=3795.782..3795.782 rows=1 loops=1)
   Buffers: shared hit=3 read=69855
   ->  Hash Join  (cost=1966.79..3512.66 rows=1 width=23) (actual time=3316.891..3795.738 rows=6 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=3 read=69855
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=21.670..1820.601 rows=391666 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2136646
               Buffers: shared read=35998
         ->  Hash  (cost=1966.79..1966.79 rows=1 width=14) (actual time=1879.356..1879.356 rows=21 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=33857
               ->  Hash Join  (cost=517.88..1966.79 rows=1 width=14) (actual time=1011.261..1879.312 rows=21 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared read=33857
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=96.091..1250.768 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.234..546.089 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=91.611..91.611 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.535..91.575 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=468.40..468.40 rows=69 width=10) (actual time=626.541..626.541 rows=305 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 20kB
                           Buffers: shared read=8454
                           ->  Hash Join  (cost=0.05..468.40 rows=69 width=10) (actual time=36.310..626.273 rows=305 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared read=8454
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=7778 width=14) (actual time=11.113..616.793 rows=7793 loops=1)
                                       Filter: (info > '9.0'::text)
                                       Rows Removed by Filter: 1372242
                                       Buffers: shared read=8453
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.210..7.210 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.183..7.190 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
 Planning Time: 1888.695 ms
 Execution Time: 3822.456 ms
(46 rows)

