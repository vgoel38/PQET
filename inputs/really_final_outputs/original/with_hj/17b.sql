                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20153.30..20153.30 rows=1 width=64) (actual time=18868.813..18868.813 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=6731.06..20153.30 rows=19 width=15) (actual time=10743.064..18851.326 rows=52306 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=6586.41..20008.64 rows=19 width=19) (actual time=10585.709..18674.321 rows=52306 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=387512
               ->  Hash Join  (cost=2361.42..15747.12 rows=313707 width=19) (actual time=6608.091..14632.572 rows=268710 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=44.489..5978.186 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=36071 width=19) (actual time=2692.725..2692.725 rows=36174 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 2381kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=36071 width=19) (actual time=1123.247..2670.550 rows=36174 loops=1)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 4131317
                                 Buffers: shared read=55613
               ->  Hash  (cost=4224.96..4224.96 rows=190 width=16) (actual time=3977.584..3977.584 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared read=79245
                     ->  Hash Join  (cost=3151.35..4224.96 rows=190 width=16) (actual time=3052.405..3930.330 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=79245
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=10.583..390.448 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=3151.34..3151.34 rows=34 width=8) (actual time=3030.078..3030.078 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared read=60456
                                 ->  Hash Join  (cost=1454.78..3151.34 rows=34 width=8) (actual time=1208.784..3012.115 rows=41840 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared read=60456
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=3.500..1096.536 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1205.187..1205.187 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared read=24458
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=51.122..1194.531 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared read=24458
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.322..535.628 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.655..46.655 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.638..46.642 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
         ->  Hash  (cost=110.16..110.16 rows=234997 width=4) (actual time=155.288..155.288 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared read=2994
               ->  Seq Scan on company_name cn  (cost=0.00..110.16 rows=234997 width=4) (actual time=19.267..89.606 rows=234997 loops=1)
                     Buffers: shared read=2994
 Planning Time: 5156.521 ms
 Execution Time: 18894.744 ms
(57 rows)

