                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22213.85..22213.85 rows=1 width=64) (actual time=21861.211..21861.211 rows=1 loops=1)
   Buffers: shared hit=3 read=401901
   ->  Hash Join  (cost=7559.21..22213.75 rows=686 width=33) (actual time=7868.965..21062.109 rows=3710592 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=3 read=401901
         ->  Hash Join  (cost=7007.17..21659.30 rows=789 width=25) (actual time=7277.249..19488.047 rows=2832555 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared read=390506
               ->  Hash Join  (cost=4362.89..19014.96 rows=789 width=21) (actual time=4623.654..15978.788 rows=2832555 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared read=334893
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=48.041..4088.029 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=4362.88..4362.88 rows=68 width=29) (actual time=4575.560..4575.560 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5548kB
                           Buffers: shared read=82239
                           ->  Hash Join  (cost=3270.71..4362.88 rows=68 width=29) (actual time=3174.515..4552.089 rows=68316 loops=1)
                                 Hash Cond: (mk.movie_id = t.id)
                                 Buffers: shared read=82239
                                 ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1430.245..2771.803 rows=68316 loops=1)
                                       Hash Cond: (mc.movie_id = mk.movie_id)
                                       Buffers: shared read=46241
                                       ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=144.347..1285.087 rows=1153798 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared read=21783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=5.135..511.197 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.620..138.620 rows=84843 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.623..110.232 rows=84843 loops=1)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Rows Removed by Filter: 150154
                                                         Buffers: shared read=2994
                                       ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1277.841..1277.842 rows=41840 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                             Buffers: shared read=24458
                                             ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=57.144..1267.213 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared read=24458
                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=10.368..605.887 rows=4523930 loops=1)
                                                         Buffers: shared read=24454
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.628..46.628 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.607..46.611 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                                 ->  Hash  (cost=1303.96..1303.96 rows=2528312 width=21) (actual time=1718.349..1718.349 rows=2528312 loops=1)
                                       Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                                       Buffers: shared read=35998
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=10.468..860.615 rows=2528312 loops=1)
                                             Buffers: shared read=35998
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2642.346..2642.346 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=45.518..1377.413 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=583.695..583.695 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=25.806..305.785 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 6947.974 ms
 Execution Time: 21895.365 ms
(65 rows)

