                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20153.30..20153.30 rows=1 width=64) (actual time=18745.991..18745.991 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6731.06..20153.30 rows=19 width=15) (actual time=10595.239..18722.015 rows=52306 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=6586.41..20008.64 rows=19 width=19) (actual time=10437.150..18543.338 rows=52306 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=12 read=387500
               ->  Hash Join  (cost=2361.42..15747.12 rows=313707 width=19) (actual time=6516.052..14556.285 rows=268710 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..5938.092 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=36071 width=19) (actual time=2645.230..2645.230 rows=36174 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 2381kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=36071 width=19) (actual time=1125.633..2631.297 rows=36174 loops=1)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 4131317
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=3921.066..3921.066 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=7 read=79238
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=3018.702..3875.219 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=7 read=79238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..366.683 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=3013.991..3013.991 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=4 read=60452
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1202.194..2995.718 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=4 read=60452
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=5.422..1078.562 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1196.687..1196.687 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=3 read=24455
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=42.797..1186.162 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=3 read=24455
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.015..535.540 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.648..42.648 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.633..42.636 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=156.075..156.075 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared hit=2 read=2992
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.305..88.587 rows=234997 loops=1)
                     Buffers: shared hit=2 read=2992
 Planning Time: 5642.675 ms
 Execution Time: 18760.775 ms
(57 rows)

