                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4286.24..4286.24 rows=1 width=32) (actual time=4437.686..4437.686 rows=1 loops=1)
   Buffers: shared hit=3 read=82239
   ->  Hash Join  (cost=2687.82..4286.23 rows=68 width=17) (actual time=2588.561..4404.016 rows=68316 loops=1)
         Hash Cond: (t.id = mc.movie_id)
         Buffers: shared hit=3 read=82239
         ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.613..1120.662 rows=2528312 loops=1)
               Buffers: shared read=35998
         ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2561.550..2561.550 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
               Buffers: shared read=46241
               ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1363.541..2543.965 rows=68316 loops=1)
                     Hash Cond: (mc.movie_id = mk.movie_id)
                     Buffers: shared read=46241
                     ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.337..1131.402 rows=1153798 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared read=21783
                           ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=4.703..378.486 rows=2609129 loops=1)
                                 Buffers: shared read=18789
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.601..137.602 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.229..108.478 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
                     ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1210.177..1210.178 rows=41840 loops=1)
                           Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                           Buffers: shared read=24458
                           ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=49.401..1199.205 rows=41840 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared read=24458
                                 ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.607..535.610 rows=4523930 loops=1)
                                       Buffers: shared read=24454
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.650..46.650 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.632..46.636 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
 Planning Time: 1906.764 ms
 Execution Time: 4479.956 ms
(41 rows)

