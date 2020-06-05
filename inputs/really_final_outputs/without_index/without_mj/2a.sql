                                                                           QUERY PLAN                                                                            
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4224.75..4224.75 rows=1 width=32) (actual time=4220.982..4220.982 rows=1 loops=1)
   Buffers: shared hit=3 read=83184
   ->  Hash Join  (cost=2626.34..4224.75 rows=8 width=17) (actual time=2326.527..4202.991 rows=7834 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=83184
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=7.660..1243.392 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=2626.34..2626.34 rows=8 width=8) (actual time=2312.769..2312.769 rows=7834 loops=1)
               Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 371kB
               Buffers: shared read=47186
               ->  Hash Join  (cost=1177.69..2626.34 rows=8 width=8) (actual time=1183.966..2310.311 rows=7834 loops=1)
                     Hash Cond: (mk.movie_id = mc.movie_id)
                     Buffers: shared read=47186
                     ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=96.117..1224.598 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.294..526.646 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=91.744..91.744 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=31.015..91.733 rows=1 loops=1)
                                       Filter: (keyword = 'character-name-in-title'::text)
                                       Rows Removed by Filter: 134169
                                       Buffers: shared read=949
                     ->  Hash  (cost=1112.30..1112.30 rows=108530 width=4) (actual time=1071.873..1071.873 rows=148132 loops=1)
                           Buckets: 262144 (originally 131072)  Batches: 1 (originally 1)  Memory Usage: 7256kB
                           Buffers: shared read=21783
                           ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=4) (actual time=163.617..1025.208 rows=148132 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=24.906..413.506 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=138.509..138.509 rows=9775 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=3.111..133.638 rows=9775 loops=1)
                                             Filter: ((country_code)::text = '[de]'::text)
                                             Rows Removed by Filter: 225222
                                             Buffers: shared read=2994
 Planning Time: 1720.316 ms
 Execution Time: 4222.204 ms
(42 rows)

