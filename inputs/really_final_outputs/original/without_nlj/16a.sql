                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=21090.42..21090.42 rows=1 width=64) (actual time=19893.506..19893.506 rows=1 loops=1)
   Buffers: shared hit=21 read=401883
   ->  Hash Join  (cost=7590.71..21090.42 rows=19 width=33) (actual time=7779.744..19892.992 rows=385 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=21 read=401883
         ->  Hash Join  (cost=7038.66..20538.31 rows=21 width=25) (actual time=7189.231..19302.084 rows=323 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=16 read=390490
               ->  Hash Join  (cost=4394.39..17894.03 rows=21 width=21) (actual time=4576.090..16688.490 rows=323 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=14 read=334879
                     ->  Hash Join  (cost=1706.57..15092.27 rows=978319 width=29) (actual time=1925.405..13814.337 rows=1166027 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6 read=288646
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..4736.139 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=1696.56..1696.56 rows=68245 width=21) (actual time=1925.058..1925.058 rows=68245 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4499kB
                                 Buffers: shared hit=2 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=68245 width=21) (actual time=0.020..1878.026 rows=68245 loops=1)
                                       Filter: ((episode_nr >= 50) AND (episode_nr < 100))
                                       Rows Removed by Filter: 2460067
                                       Buffers: shared hit=2 read=35996
                     ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2605.972..2605.972 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=8 read=46233
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1347.549..2588.100 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=8 read=46233
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=145.662..1190.277 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.007..424.312 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=145.253..145.253 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=8.242..112.696 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1193.421..1193.421 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=3 read=24455
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=39.404..1182.316 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=3 read=24455
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.008..538.454 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=39.281..39.281 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=39.266..39.269 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2603.642..2603.642 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=6.806..1317.549 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=582.689..582.689 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.016..311.494 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7615.609 ms
 Execution Time: 19922.716 ms
(67 rows)

