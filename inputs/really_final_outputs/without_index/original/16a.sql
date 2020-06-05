                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21133.74..21133.74 rows=1 width=64) (actual time=19768.387..19768.387 rows=1 loops=1)
   Buffers: shared hit=23 read=402826
   ->  Hash Join  (cost=7634.04..21133.74 rows=18 width=33) (actual time=7695.918..19767.849 rows=385 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=23 read=402826
         ->  Hash Join  (cost=7081.99..20581.63 rows=21 width=25) (actual time=7086.562..19158.065 rows=323 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=18 read=391433
               ->  Hash Join  (cost=4437.72..17937.36 rows=21 width=21) (actual time=4441.998..16513.018 rows=323 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=16 read=335822
                     ->  Hash Join  (cost=1706.57..15092.27 rows=978318 width=29) (actual time=1758.355..13600.756 rows=1166027 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6 read=288646
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.006..4641.269 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=1696.56..1696.56 rows=68245 width=21) (actual time=1758.006..1758.006 rows=68245 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4499kB
                                 Buffers: shared hit=2 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=68245 width=21) (actual time=0.020..1716.866 rows=68245 loops=1)
                                       Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                       Rows Removed by Filter: 2460067
                                       Buffers: shared hit=2 read=35996
                     ->  Hash  (cost=2731.13..2731.13 rows=68 width=8) (actual time=2643.255..2643.255 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=10 read=47176
                           ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1397.425..2625.887 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=10 read=47176
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=144.153..1179.422 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.006..425.315 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=143.776..143.776 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.342..116.372 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1245.032..1245.032 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=85.951..1234.551 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..544.593 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=85.892..85.892 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=25.234..85.880 rows=1 loops=1)
                                                         Filter: (keyword = 'character-name-in-title'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2627.355..2627.355 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.199..1349.647 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=601.362..601.362 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.017..318.844 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7565.116 ms
 Execution Time: 19798.792 ms
(68 rows)

