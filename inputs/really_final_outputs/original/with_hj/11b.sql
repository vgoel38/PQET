                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4245.40..4245.40 rows=1 width=96) (actual time=4685.878..4685.879 rows=1 loops=1)
   Buffers: shared hit=3 read=82404
   ->  Hash Join  (cost=2548.84..4245.40 rows=1 width=48) (actual time=2823.417..4685.858 rows=14 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=3 read=82404
         ->  Hash Join  (cost=2538.76..4235.32 rows=1 width=48) (actual time=2798.294..4660.731 rows=2 loops=1)
               Hash Cond: (t.id = mc.movie_id)
               Buffers: shared read=82240
               ->  Hash Join  (cost=1454.78..3151.34 rows=1 width=25) (actual time=1540.409..3402.844 rows=1 loops=1)
                     Hash Cond: (t.id = mk.movie_id)
                     Buffers: shared read=60456
                     ->  Seq Scan on title t  (cost=0.00..1696.56 rows=24 width=21) (actual time=55.100..1923.029 rows=36 loops=1)
                           Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
                           Rows Removed by Filter: 2528276
                           Buffers: shared read=35998
                     ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1479.673..1479.673 rows=10544 loops=1)
                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 499kB
                           Buffers: shared read=24458
                           ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=52.351..1476.600 rows=10544 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared read=24458
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.445..794.778 rows=4523930 loops=1)
                                       Buffers: shared read=24454
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.350..47.350 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.334..47.337 rows=1 loops=1)
                                             Index Cond: (keyword = 'sequel'::text)
                                             Buffers: shared read=4
               ->  Hash  (cost=1074.21..1074.21 rows=66524 width=23) (actual time=1257.315..1257.315 rows=224256 loops=1)
                     Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                     Buffers: shared read=21784
                     ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=707.159..1187.269 rows=224256 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared read=21784
                           ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=169.323..1127.972 rows=240875 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=25.624..756.572 rows=1271989 loops=1)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 1337140
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=140.250..140.250 rows=48302 loops=1)
                                       Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=2.652..121.903 rows=48302 loops=1)
                                             Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                             Rows Removed by Filter: 186695
                                             Buffers: shared read=2994
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.130..0.130 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.124..0.125 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
         ->  Hash  (cost=9.84..9.84 rows=1666 width=16) (actual time=25.057..25.057 rows=1158 loops=1)
               Buckets: 2048  Batches: 1  Memory Usage: 66kB
               Buffers: shared read=164
               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=9.338..24.497 rows=1158 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared read=164
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=9.099..15.493 rows=29997 loops=1)
                           Buffers: shared read=163
                     ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.145..0.145 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.116..0.130 rows=1 loops=1)
                                 Filter: ((link)::text ~~ '%follows%'::text)
                                 Rows Removed by Filter: 17
                                 Buffers: shared read=1
 Planning Time: 3099.384 ms
 Execution Time: 4694.155 ms
(73 rows)

