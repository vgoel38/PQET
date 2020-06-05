                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=15080.63..15080.63 rows=1 width=96) (actual time=13025.172..13025.172 rows=1 loops=1)
   Buffers: shared hit=3 read=244296
   ->  Hash Join  (cost=4351.45..15080.63 rows=1 width=48) (actual time=11663.091..13001.239 rows=1410 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=3 read=244296
         ->  Hash Join  (cost=4341.37..15070.55 rows=1 width=52) (actual time=4224.222..12960.654 rows=696 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=244132
               ->  Seq Scan on movie_info mi  (cost=0.00..10711.20 rows=154416 width=4) (actual time=28.025..8754.581 rows=153897 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 14681823
                     Buffers: shared read=161892
               ->  Hash  (cost=4341.37..4341.37 rows=2 width=48) (actual time=4181.200..4181.200 rows=1292 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 132kB
                     Buffers: shared read=82240
                     ->  Hash Join  (cost=2538.76..4341.37 rows=2 width=48) (actual time=2480.485..4179.859 rows=1292 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared read=82240
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=910581 width=21) (actual time=7.075..1494.831 rows=910581 loops=1)
                                 Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                 Rows Removed by Filter: 1617731
                                 Buffers: shared read=35998
                           ->  Hash  (cost=2538.76..2538.76 rows=5 width=27) (actual time=2462.755..2462.755 rows=2293 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 171kB
                                 Buffers: shared read=46242
                                 ->  Hash Join  (cost=1090.11..2538.76 rows=5 width=27) (actual time=1333.857..2461.703 rows=2293 loops=1)
                                       Hash Cond: (mk.movie_id = mc.movie_id)
                                       Buffers: shared read=46242
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=52.220..1184.869 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.311..517.969 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.314..47.315 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.299..47.302 rows=1 loops=1)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=1074.21..1074.21 rows=66524 width=23) (actual time=1271.074..1271.074 rows=224256 loops=1)
                                             Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                                             Buffers: shared read=21784
                                             ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=707.560..1200.359 rows=224256 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared read=21784
                                                   ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=169.773..1140.161 rows=240875 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=26.310..764.131 rows=1271989 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 1337140
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=138.131..138.132 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=2.712..122.540 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.170..0.170 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.156..0.159 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
         ->  Hash  (cost=9.84..9.84 rows=1666 width=16) (actual time=40.106..40.106 rows=2315 loops=1)
               Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
               Buffers: shared read=164
               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=21.313..38.869 rows=2315 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared read=164
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=21.093..28.215 rows=29997 loops=1)
                           Buffers: shared read=163
                     ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.150..0.150 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.117..0.131 rows=2 loops=1)
                                 Filter: ((link)::text ~~ '%follow%'::text)
                                 Rows Removed by Filter: 16
                                 Buffers: shared read=1
 Planning Time: 5261.183 ms
 Execution Time: 13025.762 ms
(83 rows)

