                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22165.98..22165.98 rows=1 width=64) (actual time=19523.558..19523.558 rows=1 loops=1)
   Buffers: shared hit=21 read=401883
   ->  Hash Join  (cost=7512.88..22165.94 rows=257 width=33) (actual time=7468.609..19423.790 rows=319932 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=21 read=401883
         ->  Hash Join  (cost=6960.83..21613.00 rows=295 width=25) (actual time=6865.602..18720.208 rows=221609 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=16 read=390490
               ->  Hash Join  (cost=4316.56..18968.70 rows=295 width=21) (actual time=4251.565..16023.151 rows=221609 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=14 read=334879
                     ->  Hash Join  (cost=4175.70..18827.77 rows=819 width=25) (actual time=4058.185..15724.850 rows=329808 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=12 read=331887
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.015..5380.499 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=4175.69..4175.69 rows=71 width=33) (actual time=4058.058..4058.058 rows=11406 loops=1)
                                 Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 941kB
                                 Buffers: shared hit=8 read=79237
                                 ->  Hash Join  (cost=3102.08..4175.69 rows=71 width=33) (actual time=3052.656..4053.305 rows=11406 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=8 read=79237
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..550.298 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=3102.08..3102.08 rows=13 width=25) (actual time=3046.670..3046.670 rows=6926 loops=1)
                                             Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 499kB
                                             Buffers: shared hit=5 read=60451
                                             ->  Hash Join  (cost=1454.78..3102.08 rows=13 width=25) (actual time=1202.316..3042.046 rows=6926 loops=1)
                                                   Hash Cond: (t.id = mk.movie_id)
                                                   Buffers: shared hit=5 read=60451
                                                   ->  Seq Scan on title t  (cost=0.00..1500.26 rows=946906 width=21) (actual time=0.011..1573.505 rows=946906 loops=1)
                                                         Filter: (episode_nr < 100)
                                                         Rows Removed by Filter: 1581406
                                                         Buffers: shared hit=2 read=35996
                                                   ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1202.222..1202.222 rows=41840 loops=1)
                                                         Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                                         Buffers: shared hit=3 read=24455
                                                         ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=39.580..1191.436 rows=41840 loops=1)
                                                               Hash Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared hit=3 read=24455
                                                               ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.012..539.564 rows=4523930 loops=1)
                                                                     Buffers: shared hit=3 read=24451
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=39.437..39.438 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=39.415..39.419 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'character-name-in-title'::text)
                                                                           Buffers: shared read=4
                     ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=192.960..192.960 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=6.242..162.735 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2603.131..2603.132 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=3.725..1320.424 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=595.512..595.512 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.019..313.951 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7586.321 ms
 Execution Time: 19537.650 ms
(67 rows)

