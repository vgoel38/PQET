                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=20503.63..20503.63 rows=1 width=64) (actual time=19422.415..19422.416 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=6769.51..20503.62 rows=65 width=15) (actual time=7071.322..19368.254 rows=258289 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=2406.62..15792.32 rows=2991663 width=19) (actual time=2844.351..14607.791 rows=3118033 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=3 read=308267
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=26.864..5592.337 rows=36244344 loops=1)
                     Buffers: shared read=252654
               ->  Hash  (cost=2356.12..2356.12 rows=343991 width=19) (actual time=2640.522..2640.523 rows=343399 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 21878kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2356.12 rows=343991 width=19) (actual time=89.973..2524.979 rows=343399 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3824092
                           Buffers: shared read=55613
         ->  Hash  (cost=4362.88..4362.88 rows=68 width=12) (actual time=4226.906..4226.907 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
               Buffers: shared read=82239
               ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=12) (actual time=3073.983..4207.688 rows=68316 loops=1)
                     Hash Cond: (mk.movie_id = t.id)
                     Buffers: shared read=82239
                     ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1346.811..2448.018 rows=68316 loops=1)
                           Hash Cond: (mc.movie_id = mk.movie_id)
                           Buffers: shared read=46241
                           ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.242..1056.560 rows=1153798 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared read=21783
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=4.613..322.108 rows=2609129 loops=1)
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.888..137.888 rows=84843 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.515..112.400 rows=84843 loops=1)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 150154
                                             Buffers: shared read=2994
                           ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1195.039..1195.039 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                 Buffers: shared read=24458
                                 ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=41.082..1184.530 rows=41840 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared read=24458
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.531..537.600 rows=4523930 loops=1)
                                             Buffers: shared read=24454
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.421..38.421 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.391..38.395 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
                     ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1717.652..1717.653 rows=2528312 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                           Buffers: shared read=35998
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=9.265..893.631 rows=2528312 loops=1)
                                 Buffers: shared read=35998
 Planning Time: 5137.671 ms
 Execution Time: 19445.618 ms
(59 rows)

