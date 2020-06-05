                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3628.05..3628.05 rows=1 width=64) (actual time=3853.856..3853.856 rows=1 loops=1)
   Buffers: shared hit=3 read=69855
   ->  Hash Join  (cost=2009.83..3628.05 rows=9 width=23) (actual time=2316.966..3841.803 rows=740 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=3 read=69855
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=21.450..1674.631 rows=1012920 loops=1)
               Filter: (production_year > 2005)
               Rows Removed by Filter: 1515392
               Buffers: shared read=35998
         ->  Hash  (cost=2009.82..2009.82 rows=23 width=14) (actual time=1897.776..1897.776 rows=5820 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 315kB
               Buffers: shared read=33857
               ->  Hash Join  (cost=560.92..2009.82 rows=23 width=14) (actual time=733.670..1895.658 rows=5820 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared read=33857
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=96.888..1252.902 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.257..537.045 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=92.321..92.321 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=31.645..92.280 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Hash  (cost=510.77..510.77 rows=4617 width=10) (actual time=636.745..636.745 rows=352990 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 17885kB
                           Buffers: shared read=8454
                           ->  Hash Join  (cost=0.05..510.77 rows=4617 width=10) (actual time=17.528..540.158 rows=352990 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared read=8454
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=521708 width=14) (actual time=9.960..402.485 rows=521723 loops=1)
                                       Filter: (info > '5.0'::text)
                                       Rows Removed by Filter: 858312
                                       Buffers: shared read=8453
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=7.489..7.489 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=7.470..7.476 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
 Planning Time: 1906.775 ms
 Execution Time: 3855.071 ms
(46 rows)

