                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21133.74..21133.74 rows=1 width=64) (actual time=19623.628..19623.628 rows=1 loops=1)
   Buffers: shared hit=4 read=402845
   ->  Hash Join  (cost=7634.04..21133.74 rows=18 width=33) (actual time=7576.334..19623.133 rows=385 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=4 read=402845
         ->  Hash Join  (cost=7081.99..20581.63 rows=21 width=25) (actual time=7005.843..19052.242 rows=323 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=1 read=391450
               ->  Hash Join  (cost=4437.72..17937.36 rows=21 width=21) (actual time=4359.637..16405.555 rows=323 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=1 read=335837
                     ->  Hash Join  (cost=1706.57..15092.27 rows=978318 width=29) (actual time=1808.931..13634.309 rows=1166027 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=1 read=288651
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=48.022..4795.548 rows=36244344 loops=1)
                                 Buffers: shared read=252654
                           ->  Hash  (cost=1696.56..1696.56 rows=68245 width=21) (actual time=1759.871..1759.871 rows=68245 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4499kB
                                 Buffers: shared hit=1 read=35997
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=68245 width=21) (actual time=0.059..1717.154 rows=68245 loops=1)
                                       Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                       Rows Removed by Filter: 2460067
                                       Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=2731.13..2731.13 rows=68 width=8) (actual time=2503.198..2503.198 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared read=47186
                           ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1413.822..2486.691 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared read=47186
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=144.884..1033.425 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared read=21783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=5.186..315.000 rows=2609129 loops=1)
                                             Buffers: shared read=18789
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=138.902..138.902 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=2.475..111.402 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1260.591..1260.591 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared read=25403
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=101.906..1249.599 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared read=25403
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=9.849..548.667 rows=4523930 loops=1)
                                                   Buffers: shared read=24454
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=91.966..91.966 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=949
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=30.778..91.959 rows=1 loops=1)
                                                         Filter: (keyword = 'character-name-in-title'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared read=949
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2636.147..2636.147 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=39.303..1369.934 rows=4167491 loops=1)
                           Buffers: shared read=55613
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=567.931..567.931 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared read=11395
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=19.279..308.939 rows=901343 loops=1)
                     Buffers: shared read=11395
 Planning Time: 6343.347 ms
 Execution Time: 19628.917 ms
(68 rows)

