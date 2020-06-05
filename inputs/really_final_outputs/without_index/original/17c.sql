                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20157.60..20157.60 rows=1 width=64) (actual time=33877.722..33877.722 rows=1 loops=1)
   Buffers: shared hit=1169897 read=391386
   ->  Nested Loop  (cost=6624.80..20157.60 rows=1 width=15) (actual time=10614.807..33876.191 rows=1918 loops=1)
         Join Filter: (mc.company_id = cn.id)
         Rows Removed by Join Filter: 92321248
         Buffers: shared hit=1169897 read=391386
         ->  Hash Join  (cost=6624.80..20012.94 rows=1 width=19) (actual time=10577.885..18333.436 rows=1918 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=17 read=388443
               ->  Hash Join  (cost=2356.48..15742.18 rows=21038 width=19) (actual time=6578.323..14329.386 rows=12500 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=8 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.013..5949.915 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=2419 width=19) (actual time=2731.423..2731.423 rows=2664 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 164kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=2419 width=19) (actual time=1093.164..2729.842 rows=2664 loops=1)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 4164827
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=4268.29..4268.29 rows=190 width=16) (actual time=3999.521..3999.521 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=9 read=80181
                     ->  Hash Join  (cost=3194.67..4268.29 rows=190 width=16) (actual time=3083.541..3954.294 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=9 read=80181
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..376.345 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3194.67..3194.67 rows=34 width=8) (actual time=3079.197..3079.197 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=6 read=61395
                                 ->  Hash Join  (cost=1498.11..3194.67 rows=34 width=8) (actual time=1258.810..3060.339 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=6 read=61395
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=11.926..1084.275 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1246.773..1246.773 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=5 read=25398
                                             ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=87.523..1235.992 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=5 read=25398
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.016..526.352 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=87.437..87.437 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2 read=947
                                                         ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=26.868..87.427 rows=1 loops=1)
                                                               Filter: (keyword = 'character-name-in-title'::text)
                                                               Rows Removed by Filter: 134169
                                                               Buffers: shared hit=2 read=947
         ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=0.003..3.371 rows=48135 loops=1918)
               Buffers: shared hit=1169880 read=2943
 Planning Time: 5495.274 ms
 Execution Time: 33878.864 ms
(56 rows)

