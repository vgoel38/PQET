                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4168.21..4168.21 rows=1 width=32) (actual time=4197.191..4197.192 rows=1 loops=1)
   Buffers: shared hit=12 read=82230
   ->  Hash Join  (cost=2569.80..4168.21 rows=2 width=17) (actual time=2466.661..4184.170 rows=5228 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=12 read=82230
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.619..1110.198 rows=2528312 loops=1)
               Buffers: shared hit=1 read=35997
         ->  Hash  (cost=2569.80..2569.80 rows=2 width=8) (actual time=2430.388..2430.388 rows=5228 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 269kB
               Buffers: shared hit=8 read=46233
               ->  Hash Join  (cost=1121.15..2569.80 rows=2 width=8) (actual time=1114.293..2428.678 rows=5228 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared hit=8 read=46233
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=33.261..1354.154 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=3 read=24455
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..698.089 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=33.096..33.096 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=33.082..33.084 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1111.21..1111.21 rows=25981 width=4) (actual time=1061.110..1061.110 rows=56410 loops=1)
                           Buckets: 65536 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 2496kB
                           Buffers: shared hit=5 read=21778
                           ->  Hash Join  (cost=128.75..1111.21 rows=25981 width=4) (actual time=160.144..1042.059 rows=56410 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=5 read=21778
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.011..437.226 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=18786
                                 ->  Hash  (cost=128.41..128.41 rows=2340 width=4) (actual time=160.074..160.074 rows=2340 loops=1)
                                       Buckets: 4096  Batches: 1  Memory Usage: 115kB
                                       Buffers: shared hit=2 read=2992
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=2340 width=4) (actual time=24.389..158.655 rows=2340 loops=1)
                                             Filter: ((country_code)::text = '[nl]'::text)
                                             Rows Removed by Filter: 232657
                                             Buffers: shared hit=2 read=2992
 Planning Time: 2427.691 ms
 Execution Time: 4218.222 ms
(41 rows)

