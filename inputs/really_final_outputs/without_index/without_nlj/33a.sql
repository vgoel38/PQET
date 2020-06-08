                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6817.32..6817.32 rows=1 width=192) (actual time=5664.236..5664.236 rows=1 loops=1)
   Buffers: shared hit=66252 read=66387
   ->  Hash Join  (cost=5743.71..6817.32 rows=1 width=84) (actual time=5179.988..5664.202 rows=8 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=66252 read=66387
         ->  Hash Join  (cost=5602.85..6676.46 rows=1 width=69) (actual time=4967.094..5451.300 rows=28 loops=1)
               Hash Cond: (mc.movie_id = t.id)
               Buffers: shared hit=66247 read=63395
               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..175.162 rows=2609129 loops=1)
                     Buffers: shared hit=18789
               ->  Hash  (cost=5602.85..5602.85 rows=1 width=77) (actual time=4965.678..4965.678 rows=10 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=47458 read=63395
                     ->  Hash Join  (cost=4529.23..5602.85 rows=1 width=77) (actual time=4084.744..4965.638 rows=10 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=47458 read=63395
                           ->  Hash Join  (cost=4529.20..5602.82 rows=1 width=81) (actual time=4084.717..4965.598 rows=10 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=47457 read=63395
                                 ->  Hash Join  (cost=4529.15..5602.77 rows=1 width=85) (actual time=4078.098..4965.449 rows=407 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=47456 read=63395
                                       ->  Hash Join  (cost=4384.50..5458.11 rows=1 width=70) (actual time=3983.220..4870.191 rows=407 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=44462 read=63395
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.005..505.091 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=4384.50..4384.50 rows=1 width=78) (actual time=3958.871..3958.871 rows=95 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 20kB
                                                   Buffers: shared hit=44459 read=44609
                                                   ->  Hash Join  (cost=3850.00..4384.50 rows=1 width=78) (actual time=3538.320..3958.807 rows=95 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=44459 read=44609
                                                         ->  Hash Join  (cost=3849.97..4384.46 rows=1 width=82) (actual time=3538.282..3958.643 rows=1004 loops=1)
                                                               Hash Cond: (t.id = ml.linked_movie_id)
                                                               Buffers: shared hit=44458 read=44609
                                                               ->  Hash Join  (cost=1762.03..2294.60 rows=16584 width=35) (actual time=1720.233..2139.044 rows=11319 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=8455 read=35997
                                                                     ->  Hash Join  (cost=1762.00..2283.38 rows=116091 width=39) (actual time=1720.212..2125.969 rows=113004 loops=1)
                                                                           Hash Cond: (mi_idx.movie_id = t.id)
                                                                           Buffers: shared hit=8454 read=35997
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=658313 width=14) (actual time=0.007..249.201 rows=658295 loops=1)
                                                                                 Filter: (info < '3.0'::text)
                                                                                 Rows Removed by Filter: 721740
                                                                                 Buffers: shared hit=8453
                                                                           ->  Hash  (cost=1696.56..1696.56 rows=445860 width=25) (actual time=1718.942..1718.942 rows=445860 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 29580kB
                                                                                 Buffers: shared hit=1 read=35997
                                                                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=445860 width=25) (actual time=10.364..1450.105 rows=445860 loops=1)
                                                                                       Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                                                       Rows Removed by Filter: 2082452
                                                                                       Buffers: shared hit=1 read=35997
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.005 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'tv series'::text)
                                                                                 Rows Removed by Filter: 6
                                                                                 Buffers: shared hit=1
                                                               ->  Hash  (cost=2087.91..2087.91 rows=145 width=47) (actual time=1817.683..1817.683 rows=20890 loops=1)
                                                                     Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1927kB
                                                                     Buffers: shared hit=36003 read=8612
                                                                     ->  Hash Join  (cost=2077.22..2087.91 rows=145 width=47) (actual time=1770.699..1804.160 rows=20890 loops=1)
                                                                           Hash Cond: (ml.movie_id = t.id)
                                                                           Buffers: shared hit=36003 read=8612
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.014..13.852 rows=29997 loops=1)
                                                                                 Buffers: shared hit=2 read=161
                                                                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=35) (actual time=1770.545..1770.545 rows=459925 loops=1)
                                                                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 34856kB
                                                                                 Buffers: shared hit=36001 read=8451
                                                                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=35) (actual time=647.850..1620.262 rows=459925 loops=1)
                                                                                       Hash Cond: (t.id = mi_idx.movie_id)
                                                                                       Buffers: shared hit=36001 read=8451
                                                                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=0.006..195.334 rows=2528312 loops=1)
                                                                                             Buffers: shared hit=35998
                                                                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=647.696..647.696 rows=459925 loops=1)
                                                                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                                                             Buffers: shared hit=3 read=8451
                                                                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.099..524.312 rows=459925 loops=1)
                                                                                                   Hash Cond: (mi_idx.info_type_id = it.id)
                                                                                                   Buffers: shared hit=3 read=8451
                                                                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..227.425 rows=1380035 loops=1)
                                                                                                         Buffers: shared hit=2 read=8451
                                                                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.058..0.058 rows=1 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=1
                                                                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.050 rows=1 loops=1)
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
                                       ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=94.268..94.268 rows=234997 loops=1)
                                             Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                             Buffers: shared hit=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=23) (actual time=0.003..40.983 rows=234997 loops=1)
                                                   Buffers: shared hit=2994
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.007 rows=1 loops=1)
                                       Filter: ((kind)::text = 'tv series'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
         ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=212.559..212.559 rows=84843 loops=1)
               Buckets: 131072  Batches: 1  Memory Usage: 5810kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=77.232..179.923 rows=84843 loops=1)
                     Filter: ((country_code)::text = '[us]'::text)
                     Rows Removed by Filter: 150154
                     Buffers: shared hit=2 read=2992
 Planning Time: 6008.781 ms
 Execution Time: 5666.543 ms
(126 rows)

