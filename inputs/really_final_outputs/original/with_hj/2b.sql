                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4168.21..4168.21 rows=1 width=32) (actual time=4871.043..4871.043 rows=1 loops=1)
   Buffers: shared hit=3 read=82239
   ->  Hash Join  (cost=2569.80..4168.21 rows=2 width=17) (actual time=2283.452..4857.841 rows=5228 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=82239
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.651..1960.424 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=2569.80..2569.80 rows=2 width=8) (actual time=2249.875..2249.875 rows=5228 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 269kB
               Buffers: shared read=46241
               ->  Hash Join  (cost=1121.15..2569.80 rows=2 width=8) (actual time=1120.369..2248.128 rows=5228 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared read=46241
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.088..1183.812 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=24458
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.284..525.769 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.658..46.659 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.635..46.638 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1111.21..1111.21 rows=25981 width=4) (actual time=1050.910..1050.910 rows=56410 loops=1)
                           Buckets: 65536 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 2496kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=128.75..1111.21 rows=25981 width=4) (actual time=158.734..1031.252 rows=56410 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=19.989..445.886 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=2340 width=4) (actual time=138.671..138.671 rows=2340 loops=1)
                                       Buckets: 4096  Batches: 1  Memory Usage: 115kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=2340 width=4) (actual time=3.208..137.198 rows=2340 loops=1)
                                             Filter: ((country_code)::text = '[nl]'::text)
                                             Rows Removed by Filter: 232657
                                             Buffers: shared read=2994
 Planning Time: 1943.415 ms
 Execution Time: 4893.083 ms
(41 rows)

