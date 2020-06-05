                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11952.14..11952.14 rows=1 width=96) (actual time=12207.054..12207.054 rows=1 loops=1)
   Buffers: shared hit=16 read=228116
   ->  Hash Join  (cost=3517.34..11952.14 rows=1 width=42) (actual time=11350.936..12175.973 rows=4711 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=16 read=228116
         ->  Hash Join  (cost=0.05..8434.51 rows=2892 width=4) (actual time=7633.332..8384.891 rows=325255 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6 read=161890
               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=326846 width=8) (actual time=4921.157..8293.158 rows=327313 loops=1)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 14508407
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.008..0.019 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Hash  (cost=3517.27..3517.27 rows=153 width=54) (actual time=3717.529..3717.529 rows=42332 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4268kB
               Buffers: shared hit=10 read=66226
               ->  Hash Join  (cost=1699.25..3517.27 rows=153 width=54) (actual time=2004.922..3687.969 rows=42332 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=10 read=66226
                     ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=21.416..1348.393 rows=1042800 loops=1)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1485512
                           Buffers: shared hit=1 read=35997
                     ->  Hash  (cost=1699.20..1699.20 rows=372 width=33) (actual time=1972.962..1972.962 rows=91314 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 7033kB
                           Buffers: shared hit=9 read=30229
                           ->  Hash Join  (cost=624.81..1699.20 rows=372 width=33) (actual time=1348.908..1944.246 rows=91314 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=9 read=30229
                                 ->  Hash Join  (cost=624.77..1699.01 rows=1487 width=37) (actual time=766.397..1907.584 rows=188040 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=8 read=30229
                                       ->  Hash Join  (cost=483.92..1557.81 rows=4120 width=22) (actual time=623.117..1664.357 rows=383016 loops=1)
                                             Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=6 read=27237
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..418.393 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=483.66..483.66 rows=1708 width=10) (actual time=623.059..623.059 rows=121572 loops=1)
                                                   Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 5773kB
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Hash Join  (cost=0.05..483.66 rows=1708 width=10) (actual time=0.055..581.352 rows=121572 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=0.023..519.647 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.019 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=142.741..142.741 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=7.407..112.984 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
 Planning Time: 4981.249 ms
 Execution Time: 12207.747 ms
(76 rows)

