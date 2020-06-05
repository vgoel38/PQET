                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6939.62..6939.62 rows=1 width=192) (actual time=5767.396..5767.397 rows=1 loops=1)
   Buffers: shared hit=66254 read=66385
   ->  Hash Join  (cost=5866.00..6939.62 rows=1 width=84) (actual time=5282.239..5767.263 rows=114 loops=1)
         Hash Cond: (mc.company_id = cn1.id)
         Buffers: shared hit=66254 read=66385
         ->  Hash Join  (cost=5719.07..6792.68 rows=1 width=69) (actual time=5125.532..5610.505 rows=131 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=66249 read=63393
               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..175.217 rows=2609129 loops=1)
                     Buffers: shared hit=18789
               ->  Hash  (cost=5719.07..5719.07 rows=1 width=77) (actual time=5124.100..5124.100 rows=44 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 14kB
                     Buffers: shared hit=47460 read=63393
                     ->  Hash Join  (cost=4645.46..5719.07 rows=1 width=77) (actual time=4243.041..5124.029 rows=44 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=47460 read=63393
                           ->  Hash Join  (cost=4645.42..5719.04 rows=1 width=81) (actual time=4243.012..5123.959 rows=44 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=47459 read=63393
                                 ->  Hash Join  (cost=4645.37..5718.99 rows=1 width=85) (actual time=4236.343..5123.274 rows=4314 loops=1)
                                       Hash Cond: (mc.company_id = cn2.id)
                                       Buffers: shared hit=47458 read=63393
                                       ->  Hash Join  (cost=4500.72..5574.33 rows=1 width=70) (actual time=4136.390..5021.323 rows=4314 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=44464 read=63393
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..492.912 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=4500.72..4500.72 rows=1 width=78) (actual time=4116.779..4116.779 rows=1064 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 141kB
                                                   Buffers: shared hit=44461 read=44607
                                                   ->  Hash Join  (cost=3937.62..4500.72 rows=1 width=78) (actual time=3548.926..4116.271 rows=1064 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=44461 read=44607
                                                         ->  Hash Join  (cost=3937.59..4500.68 rows=5 width=82) (actual time=3548.879..4115.404 rows=6197 loops=1)
                                                               Hash Cond: (t.id = ml.linked_movie_id)
                                                               Buffers: shared hit=44460 read=44607
                                                               ->  Hash Join  (cost=1849.65..2403.05 rows=83264 width=35) (actual time=1722.893..2272.361 rows=117893 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=8455 read=35997
                                                                     ->  Hash Join  (cost=1849.62..2374.93 rows=291424 width=39) (actual time=1722.870..2224.718 rows=292942 loops=1)
                                                                           Hash Cond: (mi_idx.movie_id = t.id)
                                                                           Buffers: shared hit=8454 read=35997
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=706570 width=14) (actual time=0.007..277.366 rows=706560 loops=1)
                                                                                 Filter: (info < '3.5'::text)
                                                                                 Rows Removed by Filter: 673475
                                                                                 Buffers: shared hit=8453
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=1042800 width=25) (actual time=1720.339..1720.339 rows=1042800 loops=1)
                                                                                 Buckets: 1048576  Batches: 1  Memory Usage: 67925kB
                                                                                 Buffers: shared hit=1 read=35997
                                                                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=25) (actual time=3.934..1228.567 rows=1042800 loops=1)
                                                                                       Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                       Rows Removed by Filter: 1485512
                                                                                       Buffers: shared hit=1 read=35997
                                                                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.009..0.009 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.005..0.006 rows=2 loops=1)
                                                                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                                                 Rows Removed by Filter: 5
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=2087.91..2087.91 rows=145 width=47) (actual time=1825.503..1825.503 rows=20890 loops=1)
                                                                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1927kB
                                                                     Buffers: shared hit=36005 read=8610
                                                                     ->  Hash Join  (cost=2077.22..2087.91 rows=145 width=47) (actual time=1778.391..1812.363 rows=20890 loops=1)
                                                                           Hash Cond: (ml.movie_id = t.id)
                                                                           Buffers: shared hit=36005 read=8610
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.015..14.889 rows=29997 loops=1)
                                                                                 Buffers: shared hit=4 read=159
                                                                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=35) (actual time=1778.239..1778.239 rows=459925 loops=1)
                                                                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 34856kB
                                                                                 Buffers: shared hit=36001 read=8451
                                                                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=35) (actual time=632.748..1624.939 rows=459925 loops=1)
                                                                                       Hash Cond: (t.id = mi_idx.movie_id)
                                                                                       Buffers: shared hit=36001 read=8451
                                                                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=0.004..202.153 rows=2528312 loops=1)
                                                                                             Buffers: shared hit=35998
                                                                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=632.691..632.691 rows=459925 loops=1)
                                                                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                                                             Buffers: shared hit=3 read=8451
                                                                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.035..510.958 rows=459925 loops=1)
                                                                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                                                                   Buffers: shared hit=3 read=8451
                                                                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.004..217.803 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=2 read=8451
                                                                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'rating'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.015..0.015 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.008..0.012 rows=2 loops=1)
                                                                     Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=99.327..99.327 rows=234997 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                             Buffers: shared hit=2994
                                             ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=0.004..42.859 rows=234997 loops=1)
                                                   Buffers: shared hit=2994
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.014..0.014 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.010..0.011 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                       Rows Removed by Filter: 5
                                       Buffers: shared hit=1
         ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=155.666..155.666 rows=126230 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=126230 width=23) (actual time=20.257..110.509 rows=126230 loops=1)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 108767
                     Buffers: shared hit=2 read=2992
 Planning Time: 6394.733 ms
 Execution Time: 5790.155 ms
(126 rows)

