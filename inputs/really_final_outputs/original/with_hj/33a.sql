                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6817.32..6817.32 rows=1 width=192) (actual time=5728.703..5728.703 rows=1 loops=1)
   Buffers: shared hit=66239 read=66400
   ->  Hash Join  (cost=5743.71..6817.32 rows=1 width=84) (actual time=5233.434..5728.656 rows=8 loops=1)
         Hash Cond: (mc1.company_id = cn1.id)
         Buffers: shared hit=66239 read=66400
         ->  Hash Join  (cost=5602.85..6676.46 rows=1 width=69) (actual time=5079.520..5574.734 rows=28 loops=1)
               Hash Cond: (mc1.movie_id = t1.id)
               Buffers: shared hit=66236 read=63406
               ->  Seq Scan on movie_companies mc1  (cost=0.00..769.75 rows=2609129 width=8) (actual time=2.508..182.380 rows=2609129 loops=1)
                     Buffers: shared hit=18788 read=1
               ->  Hash  (cost=5602.85..5602.85 rows=1 width=77) (actual time=5072.846..5072.846 rows=10 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=47448 read=63405
                     ->  Hash Join  (cost=4529.23..5602.85 rows=1 width=77) (actual time=4190.072..5072.812 rows=10 loops=1)
                           Hash Cond: (t1.kind_id = kt1.id)
                           Buffers: shared hit=47448 read=63405
                           ->  Hash Join  (cost=4529.20..5602.82 rows=1 width=81) (actual time=4165.242..5047.965 rows=10 loops=1)
                                 Hash Cond: (mi_idx2.info_type_id = it2.id)
                                 Buffers: shared hit=47448 read=63404
                                 ->  Hash Join  (cost=4529.15..5602.77 rows=1 width=85) (actual time=4157.007..5046.246 rows=407 loops=1)
                                       Hash Cond: (mc2.company_id = cn2.id)
                                       Buffers: shared hit=47448 read=63403
                                       ->  Hash Join  (cost=4384.50..5458.11 rows=1 width=70) (actual time=4040.195..4929.036 rows=407 loops=1)
                                             Hash Cond: (mc2.movie_id = t2.id)
                                             Buffers: shared hit=44454 read=63403
                                             ->  Seq Scan on movie_companies mc2  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.005..508.607 rows=2609129 loops=1)
                                                   Buffers: shared hit=1 read=18788
                                             ->  Hash  (cost=4384.50..4384.50 rows=1 width=78) (actual time=4014.818..4014.818 rows=95 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 20kB
                                                   Buffers: shared hit=44453 read=44615
                                                   ->  Hash Join  (cost=3850.00..4384.50 rows=1 width=78) (actual time=3588.609..4014.735 rows=95 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=44453 read=44615
                                                         ->  Hash Join  (cost=3849.97..4384.46 rows=1 width=82) (actual time=3582.858..4008.850 rows=1004 loops=1)
                                                               Hash Cond: (t2.id = ml.linked_movie_id)
                                                               Buffers: shared hit=44453 read=44614
                                                               ->  Hash Join  (cost=1762.03..2294.60 rows=16584 width=35) (actual time=1748.253..2172.618 rows=11319 loops=1)
                                                                     Hash Cond: (t2.kind_id = kt2.id)
                                                                     Buffers: shared hit=8453 read=35999
                                                                     ->  Hash Join  (cost=1762.00..2283.38 rows=116091 width=39) (actual time=1748.195..2159.381 rows=113004 loops=1)
                                                                           Hash Cond: (mi_idx2.movie_id = t2.id)
                                                                           Buffers: shared hit=8452 read=35999
                                                                           ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=658313 width=14) (actual time=11.490..264.489 rows=658295 loops=1)
                                                                                 Filter: (info < '3.0'::text)
                                                                                 Rows Removed by Filter: 721740
                                                                                 Buffers: shared hit=8452 read=1
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=445860 width=25) (actual time=1732.679..1732.679 rows=445860 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 29580kB
                                                                                 Buffers: shared read=35998
                                                                                 ->  Seq Scan on title t2  (cost=0.00..1696.56 rows=445860 width=25) (actual time=22.298..1462.533 rows=445860 loops=1)
                                                                                       Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                                                       Rows Removed by Filter: 2082452
                                                                                       Buffers: shared read=35998
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.017 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'tv series'::text)
                                                                                 Rows Removed by Filter: 6
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=2087.91..2087.91 rows=145 width=47) (actual time=1834.298..1834.299 rows=20890 loops=1)
                                                                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1927kB
                                                                     Buffers: shared hit=36000 read=8615
                                                                     ->  Hash Join  (cost=2077.22..2087.91 rows=145 width=47) (actual time=1787.366..1820.006 rows=20890 loops=1)
                                                                           Hash Cond: (ml.movie_id = t1.id)
                                                                           Buffers: shared hit=36000 read=8615
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=18.720..31.024 rows=29997 loops=1)
                                                                                 Buffers: shared read=163
                                                                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=35) (actual time=1768.479..1768.479 rows=459925 loops=1)
                                                                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 34856kB
                                                                                 Buffers: shared hit=36000 read=8452
                                                                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=35) (actual time=620.446..1615.784 rows=459925 loops=1)
                                                                                       Hash Cond: (t1.id = mi_idx1.movie_id)
                                                                                       Buffers: shared hit=36000 read=8452
                                                                                       ->  Seq Scan on title t1  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=0.012..198.809 rows=2528312 loops=1)
                                                                                             Buffers: shared hit=35998
                                                                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=620.283..620.283 rows=459925 loops=1)
                                                                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                                                             Buffers: shared hit=2 read=8452
                                                                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.118..501.476 rows=459925 loops=1)
                                                                                                   Hash Cond: (mi_idx1.info_type_id = it1.id)
                                                                                                   Buffers: shared hit=2 read=8452
                                                                                                   ->  Seq Scan on movie_info_idx mi_idx1  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.011..219.198 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=1 read=8452
                                                                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.069..0.069 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.060 rows=1 loops=1)
                                                                                                               Filter: ((info)::text = 'rating'::text)
                                                                                                               Rows Removed by Filter: 112
                                                                                                               Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=5.708..5.708 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=5.681..5.696 rows=2 loops=1)
                                                                     Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared read=1
                                       ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=114.776..114.776 rows=234997 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                             Buffers: shared hit=2994
                                             ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=0.014..49.146 rows=234997 loops=1)
                                                   Buffers: shared hit=2994
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=1.557..1.557 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=1.540..1.546 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=24.796..24.796 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=1 width=4) (actual time=24.780..24.784 rows=1 loops=1)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared read=1
         ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=153.536..153.536 rows=84843 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 5810kB
               Buffers: shared read=2994
               ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=84843 width=23) (actual time=17.658..117.675 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared read=2994
 Planning Time: 5742.972 ms
 Execution Time: 5731.158 ms
(126 rows)

