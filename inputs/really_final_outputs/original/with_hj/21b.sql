                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11636.12..11636.12 rows=1 width=96) (actual time=12632.383..12632.383 rows=1 loops=1)
   Buffers: shared hit=3 read=244296
   ->  Hash Join  (cost=4366.85..11636.12 rows=1 width=48) (actual time=11329.914..12632.348 rows=38 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=3 read=244296
         ->  Hash Join  (cost=4356.76..11626.03 rows=1 width=52) (actual time=4303.401..12593.867 rows=144 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared read=244132
               ->  Seq Scan on movie_info mi  (cost=0.00..7255.68 rows=116723 width=4) (actual time=25.683..8376.999 rows=116559 loops=1)
                     Filter: (info = ANY ('{Germany,German}'::text[]))
                     Rows Removed by Filter: 14719161
                     Buffers: shared read=161892
               ->  Hash  (cost=4356.76..4356.76 rows=2 width=48) (actual time=4192.986..4192.986 rows=549 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 57kB
                     Buffers: shared read=82240
                     ->  Hash Join  (cost=2538.76..4356.76 rows=2 width=48) (actual time=2558.981..4192.361 rows=549 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared read=82240
                           ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=10.125..1476.106 rows=1042800 loops=1)
                                 Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1485512
                                 Buffers: shared read=35998
                           ->  Hash  (cost=2538.76..2538.76 rows=5 width=27) (actual time=2471.028..2471.028 rows=2293 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 171kB
                                 Buffers: shared read=46242
                                 ->  Hash Join  (cost=1090.11..2538.76 rows=5 width=27) (actual time=1348.304..2469.988 rows=2293 loops=1)
                                       Hash Cond: (mk.movie_id = mc.movie_id)
                                       Buffers: shared read=46242
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=52.225..1188.725 rows=10544 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.341..534.281 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.323..47.323 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.308..47.311 rows=1 loops=1)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=1074.21..1074.21 rows=66524 width=23) (actual time=1275.483..1275.483 rows=224256 loops=1)
                                             Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 14559kB
                                             Buffers: shared read=21784
                                             ->  Hash Join  (cost=172.14..1074.21 rows=66524 width=23) (actual time=707.730..1204.068 rows=224256 loops=1)
                                                   Hash Cond: (mc.company_type_id = ct.id)
                                                   Buffers: shared read=21784
                                                   ->  Hash Join  (cost=172.11..1045.56 rows=266098 width=27) (actual time=169.940..1143.451 rows=240875 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=26.328..765.153 rows=1271989 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 1337140
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=138.078..138.078 rows=48302 loops=1)
                                                               Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=2.672..119.713 rows=48302 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                     Rows Removed by Filter: 186695
                                                                     Buffers: shared read=2994
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.171..0.171 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.155..0.158 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'production companies'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared read=1
         ->  Hash  (cost=9.84..9.84 rows=1666 width=16) (actual time=38.372..38.372 rows=2315 loops=1)
               Buckets: 4096 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 136kB
               Buffers: shared read=164
               ->  Hash Join  (cost=0.03..9.84 rows=1666 width=16) (actual time=20.291..37.169 rows=2315 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared read=164
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=20.078..26.840 rows=29997 loops=1)
                           Buffers: shared read=163
                     ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.149..0.149 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.116..0.131 rows=2 loops=1)
                                 Filter: ((link)::text ~~ '%follow%'::text)
                                 Rows Removed by Filter: 16
                                 Buffers: shared read=1
 Planning Time: 5395.463 ms
 Execution Time: 12633.073 ms
(83 rows)

