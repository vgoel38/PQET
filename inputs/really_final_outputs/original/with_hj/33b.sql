                                                                                                               QUERY PLAN                                                                                                                
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=6511.74..6511.74 rows=1 width=192) (actual time=5101.771..5101.771 rows=1 loops=1)
   Buffers: shared hit=66239 read=66400
   ->  Hash Join  (cost=5438.12..6511.73 rows=1 width=84) (actual time=4609.587..5101.751 rows=4 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=66239 read=66400
         ->  Hash Join  (cost=5438.09..6511.70 rows=1 width=88) (actual time=4588.884..5081.044 rows=4 loops=1)
               Hash Cond: (mi_idx.info_type_id = it.id)
               Buffers: shared hit=66236 read=66399
               ->  Hash Join  (cost=5438.04..6511.65 rows=1 width=92) (actual time=4578.986..5071.139 rows=42 loops=1)
                     Hash Cond: (mc.company_id = cn2.id)
                     Buffers: shared hit=66236 read=66398
                     ->  Hash Join  (cost=5293.39..6367.00 rows=1 width=77) (actual time=4416.619..4908.745 rows=42 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=66236 read=63404
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=2.795..178.614 rows=2609129 loops=1)
                                 Buffers: shared hit=18788 read=1
                           ->  Hash  (cost=5293.39..5293.39 rows=1 width=85) (actual time=4412.276..4412.276 rows=12 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=47448 read=63403
                                 ->  Hash Join  (cost=3694.98..5293.39 rows=1 width=85) (actual time=3922.327..4412.261 rows=12 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=47448 read=63403
                                       ->  Hash Join  (cost=3694.95..5293.35 rows=1 width=89) (actual time=3922.262..4412.186 rows=12 loops=1)
                                             Hash Cond: (t.id = ml.movie_id)
                                             Buffers: shared hit=47447 read=63403
                                             ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=3.497..194.631 rows=2528312 loops=1)
                                                   Buffers: shared hit=35997 read=1
                                             ->  Hash  (cost=3694.95..3694.95 rows=1 width=80) (actual time=3918.405..3918.405 rows=12 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                                   Buffers: shared hit=11450 read=63402
                                                   ->  Hash Join  (cost=3169.94..3694.95 rows=1 width=80) (actual time=3548.868..3918.390 rows=12 loops=1)
                                                         Hash Cond: (ml.link_type_id = lt.id)
                                                         Buffers: shared hit=11450 read=63402
                                                         ->  Hash Join  (cost=3169.91..3694.91 rows=1 width=84) (actual time=3526.265..3897.855 rows=1003 loops=1)
                                                               Hash Cond: (t.id = ml.linked_movie_id)
                                                               Buffers: shared hit=11450 read=63401
                                                               ->  Hash Join  (cost=1517.81..2039.18 rows=31132 width=39) (actual time=1878.447..2247.867 rows=27794 loops=1)
                                                                     Hash Cond: (mi_idx.movie_id = t.id)
                                                                     Buffers: shared hit=8451 read=36000
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=658313 width=14) (actual time=11.557..288.370 rows=658295 loops=1)
                                                                           Filter: (info < '3.0'::text)
                                                                           Rows Removed by Filter: 721740
                                                                           Buffers: shared hit=8450 read=3
                                                                     ->  Hash  (cost=1500.26..1500.26 rows=119565 width=25) (actual time=1841.609..1841.609 rows=119565 loops=1)
                                                                           Buckets: 131072  Batches: 1  Memory Usage: 7853kB
                                                                           Buffers: shared hit=1 read=35997
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=119565 width=25) (actual time=0.058..1750.846 rows=119565 loops=1)
                                                                                 Filter: (production_year = 2007)
                                                                                 Rows Removed by Filter: 2408747
                                                                                 Buffers: shared hit=1 read=35997
                                                               ->  Hash  (cost=1652.10..1652.10 rows=19 width=45) (actual time=1645.761..1645.761 rows=13204 loops=1)
                                                                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1232kB
                                                                     Buffers: shared hit=2999 read=27401
                                                                     ->  Hash Join  (cost=1641.42..1652.10 rows=19 width=45) (actual time=1599.406..1637.334 rows=13204 loops=1)
                                                                           Hash Cond: (ml.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=2999 read=27401
                                                                           ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=13.500..35.301 rows=29997 loops=1)
                                                                                 Buffers: shared read=163
                                                                           ->  Hash  (cost=1641.37..1641.37 rows=293 width=33) (actual time=1585.861..1585.861 rows=43631 loops=1)
                                                                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3337kB
                                                                                 Buffers: shared hit=2999 read=27238
                                                                                 ->  Hash Join  (cost=1115.07..1641.37 rows=293 width=33) (actual time=965.321..1568.543 rows=43631 loops=1)
                                                                                       Hash Cond: (mi_idx.info_type_id = it.id)
                                                                                       Buffers: shared hit=2999 read=27238
                                                                                       ->  Hash Join  (cost=1115.02..1638.59 rows=33151 width=37) (actual time=965.203..1541.648 rows=131515 loops=1)
                                                                                             Hash Cond: (mi_idx.movie_id = mc.movie_id)
                                                                                             Buffers: shared hit=2998 read=27238
                                                                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.010..271.284 rows=1380035 loops=1)
                                                                                                   Buffers: shared hit=3 read=8450
                                                                                             ->  Hash  (cost=1111.21..1111.21 rows=25981 width=23) (actual time=964.897..964.897 rows=56410 loops=1)
                                                                                                   Buckets: 65536 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 3739kB
                                                                                                   Buffers: shared hit=2995 read=18788
                                                                                                   ->  Hash Join  (cost=128.75..1111.21 rows=25981 width=23) (actual time=51.819..941.814 rows=56410 loops=1)
                                                                                                         Hash Cond: (mc.company_id = cn1.id)
                                                                                                         Buffers: shared hit=2995 read=18788
                                                                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.010..435.063 rows=2609129 loops=1)
                                                                                                               Buffers: shared hit=1 read=18788
                                                                                                         ->  Hash  (cost=128.41..128.41 rows=2340 width=23) (actual time=51.756..51.756 rows=2340 loops=1)
                                                                                                               Buckets: 4096  Batches: 1  Memory Usage: 160kB
                                                                                                               Buffers: shared hit=2994
                                                                                                               ->  Seq Scan on company_name cn1  (cost=0.00..128.41 rows=2340 width=23) (actual time=0.044..50.344 rows=2340 loops=1)
                                                                                                                     Filter: ((country_code)::text = '[nl]'::text)
                                                                                                                     Rows Removed by Filter: 232657
                                                                                                                     Buffers: shared hit=2994
                                                                                       ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.074..0.075 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.058..0.065 rows=1 loops=1)
                                                                                                   Filter: ((info)::text = 'rating'::text)
                                                                                                   Rows Removed by Filter: 112
                                                                                                   Buffers: shared hit=1
                                                         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.386..20.386 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared read=1
                                                               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=20.354..20.369 rows=2 loops=1)
                                                                     Filter: ((link)::text ~~ '%follow%'::text)
                                                                     Rows Removed by Filter: 16
                                                                     Buffers: shared read=1
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.019..0.023 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'tv series'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                     ->  Hash  (cost=110.16..110.16 rows=234997 width=23) (actual time=160.341..160.341 rows=234997 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 15097kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn2  (cost=0.00..110.16 rows=234997 width=23) (actual time=24.779..89.704 rows=234997 loops=1)
                                 Buffers: shared read=2994
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=9.865..9.865 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=9.848..9.855 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=20.648..20.648 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=20.622..20.627 rows=1 loops=1)
                     Filter: ((kind)::text = 'tv series'::text)
                     Rows Removed by Filter: 6
                     Buffers: shared read=1
 Planning Time: 5669.487 ms
 Execution Time: 5103.584 ms
(126 rows)

