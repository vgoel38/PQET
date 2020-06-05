                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20114.28..20114.28 rows=1 width=64) (actual time=18902.383..18902.383 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6726.12..20114.28 rows=1 width=15) (actual time=10788.606..18901.983 rows=1918 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=6581.47..19969.63 rows=1 width=19) (actual time=10631.804..18744.214 rows=1918 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=12 read=387500
               ->  Hash Join  (cost=2356.48..15742.18 rows=21090 width=19) (actual time=6622.568..14731.846 rows=12500 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..6198.871 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=2425 width=19) (actual time=2780.240..2780.240 rows=2664 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 164kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=2425 width=19) (actual time=1108.541..2778.409 rows=2664 loops=1)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 4164827
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=4009.200..4009.200 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=7 read=79238
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=3096.801..3963.907 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=7 read=79238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..376.549 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=3086.380..3086.380 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=4 read=60452
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1230.396..3067.236 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=4 read=60452
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=8.494..1113.347 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1221.809..1221.809 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=3 read=24455
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=42.805..1211.170 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=3 read=24455
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..548.068 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.657..42.658 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.642..42.645 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=154.788..154.788 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.304..88.613 rows=234997 loops=1)
                     Buffers: shared hit=2 read=2992
 Planning Time: 5636.368 ms
 Execution Time: 18981.712 ms
(57 rows)

