                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20116.57..20116.57 rows=1 width=32) (actual time=18838.270..18838.270 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=6726.41..20116.57 rows=2 width=15) (actual time=6811.910..18835.525 rows=11538 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=6581.76..19971.91 rows=2 width=19) (actual time=6647.033..18663.907 rows=11538 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=387512
               ->  Hash Join  (cost=2356.77..15742.47 rows=38249 width=19) (actual time=2614.059..14682.187 rows=48290 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=3.643..6195.467 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=4398 width=19) (actual time=2601.730..2601.730 rows=5216 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 339kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=4398 width=19) (actual time=8.363..2596.834 rows=5216 loops=1)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 4162275
                                 Buffers: shared read=55613
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=3964.472..3964.472 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared read=79245
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=3030.804..3914.252 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=79245
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=5.645..391.620 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=3013.491..3013.491 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared read=60456
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1209.360..2993.756 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=60456
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=3.502..1047.226 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1205.765..1205.765 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared read=24458
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.167..1194.781 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared read=24458
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.370..542.018 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.654..46.654 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.636..46.639 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=162.805..162.805 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared read=2994
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.256..95.581 rows=234997 loops=1)
                     Buffers: shared read=2994
 Planning Time: 4890.508 ms
 Execution Time: 18855.307 ms
(57 rows)

