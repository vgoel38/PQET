                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21090.42..21090.42 rows=1 width=64) (actual time=19750.579..19750.579 rows=1 loops=1)
   Buffers: shared hit=4 read=401900
   ->  Hash Join  (cost=7590.71..21090.42 rows=19 width=33) (actual time=7622.964..19750.080 rows=385 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=4 read=401900
         ->  Hash Join  (cost=7038.66..20538.31 rows=21 width=25) (actual time=7040.367..19167.109 rows=323 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=1 read=390505
               ->  Hash Join  (cost=4394.39..17894.03 rows=21 width=21) (actual time=4388.972..16515.256 rows=323 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=1 read=334892
                     ->  Hash Join  (cost=1706.57..15092.27 rows=978319 width=29) (actual time=1878.904..13780.880 rows=1166027 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=1 read=288651
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=51.003..4766.286 rows=36244344 loops=1)
                                 Buffers: shared read=252654
                           ->  Hash  (cost=1696.56..1696.56 rows=68245 width=21) (actual time=1826.830..1826.830 rows=68245 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4499kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=68245 width=21) (actual time=0.059..1781.735 rows=68245 loops=1)
                                       Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                       Rows Removed by Filter: 2460067
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2461.334..2461.334 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared read=46241
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1355.260..2444.328 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared read=46241
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.539..1041.922 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=4.867..312.472 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=137.727..137.727 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.321..109.169 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1203.381..1203.381 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared read=24458
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=49.343..1192.122 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.533..529.525 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.667..46.667 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.643..46.647 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2641.182..2641.182 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=38.975..1354.677 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=574.502..574.502 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=25.726..303.249 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 6492.666 ms
 Execution Time: 19820.101 ms
(67 rows)

