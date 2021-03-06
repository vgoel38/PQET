                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=22225.01..22225.02 rows=1 width=64) (actual time=27596.343..27596.343 rows=1 loops=1)
   Buffers: shared hit=21 read=401883
   ->  Hash Join  (cost=7682.35..22224.99 rows=188 width=33) (actual time=7540.101..27528.504 rows=249455 loops=1)
         Hash Cond: (n.id = an.person_id)
         Buffers: shared hit=21 read=401883
         ->  Hash Join  (cost=7130.30..21672.28 rows=216 width=25) (actual time=6949.434..26867.035 rows=169273 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=16 read=390490
               ->  Hash Join  (cost=4486.03..19027.99 rows=216 width=21) (actual time=4328.055..24189.049 rows=169273 loops=1)
                     Hash Cond: (ci.movie_id = mk.movie_id)
                     Buffers: shared hit=14 read=334879
                     ->  Hash Join  (cost=1798.21..15183.91 rows=9928062 width=29) (actual time=1767.212..19393.135 rows=11826137 loops=1)
                           Hash Cond: (ci.movie_id = t.id)
                           Buffers: shared hit=6 read=288646
                           ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.006..4825.399 rows=36244344 loops=1)
                                 Buffers: shared hit=4 read=252650
                           ->  Hash  (cost=1696.56..1696.56 rows=692556 width=21) (actual time=1764.702..1764.703 rows=692556 loops=1)
                                 Buckets: 1048576  Batches: 1  Memory Usage: 44829kB
                                 Buffers: shared hit=2 read=35996
                                 ->  Seq Scan on title t  (cost=0.00..1696.56 rows=692556 width=21) (actual time=0.024..1445.175 rows=692556 loops=1)
                                       Filter: ((episode_nr >= 5) AND (episode_nr < 100))
                                       Rows Removed by Filter: 1835756
                                       Buffers: shared hit=2 read=35996
                     ->  Hash  (cost=2687.81..2687.81 rows=68 width=8) (actual time=2560.678..2560.678 rows=68316 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3693kB
                           Buffers: shared hit=8 read=46233
                           ->  Hash Join  (cost=1595.64..2687.81 rows=68 width=8) (actual time=1347.370..2543.267 rows=68316 loops=1)
                                 Hash Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=8 read=46233
                                 ->  Hash Join  (cost=140.86..1123.32 rows=941996 width=4) (actual time=143.848..1147.639 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=5 read=21778
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=8) (actual time=0.008..394.982 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=4) (actual time=143.381..143.382 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=4) (actual time=7.991..111.576 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=1454.78..1454.78 rows=34 width=4) (actual time=1194.929..1194.929 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                                       Buffers: shared hit=3 read=24455
                                       ->  Hash Join  (cost=6.13..1454.78 rows=34 width=4) (actual time=41.028..1184.014 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=3 read=24455
                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..525.049 rows=4523930 loops=1)
                                                   Buffers: shared hit=3 read=24451
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.907..40.907 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.891..40.895 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
               ->  Hash  (cost=2032.56..2032.56 rows=4167491 width=4) (actual time=2611.276..2611.276 rows=4167491 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 179282kB
                     Buffers: shared hit=2 read=55611
                     ->  Seq Scan on name n  (cost=0.00..2032.56 rows=4167491 width=4) (actual time=6.050..1324.439 rows=4167491 loops=1)
                           Buffers: shared hit=2 read=55611
         ->  Hash  (cost=419.75..419.75 rows=901343 width=20) (actual time=582.818..582.818 rows=901343 loops=1)
               Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
               Buffers: shared hit=2 read=11393
               ->  Seq Scan on aka_name an  (cost=0.00..419.75 rows=901343 width=20) (actual time=0.018..302.323 rows=901343 loops=1)
                     Buffers: shared hit=2 read=11393
 Planning Time: 7273.969 ms
 Execution Time: 27617.835 ms
(67 rows)

