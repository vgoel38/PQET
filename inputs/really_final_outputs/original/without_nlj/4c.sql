                                                                            QUERY PLAN                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=3741.73..3741.73 rows=1 width=64) (actual time=3962.705..3962.705 rows=1 loops=1)
   Buffers: shared hit=12 read=69846
   ->  Hash Join  (cost=2037.77..3741.73 rows=26 width=23) (actual time=1913.562..3947.152 rows=4700 loops=1)
         Hash Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=12 read=69846
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=38.280..1664.107 rows=1749032 loops=1)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 779280
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2037.77..2037.77 rows=37 width=14) (actual time=1866.536..1866.536 rows=8092 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 412kB
               Buffers: shared hit=8 read=33849
               ->  Hash Join  (cost=588.86..2037.77 rows=37 width=14) (actual time=707.893..1863.723 rows=8092 loops=1)
                     Hash Cond: (mk.movie_id = mi_idx.movie_id)
                     Buffers: shared hit=8 read=33849
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=88.700..1237.617 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..538.936 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=88.311..88.311 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=28.333..88.263 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Hash  (cost=538.28..538.28 rows=7570 width=10) (actual time=619.138..619.138 rows=448969 loops=1)
                           Buckets: 524288 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 21634kB
                           Buffers: shared hit=3 read=8451
                           ->  Hash Join  (cost=0.05..538.28 rows=7570 width=10) (actual time=0.060..507.972 rows=448969 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=3 read=8451
                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=855391 width=14) (actual time=0.010..337.815 rows=855412 loops=1)
                                       Filter: (info > '2.0'::text)
                                       Rows Removed by Filter: 524623
                                       Buffers: shared hit=2 read=8451
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.032..0.033 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.026..0.028 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
 Planning Time: 2370.033 ms
 Execution Time: 3983.495 ms
(46 rows)

