                                                                             QUERY PLAN                                                                              
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4181.42..4181.42 rows=1 width=32) (actual time=4325.448..4325.449 rows=1 loops=1)
   Buffers: shared hit=3 read=82239
   ->  Hash Join  (cost=2583.01..4181.42 rows=8 width=17) (actual time=2465.814..4307.617 rows=7834 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=82239
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.563..1226.215 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=2583.01..2583.01 rows=8 width=8) (actual time=2436.886..2436.886 rows=7834 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 371kB
               Buffers: shared read=46241
               ->  Hash Join  (cost=1134.36..2583.01 rows=8 width=8) (actual time=1132.944..2434.401 rows=7834 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared read=46241
                     ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.179..1351.694 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=24458
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.360..673.199 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.670..46.671 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.646..46.650 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                     ->  Hash  (cost=1112.30..1112.30 rows=108530 width=4) (actual time=1067.863..1067.863 rows=148132 loops=1)
                           Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 7256kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=4) (actual time=158.867..1021.237 rows=148132 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=19.207..418.960 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=139.375..139.375 rows=9775 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=3.091..133.902 rows=9775 loops=1)
                                             Filter: ((country_code)::text = '[de]'::text)
                                             Rows Removed by Filter: 225222
                                             Buffers: shared read=2994
 Planning Time: 2019.541 ms
 Execution Time: 4354.870 ms
(41 rows)

