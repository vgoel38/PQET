                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6817.32..6817.32 rows=1 width=192) (actual time=5653.065..5653.065 rows=1 loops=1)
   Buffers: shared hit=66254 read=66385
   ->  Hash Join  (cost=5743.71..6817.32 rows=1 width=84) (actual time=5155.476..5653.016 rows=8 loops=1)
         Hash Cond: (mc1.company_id = cn1.id)
         Buffers: shared hit=66254 read=66385
         ->  Hash Join  (cost=5602.85..6676.46 rows=1 width=69) (actual time=4996.711..5494.244 rows=28 loops=1)
               Hash Cond: (mc1.movie_id = t1.id)
               Buffers: shared hit=66249 read=63393
               ->  Seq Scan on movie_companies mc1  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..181.598 rows=2609129 loops=1)
                     Buffers: shared hit=18789
               ->  Hash  (cost=5602.85..5602.85 rows=1 width=77) (actual time=4992.564..4992.564 rows=10 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=47460 read=63393
                     ->  Hash Join  (cost=4529.23..5602.85 rows=1 width=77) (actual time=4108.802..4992.521 rows=10 loops=1)
                           Hash Cond: (t1.kind_id = kt1.id)
                           Buffers: shared hit=47460 read=63393
                           ->  Hash Join  (cost=4529.20..5602.82 rows=1 width=81) (actual time=4108.760..4992.461 rows=10 loops=1)
                                 Hash Cond: (mi_idx2.info_type_id = it2.id)
                                 Buffers: shared hit=47459 read=63393
                                 ->  Hash Join  (cost=4529.15..5602.77 rows=1 width=85) (actual time=4102.073..4992.267 rows=407 loops=1)
                                       Hash Cond: (mc2.company_id = cn2.id)
                                       Buffers: shared hit=47458 read=63393
                                       ->  Hash Join  (cost=4384.50..5458.11 rows=1 width=70) (actual time=3997.583..4887.376 rows=407 loops=1)
                                             Hash Cond: (mc2.movie_id = t2.id)
                                             Buffers: shared hit=44464 read=63393
                                             ->  Seq Scan on movie_companies mc2  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..520.273 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=4384.50..4384.50 rows=1 width=78) (actual time=3973.198..3973.198 rows=95 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 20kB
                                                   Buffers: shared hit=44461 read=44607
                                                   ->  Hash Join  (cost=3850.00..4384.50 rows=1 width=78) (actual time=3534.944..3973.133 rows=95 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=44461 read=44607
                                                         ->  Hash Join  (cost=3849.97..4384.46 rows=1 width=82) (actual time=3534.906..3972.964 rows=1004 loops=1)
                                                               Hash Cond: (t2.id = ml.linked_movie_id)
                                                               Buffers: shared hit=44460 read=44607
                                                               ->  Hash Join  (cost=1762.03..2294.60 rows=16584 width=35) (actual time=1716.824..2153.306 rows=11319 loops=1)
                                                                     Hash Cond: (t2.kind_id = kt2.id)
                                                                     Buffers: shared hit=8455 read=35997
                                                                     ->  Hash Join  (cost=1762.00..2283.38 rows=116091 width=39) (actual time=1716.804..2140.274 rows=113004 loops=1)
                                                                           Hash Cond: (mi_idx2.movie_id = t2.id)
                                                                           Buffers: shared hit=8454 read=35997
                                                                           ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=658313 width=14) (actual time=0.007..265.512 rows=658295 loops=1)
                                                                                 Filter: (info < '3.0'::text)
                                                                                 Rows Removed by Filter: 721740
                                                                                 Buffers: shared hit=8453
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=445860 width=25) (actual time=1715.568..1715.568 rows=445860 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 29580kB
                                                                                 Buffers: shared hit=1 read=35997
                                                                                 ->  Seq Scan on title t2  (cost=0.00..1696.56 rows=445860 width=25) (actual time=8.094..1441.325 rows=445860 loops=1)
                                                                                       Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                                                       Rows Removed by Filter: 2082452
                                                                                       Buffers: shared hit=1 read=35997
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.006 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'tv series'::text)
                                                                                 Rows Removed by Filter: 6
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=2087.91..2087.91 rows=145 width=47) (actual time=1817.775..1817.775 rows=20890 loops=1)
                                                                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1927kB
                                                                     Buffers: shared hit=36005 read=8610
                                                                     ->  Hash Join  (cost=2077.22..2087.91 rows=145 width=47) (actual time=1773.276..1804.550 rows=20890 loops=1)
                                                                           Hash Cond: (ml.movie_id = t1.id)
                                                                           Buffers: shared hit=36005 read=8610
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.007..12.091 rows=29997 loops=1)
                                                                                 Buffers: shared hit=4 read=159
                                                                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=35) (actual time=1773.211..1773.211 rows=459925 loops=1)
                                                                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 34856kB
                                                                                 Buffers: shared hit=36001 read=8451
                                                                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=35) (actual time=634.152..1623.350 rows=459925 loops=1)
                                                                                       Hash Cond: (t1.id = mi_idx1.movie_id)
                                                                                       Buffers: shared hit=36001 read=8451
                                                                                       ->  Seq Scan on title t1  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=0.003..194.197 rows=2528312 loops=1)
                                                                                             Buffers: shared hit=35998
                                                                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=634.092..634.092 rows=459925 loops=1)
                                                                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                                                             Buffers: shared hit=3 read=8451
                                                                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.041..511.136 rows=459925 loops=1)
                                                                                                   Hash Cond: (mi_idx1.info_type_id = it1.id)
                                                                                                   Buffers: shared hit=3 read=8451
                                                                                                   ->  Seq Scan on movie_info_idx mi_idx1  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.005..216.456 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=2 read=8451
                                                                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.022..0.022 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.019 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'rating'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.015..0.015 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.007..0.011 rows=2 loops=1)
                                                                     Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=103.040..103.040 rows=234997 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                             Buffers: shared hit=2994
                                             ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=0.006..44.222 rows=234997 loops=1)
                                                   Buffers: shared hit=2994
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.036..0.040 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.013 rows=1 loops=1)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
         ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=158.425..158.425 rows=84843 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 5810kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=84843 width=23) (actual time=22.127..121.696 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared hit=2 read=2992
 Planning Time: 6471.910 ms
 Execution Time: 5655.345 ms
(126 rows)

