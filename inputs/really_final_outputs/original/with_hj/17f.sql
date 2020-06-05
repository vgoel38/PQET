                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20725.90..20725.90 rows=1 width=32) (actual time=19537.803..19537.803 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=6803.55..20725.88 rows=278 width=15) (actual time=6688.797..19360.976 rows=1113120 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=2433.89..15819.59 rows=4607690 width=19) (actual time=2670.659..14176.515 rows=4857682 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=3 read=308267
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=26.879..5074.196 rows=36244344 loops=1)
                     Buffers: shared read=252654
               ->  Hash  (cost=2356.12..2356.12 rows=529807 width=19) (actual time=2635.700..2635.701 rows=536716 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 36076kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=529807 width=19) (actual time=38.653..2395.511 rows=536716 loops=1)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 3630775
                           Buffers: shared read=55613
         ->  Hash  (cost=4369.63..4369.63 rows=188 width=12) (actual time=4018.072..4018.072 rows=148552 loops=1)
               Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8432kB
               Buffers: shared read=82239
               ->  Hash Join  (cost=3296.00..4369.63 rows=188 width=12) (actual time=3089.094..3977.088 rows=148552 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared read=82239
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=2938.244..3761.292 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=79245
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.093..354.138 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=2926.550..2926.550 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared read=60456
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1213.349..2908.079 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=60456
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=8.200..956.003 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1205.061..1205.061 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared read=24458
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.124..1194.282 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared read=24458
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.335..533.869 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.648..46.648 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.633..46.636 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                     ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=149.726..149.726 rows=234997 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 10310kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=7.713..87.271 rows=234997 loops=1)
                                 Buffers: shared read=2994
 Planning Time: 4918.074 ms
 Execution Time: 19553.056 ms
(57 rows)

