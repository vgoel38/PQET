                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20725.90..20725.90 rows=1 width=32) (actual time=19369.895..19369.896 rows=1 loops=1)
   Buffers: shared hit=17 read=390492
   ->  Hash Join  (cost=6803.55..20725.88 rows=278 width=15) (actual time=6629.068..19194.122 rows=1113120 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=17 read=390492
         ->  Hash Join  (cost=2433.89..15819.59 rows=4607690 width=19) (actual time=2628.701..14034.960 rows=4857682 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.014..4963.445 rows=36244344 loops=1)
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2356.12..2356.12 rows=529807 width=19) (actual time=2620.803..2620.803 rows=536716 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 36076kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=529807 width=19) (actual time=24.006..2376.414 rows=536716 loops=1)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 3630775
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=4369.63..4369.63 rows=188 width=12) (actual time=4000.308..4000.308 rows=148552 loops=1)
               Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8432kB
               Buffers: shared hit=9 read=82230
               ->  Hash Join  (cost=3296.00..4369.63 rows=188 width=12) (actual time=3064.392..3960.352 rows=148552 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=9 read=82230
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=2919.511..3750.538 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=7 read=79238
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..359.404 rows=2609129 loops=1)
                                 Buffers: shared hit=3 read=18786
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=2914.829..2914.829 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=4 read=60452
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1202.995..2896.931 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=4 read=60452
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=6.107..987.016 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1196.799..1196.799 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared hit=3 read=24455
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=42.888..1186.228 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=3 read=24455
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..532.646 rows=4523930 loops=1)
                                                         Buffers: shared hit=3 read=24451
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=42.743..42.743 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.727..42.731 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                     ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=144.213..144.213 rows=234997 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 10310kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=8.488..78.537 rows=234997 loops=1)
                                 Buffers: shared hit=2 read=2992
 Planning Time: 5664.936 ms
 Execution Time: 19387.645 ms
(57 rows)

