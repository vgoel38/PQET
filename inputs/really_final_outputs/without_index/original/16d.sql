                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22268.33..22268.33 rows=1 width=64) (actual time=27582.765..27582.765 rows=1 loops=1)
   Buffers: shared hit=23 read=402826
   ->  Hash Join  (cost=7725.68..22268.30 rows=185 width=33) (actual time=7574.797..27509.982 rows=249455 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=23 read=402826
         ->  Hash Join  (cost=7173.63..21715.60 rows=214 width=25) (actual time=6998.030..26860.796 rows=169273 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=18 read=391433
               ->  Hash Join  (cost=4529.36..19071.31 rows=214 width=21) (actual time=4377.107..24181.682 rows=169273 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=16 read=335822
                     ->  Hash Join  (cost=1798.21..15183.91 rows=9928057 width=29) (actual time=1767.671..19276.678 rows=11826137 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6 read=288646
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244328 width=8) (actual time=0.007..4378.543 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=1696.56..1696.56 rows=692556 width=21) (actual time=1765.193..1765.193 rows=692556 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 44829kB
                                 Buffers: shared hit=2 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=692556 width=21) (actual time=0.023..1459.556 rows=692556 loops=1)
                                       Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                       Rows Removed by Filter: 1835756
                                       Buffers: shared hit=2 read=35996
                     ->  Hash  (cost=2731.13..2731.13 rows=68 width=8) (actual time=2609.272..2609.272 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=10 read=47176
                           ->  Hash Join  (cost=1638.97..2731.13 rows=68 width=8) (actual time=1396.830..2591.646 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=10 read=47176
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.269..1140.705 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..375.324 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=142.853..142.853 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.523..112.770 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1498.10..1498.10 rows=34 width=4) (actual time=1245.636..1245.636 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=5 read=25398
                                       ->  Hash Join  (cost=49.46..1498.10 rows=34 width=4) (actual time=86.375..1234.971 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=5 read=25398
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.005..534.129 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=49.46..49.46 rows=1 width=4) (actual time=86.318..86.318 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2 read=947
                                                   ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=1 width=4) (actual time=25.077..86.313 rows=1 loops=1)
                                                         Filter: (keyword = 'character-name-in-title'::text)
                                                         Rows Removed by Filter: 134169
                                                         Buffers: shared hit=2 read=947
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2610.608..2610.608 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=5.303..1332.119 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=574.151..574.151 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.009..298.379 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7154.105 ms
 Execution Time: 27588.733 ms
(68 rows)

