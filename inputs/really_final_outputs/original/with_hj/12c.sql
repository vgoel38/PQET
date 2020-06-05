                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11952.14..11952.14 rows=1 width=96) (actual time=12530.501..12530.501 rows=1 loops=1)
   Buffers: shared hit=4 read=228128
   ->  Hash Join  (cost=3517.34..11952.14 rows=1 width=42) (actual time=11672.917..12504.743 rows=4711 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=4 read=228128
         ->  Hash Join  (cost=0.05..8434.51 rows=2892 width=4) (actual time=7933.264..8690.977 rows=325255 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=3 read=161893
               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=326846 width=8) (actual time=5171.047..8574.969 rows=327313 loops=1)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 14508407
                     Buffers: shared read=161892
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.101..23.101 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.050..23.090 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=3517.27..3517.27 rows=153 width=54) (actual time=3739.567..3739.567 rows=42332 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4268kB
               Buffers: shared hit=1 read=66235
               ->  Hash Join  (cost=1699.25..3517.27 rows=153 width=54) (actual time=2029.684..3709.752 rows=42332 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=1 read=66235
                     ->  Seq Scan on title t  (cost=0.00..1696.56 rows=1042800 width=21) (actual time=21.177..1333.884 rows=1042800 loops=1)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1485512
                           Buffers: shared read=35998
                     ->  Hash  (cost=1699.20..1699.20 rows=372 width=33) (actual time=2002.070..2002.070 rows=91314 loops=1)
                           Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 7033kB
                           Buffers: shared hit=1 read=30237
                           ->  Hash Join  (cost=624.81..1699.20 rows=372 width=33) (actual time=1369.663..1973.304 rows=91314 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=1 read=30237
                                 ->  Hash Join  (cost=624.77..1699.01 rows=1487 width=37) (actual time=779.255..1917.063 rows=188040 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1 read=30236
                                       ->  Hash Join  (cost=483.92..1557.81 rows=4120 width=22) (actual time=621.627..1660.937 rows=383016 loops=1)
                                             Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=1 read=27242
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=2.004..431.493 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=483.66..483.66 rows=1708 width=10) (actual time=619.548..619.548 rows=121572 loops=1)
                                                   Buckets: 131072 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 5773kB
                                                   Buffers: shared hit=1 read=8453
                                                   ->  Hash Join  (cost=0.05..483.66 rows=1708 width=10) (actual time=19.001..578.768 rows=121572 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=1 read=8453
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=18.946..518.422 rows=192967 loops=1)
                                                               Filter: (info > '7.0'::text)
                                                               Rows Removed by Filter: 1187068
                                                               Buffers: shared read=8453
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.037..0.038 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.032 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=157.241..157.241 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=20.911..126.170 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=19.989..19.989 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=19.974..19.978 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
 Planning Time: 4733.033 ms
 Execution Time: 12554.752 ms
(76 rows)

