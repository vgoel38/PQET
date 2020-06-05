                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6537.71..6537.71 rows=1 width=192) (actual time=5158.352..5158.352 rows=1 loops=1)
   Buffers: shared hit=66254 read=66385
   ->  Hash Join  (cost=4939.30..6537.71 rows=1 width=84) (actual time=4696.860..5158.327 rows=4 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=66254 read=66385
         ->  Hash Join  (cost=4939.27..6537.68 rows=1 width=88) (actual time=4696.822..5158.287 rows=4 loops=1)
               Hash Cond: (t.kind_id = kt.id)
               Buffers: shared hit=66250 read=66385
               ->  Hash Join  (cost=4939.24..6537.65 rows=1 width=92) (actual time=4696.806..5158.270 rows=4 loops=1)
                     Hash Cond: (t.id = ml.movie_id)
                     Buffers: shared hit=66249 read=66385
                     ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=15.404..199.332 rows=2528312 loops=1)
                           Buffers: shared hit=35997 read=1
                     ->  Hash  (cost=4939.24..4939.24 rows=1 width=83) (actual time=4661.155..4661.155 rows=4 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=30252 read=66384
                           ->  Hash Join  (cost=3947.70..4939.24 rows=1 width=83) (actual time=4100.943..4661.148 rows=4 loops=1)
                                 Hash Cond: (mc.company_id = cn2.id)
                                 Buffers: shared hit=30252 read=66384
                                 ->  Hash Join  (cost=3803.05..4794.58 rows=1 width=68) (actual time=3957.389..4517.590 rows=4 loops=1)
                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                       Buffers: shared hit=30250 read=63392
                                       ->  Hash Join  (cost=3803.00..4794.54 rows=1 width=72) (actual time=3954.588..4517.540 rows=42 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=30249 read=63392
                                             ->  Hash Join  (cost=3802.95..4794.49 rows=3 width=76) (actual time=3954.559..4517.485 rows=126 loops=1)
                                                   Hash Cond: (ml.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=30248 read=63392
                                                   ->  Hash Join  (cost=3239.82..4231.36 rows=1 width=62) (actual time=3267.292..3830.176 rows=42 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=30246 read=54941
                                                         ->  Hash Join  (cost=3239.79..4231.32 rows=17 width=66) (actual time=3267.253..3829.448 rows=6818 loops=1)
                                                               Hash Cond: (mc.movie_id = ml.movie_id)
                                                               Buffers: shared hit=30245 read=54941
                                                               ->  Hash Join  (cost=128.75..1111.21 rows=25981 width=23) (actual time=30.715..584.934 rows=56410 loops=1)
                                                                     Hash Cond: (mc.company_id = cn1.id)
                                                                     Buffers: shared hit=21783
                                                                     ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.005..177.601 rows=2609129 loops=1)
                                                                           Buffers: shared hit=18789
                                                                     ->  Hash  (cost=128.41..128.41 rows=2340 width=23) (actual time=30.690..30.690 rows=2340 loops=1)
                                                                           Buckets: 4096  Batches: 1  Memory Usage: 160kB
                                                                           Buffers: shared hit=2994
                                                                           ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=2340 width=23) (actual time=0.015..30.023 rows=2340 loops=1)
                                                                                 Filter: ((country_code)::text = '[nl]'::text)
                                                                                 Rows Removed by Filter: 232657
                                                                                 Buffers: shared hit=2994
                                                               ->  Hash  (cost=3110.98..3110.98 rows=381 width=43) (actual time=3236.461..3236.461 rows=13934 loops=1)
                                                                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1237kB
                                                                     Buffers: shared hit=8462 read=54941
                                                                     ->  Hash Join  (cost=3100.28..3110.98 rows=381 width=43) (actual time=3177.847..3226.365 rows=13934 loops=1)
                                                                           Hash Cond: (ml.linked_movie_id = t.id)
                                                                           Buffers: shared hit=8462 read=54941
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.005..29.463 rows=29997 loops=1)
                                                                                 Buffers: shared hit=4 read=159
                                                                           ->  Hash  (cost=3095.56..3095.56 rows=32127 width=47) (actual time=3177.740..3177.740 rows=86459 loops=1)
                                                                                 Buckets: 131072 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 8218kB
                                                                                 Buffers: shared hit=8458 read=54782
                                                                                 ->  Hash Join  (cost=2082.15..3095.56 rows=32127 width=47) (actual time=2196.331..3140.977 rows=86459 loops=1)
                                                                                       Hash Cond: (t.id = mi_idx.movie_id)
                                                                                       Buffers: shared hit=8458 read=54782
                                                                                       ->  Hash Join  (cost=1517.81..2500.26 rows=123387 width=33) (actual time=1728.984..2624.427 rows=100506 loops=1)
                                                                                             Hash Cond: (mc.movie_id = t.id)
                                                                                             Buffers: shared hit=5 read=54782
                                                                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..328.870 rows=2609129 loops=1)
                                                                                                   Buffers: shared hit=3 read=18786
                                                                                             ->  Hash  (cost=1500.26..1500.26 rows=119565 width=25) (actual time=1728.563..1728.563 rows=119565 loops=1)
                                                                                                   Buckets: 131072  Batches: 1  Memory Usage: 7853kB
                                                                                                   Buffers: shared hit=2 read=35996
                                                                                                   ->  Seq Scan on title t  (cost=0.00..1500.26 rows=119565 width=25) (actual time=0.064..1639.839 rows=119565 loops=1)
                                                                                                         Filter: (production_year = 2007)
                                                                                                         Rows Removed by Filter: 2408747
                                                                                                         Buffers: shared hit=2 read=35996
                                                                                       ->  Hash  (cost=467.71..467.71 rows=658313 width=14) (actual time=464.961..464.961 rows=658295 loops=1)
                                                                                             Buckets: 1048576  Batches: 1  Memory Usage: 39793kB
                                                                                             Buffers: shared hit=8453
                                                                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=658313 width=14) (actual time=0.009..296.518 rows=658295 loops=1)
                                                                                                   Filter: (info < '3.0'::text)
                                                                                                   Rows Removed by Filter: 721740
                                                                                                   Buffers: shared hit=8453
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.016..0.017 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.014 rows=2 loops=1)
                                                                     Filter: ((link)::text ~~ '%follow%'::text)
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=360.56..360.56 rows=1380035 width=14) (actual time=682.502..682.502 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared hit=2 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..317.182 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.021 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=141.581..141.581 rows=234997 loops=1)
                                       Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=6.054..71.827 rows=234997 loops=1)
                                             Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.003 rows=1 loops=1)
                           Filter: ((kind)::text = 'tv series'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.012 rows=1 loops=1)
                     Filter: ((kind)::text = 'tv series'::text)
                     Rows Removed by Filter: 6
                     Buffers: shared hit=1
 Planning Time: 6179.174 ms
 Execution Time: 5161.859 ms
(126 rows)

