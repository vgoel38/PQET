                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20196.71..20196.71 rows=1 width=64) (actual time=18924.461..18924.462 rows=1 loops=1)
   Buffers: shared hit=19 read=391435
   ->  Hash Join  (cost=6774.40..20196.71 rows=19 width=15) (actual time=10726.946..18899.866 rows=52306 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=19 read=391435
         ->  Hash Join  (cost=6629.75..20052.05 rows=19 width=19) (actual time=10572.159..18723.300 rows=52306 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=14 read=388443
               ->  Hash Join  (cost=2361.43..15747.13 rows=314315 width=19) (actual time=6541.710..14622.329 rows=268710 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.006..5908.767 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=36141 width=19) (actual time=2671.229..2671.229 rows=36174 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 2381kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=36141 width=19) (actual time=1126.772..2657.136 rows=36174 loops=1)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 4131317
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=4268.29..4268.29 rows=190 width=16) (actual time=4030.416..4030.416 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=9 read=80181
                     ->  Hash Join  (cost=3194.67..4268.29 rows=190 width=16) (actual time=3110.716..3984.270 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=9 read=80181
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..379.389 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3194.67..3194.67 rows=34 width=8) (actual time=3106.098..3106.098 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=6 read=61395
                                 ->  Hash Join  (cost=1498.11..3194.67 rows=34 width=8) (actual time=1310.917..3088.522 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=6 read=61395
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=5.777..1090.085 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1305.042..1305.042 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=5 read=25398
                                             ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=87.464..1294.390 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=5 read=25398
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..589.308 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=87.357..87.358 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2 read=947
                                                         ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=26.810..87.350 rows=1 loops=1)
                                                               Filter: (keyword = 'character-name-in-title'::text)
                                                               Rows Removed by Filter: 134169
                                                               Buffers: shared hit=2 read=947
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=154.056..154.056 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=18.299..90.672 rows=234997 loops=1)
                     Buffers: shared hit=2 read=2992
 Planning Time: 5508.755 ms
 Execution Time: 18925.452 ms
(58 rows)

