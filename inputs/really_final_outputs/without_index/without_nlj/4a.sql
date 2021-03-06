                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3628.05..3628.05 rows=1 width=64) (actual time=4137.730..4137.730 rows=1 loops=1)
   Buffers: shared hit=12 read=69846
   ->  Hash Join  (cost=2009.83..3628.05 rows=9 width=23) (actual time=2677.831..4125.104 rows=740 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=12 read=69846
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=21) (actual time=30.334..1820.467 rows=1012920 loops=1)
               Filter: (production_year > 2005)
               Rows Removed by Filter: 1515392
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2009.82..2009.82 rows=23 width=14) (actual time=2037.815..2037.815 rows=5820 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 315kB
               Buffers: shared hit=8 read=33849
               ->  Hash Join  (cost=560.92..2009.82 rows=23 width=14) (actual time=880.926..2035.683 rows=5820 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared hit=8 read=33849
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=88.475..1237.323 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..540.342 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=88.168..88.169 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=28.205..88.126 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=510.77..510.77 rows=4617 width=10) (actual time=792.416..792.416 rows=352990 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 17885kB
                           Buffers: shared hit=3 read=8451
                           ->  Hash Join  (cost=0.05..510.77 rows=4617 width=10) (actual time=0.042..693.391 rows=352990 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=3 read=8451
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=521708 width=14) (actual time=0.008..560.679 rows=521723 loops=1)
                                       Filter: (info > '5.0'::text)
                                       Rows Removed by Filter: 858312
                                       Buffers: shared hit=2 read=8451
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
 Planning Time: 2181.689 ms
 Execution Time: 4138.219 ms
(46 rows)

