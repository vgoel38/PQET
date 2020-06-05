                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21659.36..21659.36 rows=1 width=32) (actual time=19541.612..19541.612 rows=1 loops=1)
   Buffers: shared hit=3 read=390506
   ->  Hash Join  (cost=7007.17..21659.30 rows=789 width=15) (actual time=7043.307..19128.280 rows=2832555 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=3 read=390506
         ->  Hash Join  (cost=4362.89..19014.96 rows=789 width=4) (actual time=4388.451..15642.973 rows=2832555 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=334893
               ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=46.860..4270.540 rows=36244344 loops=1)
                     Buffers: shared read=252654
               ->  Hash  (cost=4362.88..4362.88 rows=68 width=12) (actual time=4341.538..4341.538 rows=68316 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
                     Buffers: shared read=82239
                     ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=12) (actual time=3183.175..4321.957 rows=68316 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared read=82239
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1430.278..2535.519 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared read=46241
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.747..1055.736 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=4.836..308.168 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.333..138.333 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.728..107.864 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1278.072..1278.072 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared read=24458
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=57.466..1267.105 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=10.676..596.129 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.650..46.650 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.634..46.637 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                           ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=4) (actual time=1726.873..1726.873 rows=2528312 loops=1)
                                 Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=4) (actual time=10.366..890.221 rows=2528312 loops=1)
                                       Buffers: shared read=35998
         ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=19) (actual time=2629.574..2629.575 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=19) (actual time=23.247..1251.402 rows=4167491 loops=1)
                     Buffers: shared read=55613
 Planning Time: 4883.066 ms
 Execution Time: 19564.913 ms
(57 rows)

