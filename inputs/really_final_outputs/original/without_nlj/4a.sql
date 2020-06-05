                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3628.05..3628.05 rows=1 width=64) (actual time=3846.185..3846.185 rows=1 loops=1)
   Buffers: shared hit=12 read=69846
   ->  Hash Join  (cost=2009.83..3628.05 rows=9 width=23) (actual time=2229.960..3833.574 rows=740 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=12 read=69846
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=38.305..1688.708 rows=1012920 loops=1)
               Filter: (production_year > 2005)
               Rows Removed by Filter: 1515392
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2009.82..2009.82 rows=23 width=14) (actual time=1877.496..1877.497 rows=5820 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 315kB
               Buffers: shared hit=8 read=33849
               ->  Hash Join  (cost=560.92..2009.82 rows=23 width=14) (actual time=715.978..1875.073 rows=5820 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared hit=8 read=33849
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=88.105..1241.261 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..537.086 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=87.852..87.852 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=28.312..87.812 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=510.77..510.77 rows=4617 width=10) (actual time=627.832..627.832 rows=352990 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 17885kB
                           Buffers: shared hit=3 read=8451
                           ->  Hash Join  (cost=0.05..510.77 rows=4617 width=10) (actual time=0.038..530.249 rows=352990 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=3 read=8451
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=521708 width=14) (actual time=0.008..402.707 rows=521723 loops=1)
                                       Filter: (info > '5.0'::text)
                                       Rows Removed by Filter: 858312
                                       Buffers: shared hit=2 read=8451
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
 Planning Time: 2280.977 ms
 Execution Time: 3872.525 ms
(46 rows)

