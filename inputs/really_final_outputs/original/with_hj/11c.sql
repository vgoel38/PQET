                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4288.20..4288.20 rows=1 width=96) (actual time=4349.788..4349.788 rows=1 loops=1)
   Buffers: shared hit=9 read=82409
   ->  Hash Join  (cost=2521.56..4288.20 rows=1 width=60) (actual time=2654.148..4347.172 rows=6946 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=9 read=82409
         ->  Hash Join  (cost=2521.53..4288.16 rows=1 width=64) (actual time=2654.042..4345.458 rows=6946 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=6 read=82408
               ->  Hash Join  (cost=2521.50..4288.13 rows=1 width=68) (actual time=2653.964..4343.655 rows=6946 loops=1)
                     Hash Cond: (t.id = ml.movie_id)
                     Buffers: shared hit=6 read=82407
                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=21) (actual time=16.826..1326.107 rows=2287271 loops=1)
                           Filter: (production_year > 1950)
                           Rows Removed by Filter: 241041
                           Buffers: shared read=35998
                     ->  Hash  (cost=2521.50..2521.50 rows=1 width=63) (actual time=2621.165..2621.165 rows=6946 loops=1)
                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 937kB
                           Buffers: shared hit=6 read=46409
                           ->  Hash Join  (cost=1072.84..2521.50 rows=1 width=63) (actual time=1198.685..2613.806 rows=6946 loops=1)
                                 Hash Cond: (mk.movie_id = ml.movie_id)
                                 Buffers: shared hit=6 read=46409
                                 ->  Hash Join  (cost=18.40..1467.04 rows=101 width=4) (actual time=77.112..1500.378 rows=47403 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=6 read=24463
                                       ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.339..781.741 rows=4523930 loops=1)
                                             Buffers: shared read=24454
                                       ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=72.321..72.322 rows=3 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=6 read=9
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=45.611..72.300 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                 ->  Hash  (cost=1054.44..1054.44 rows=30 width=59) (actual time=1099.965..1099.965 rows=8402 loops=1)
                                       Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1134kB
                                       Buffers: shared read=21946
                                       ->  Hash Join  (cost=1043.76..1054.44 rows=30 width=59) (actual time=1087.665..1097.207 rows=8402 loops=1)
                                             Hash Cond: (ml.movie_id = mc.movie_id)
                                             Buffers: shared read=21946
                                             ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=10.345..34.844 rows=29997 loops=1)
                                                   Buffers: shared read=163
                                             ->  Hash  (cost=1043.67..1043.67 rows=569 width=51) (actual time=1055.419..1055.419 rows=13893 loops=1)
                                                   Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1531kB
                                                   Buffers: shared read=21783
                                                   ->  Hash Join  (cost=164.91..1043.67 rows=569 width=51) (actual time=168.564..1049.593 rows=13893 loops=1)
                                                         Hash Cond: (mc.company_id = cn.id)
                                                         Buffers: shared read=21783
                                                         ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=25.560..734.906 rows=1337140 loops=1)
                                                               Filter: (note IS NOT NULL)
                                                               Rows Removed by Filter: 1271989
                                                               Buffers: shared read=18789
                                                         ->  Hash  (cost=164.90..164.90 rows=100 width=23) (actual time=138.799..138.799 rows=89 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 14kB
                                                               Buffers: shared read=2994
                                                               ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=100 width=23) (actual time=4.285..138.713 rows=89 loops=1)
                                                                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                                                                     Rows Removed by Filter: 234908
                                                                     Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.067..0.067 rows=3 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.062..0.064 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=18 width=4) (actual time=0.082..0.082 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.071..0.074 rows=18 loops=1)
                     Buffers: shared read=1
 Planning Time: 3011.503 ms
 Execution Time: 4350.159 ms
(71 rows)

