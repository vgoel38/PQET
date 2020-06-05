                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6939.62..6939.62 rows=1 width=192) (actual time=5847.521..5847.521 rows=1 loops=1)
   Buffers: shared hit=66239 read=66400
   ->  Hash Join  (cost=5866.00..6939.62 rows=1 width=84) (actual time=5357.585..5847.425 rows=114 loops=1)
         Hash Cond: (mc1.company_id = cn1.id)
         Buffers: shared hit=66239 read=66400
         ->  Hash Join  (cost=5719.07..6792.68 rows=1 width=69) (actual time=5208.487..5698.277 rows=131 loops=1)
               Hash Cond: (mc1.movie_id = t1.id)
               Buffers: shared hit=66236 read=63406
               ->  Seq Scan on movie_companies mc1  (cost=0.00..769.75 rows=2609129 width=8) (actual time=2.701..179.435 rows=2609129 loops=1)
                     Buffers: shared hit=18788 read=1
               ->  Hash  (cost=5719.07..5719.07 rows=1 width=77) (actual time=5204.328..5204.328 rows=44 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 14kB
                     Buffers: shared hit=47448 read=63405
                     ->  Hash Join  (cost=4645.46..5719.07 rows=1 width=77) (actual time=4323.447..5204.262 rows=44 loops=1)
                           Hash Cond: (t1.kind_id = kt1.id)
                           Buffers: shared hit=47448 read=63405
                           ->  Hash Join  (cost=4645.42..5719.04 rows=1 width=81) (actual time=4298.568..5179.339 rows=44 loops=1)
                                 Hash Cond: (mi_idx2.info_type_id = it2.id)
                                 Buffers: shared hit=47448 read=63404
                                 ->  Hash Join  (cost=4645.37..5718.99 rows=1 width=85) (actual time=4290.307..5176.986 rows=4314 loops=1)
                                       Hash Cond: (mc2.company_id = cn2.id)
                                       Buffers: shared hit=47448 read=63403
                                       ->  Hash Join  (cost=4500.72..5574.33 rows=1 width=70) (actual time=4173.352..5057.819 rows=4314 loops=1)
                                             Hash Cond: (mc2.movie_id = t2.id)
                                             Buffers: shared hit=44454 read=63403
                                             ->  Seq Scan on movie_companies mc2  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.005..476.614 rows=2609129 loops=1)
                                                   Buffers: shared hit=1 read=18788
                                             ->  Hash  (cost=4500.72..4500.72 rows=1 width=78) (actual time=4148.160..4148.160 rows=1064 loops=1)
                                                   Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 141kB
                                                   Buffers: shared hit=44453 read=44615
                                                   ->  Hash Join  (cost=3937.62..4500.72 rows=1 width=78) (actual time=3594.629..4147.660 rows=1064 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=44453 read=44615
                                                         ->  Hash Join  (cost=3937.59..4500.68 rows=5 width=82) (actual time=3589.013..4141.229 rows=6197 loops=1)
                                                               Hash Cond: (t2.id = ml.linked_movie_id)
                                                               Buffers: shared hit=44453 read=44614
                                                               ->  Hash Join  (cost=1849.65..2403.05 rows=83264 width=35) (actual time=1755.201..2290.101 rows=117893 loops=1)
                                                                     Hash Cond: (t2.kind_id = kt2.id)
                                                                     Buffers: shared hit=8453 read=35999
                                                                     ->  Hash Join  (cost=1849.62..2374.93 rows=291424 width=39) (actual time=1755.139..2242.576 rows=292942 loops=1)
                                                                           Hash Cond: (mi_idx2.movie_id = t2.id)
                                                                           Buffers: shared hit=8452 read=35999
                                                                           ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=706570 width=14) (actual time=11.500..274.344 rows=706560 loops=1)
                                                                                 Filter: (info < '3.5'::text)
                                                                                 Rows Removed by Filter: 673475
                                                                                 Buffers: shared hit=8452 read=1
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=1042800 width=25) (actual time=1735.651..1735.652 rows=1042800 loops=1)
                                                                                 Buckets: 1048576  Batches: 1  Memory Usage: 67925kB
                                                                                 Buffers: shared read=35998
                                                                                 ->  Seq Scan on title t2  (cost=0.00..1696.56 rows=1042800 width=25) (actual time=26.674..1252.352 rows=1042800 loops=1)
                                                                                       Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                       Rows Removed by Filter: 1485512
                                                                                       Buffers: shared read=35998
                                                                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.026..0.026 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=2 width=4) (actual time=0.014..0.018 rows=2 loops=1)
                                                                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                                                 Rows Removed by Filter: 5
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=2087.91..2087.91 rows=145 width=47) (actual time=1833.393..1833.393 rows=20890 loops=1)
                                                                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1927kB
                                                                     Buffers: shared hit=36000 read=8615
                                                                     ->  Hash Join  (cost=2077.22..2087.91 rows=145 width=47) (actual time=1807.228..1826.238 rows=20890 loops=1)
                                                                           Hash Cond: (ml.movie_id = t1.id)
                                                                           Buffers: shared hit=36000 read=8615
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=20.081..28.319 rows=29997 loops=1)
                                                                                 Buffers: shared read=163
                                                                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=35) (actual time=1787.048..1787.048 rows=459925 loops=1)
                                                                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 34856kB
                                                                                 Buffers: shared hit=36000 read=8452
                                                                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=35) (actual time=638.805..1635.310 rows=459925 loops=1)
                                                                                       Hash Cond: (t1.id = mi_idx1.movie_id)
                                                                                       Buffers: shared hit=36000 read=8452
                                                                                       ->  Seq Scan on title t1  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=0.007..198.878 rows=2528312 loops=1)
                                                                                             Buffers: shared hit=35998
                                                                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=638.694..638.694 rows=459925 loops=1)
                                                                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                                                             Buffers: shared hit=2 read=8452
                                                                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.067..515.442 rows=459925 loops=1)
                                                                                                   Hash Cond: (mi_idx1.info_type_id = it1.id)
                                                                                                   Buffers: shared hit=2 read=8452
                                                                                                   ->  Seq Scan on movie_info_idx mi_idx1  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.007..221.564 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=1 read=8452
                                                                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.030..0.034 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'rating'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=5.585..5.585 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=5.549..5.563 rows=2 loops=1)
                                                                     Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared read=1
                                       ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=115.805..115.805 rows=234997 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                             Buffers: shared hit=2994
                                             ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=0.015..49.412 rows=234997 loops=1)
                                                   Buffers: shared hit=2994
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=1.577..1.577 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=1.559..1.566 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=24.846..24.847 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=2 width=4) (actual time=24.822..24.827 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                       Rows Removed by Filter: 5
                                       Buffers: shared read=1
         ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=148.746..148.746 rows=126230 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 7967kB
               Buffers: shared read=2994
               ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=126230 width=23) (actual time=13.116..106.120 rows=126230 loops=1)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 108767
                     Buffers: shared read=2994
 Planning Time: 5972.501 ms
 Execution Time: 5850.541 ms
(126 rows)

