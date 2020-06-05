                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22225.01..22225.02 rows=1 width=64) (actual time=27235.837..27235.837 rows=1 loops=1)
   Buffers: shared hit=4 read=401900
   ->  Hash Join  (cost=7682.35..22224.99 rows=188 width=33) (actual time=7672.108..27155.843 rows=249455 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=4 read=401900
         ->  Hash Join  (cost=7130.30..21672.28 rows=216 width=25) (actual time=7089.407..26501.778 rows=169273 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=1 read=390505
               ->  Hash Join  (cost=4486.03..19027.99 rows=216 width=21) (actual time=4368.471..23723.826 rows=169273 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=1 read=334892
                     ->  Hash Join  (cost=1798.21..15183.91 rows=9928062 width=29) (actual time=1859.312..18953.074 rows=11826137 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=1 read=288651
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=6.352..4215.518 rows=36244344 loops=1)
                                 Buffers: shared read=252654
                           ->  Hash  (cost=1696.56..1696.56 rows=692556 width=21) (actual time=1849.831..1849.831 rows=692556 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 44829kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=692556 width=21) (actual time=0.038..1543.601 rows=692556 loops=1)
                                       Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                       Rows Removed by Filter: 1835756
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2508.993..2508.993 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared read=46241
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1396.985..2492.029 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared read=46241
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.532..1049.621 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=4.735..304.681 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.090..138.090 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.540..108.588 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1243.436..1243.436 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared read=24458
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=40.979..1232.125 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=24458
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.423..566.690 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.412..38.412 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.392..38.395 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2710.317..2710.317 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.083..1396.779 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=574.662..574.662 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=25.754..302.402 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 6478.241 ms
 Execution Time: 27262.056 ms
(67 rows)

