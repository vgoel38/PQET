                                                                                             QUERY PLAN                                                                                             
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4332.30..4332.30 rows=1 width=96) (actual time=4368.621..4368.621 rows=1 loops=1)
   Buffers: shared hit=9 read=82409
   ->  Hash Join  (cost=2565.66..4332.29 rows=12 width=60) (actual time=2636.302..4350.983 rows=14899 loops=1)
         Hash Cond: (t.id = ml.movie_id)
         Buffers: shared hit=9 read=82409
         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=2287272 width=21) (actual time=19.362..1291.151 rows=2287271 loops=1)
               Filter: (production_year > 1950)
               Rows Removed by Filter: 241041
               Buffers: shared read=35998
         ->  Hash  (cost=2565.66..2565.66 rows=13 width=55) (actual time=2610.149..2610.149 rows=14899 loops=1)
               Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1668kB
               Buffers: shared hit=6 read=46411
               ->  Hash Join  (cost=1640.18..2565.66 rows=13 width=55) (actual time=1588.297..2600.755 rows=14899 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=6 read=46411
                     ->  Hash Join  (cost=1480.94..2406.42 rows=14 width=40) (actual time=1438.333..2441.397 rows=14916 loops=1)
                           Hash Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=6 read=43417
                           ->  Hash Join  (cost=1480.91..2406.39 rows=19 width=44) (actual time=1418.288..2412.937 rows=15510 loops=1)
                                 Hash Cond: (mc.movie_id = ml.movie_id)
                                 Buffers: shared hit=6 read=43416
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1337140 width=36) (actual time=0.134..813.099 rows=1337140 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 1271989
                                       Buffers: shared read=18789
                                 ->  Hash  (cost=1480.91..1480.91 rows=7 width=8) (actual time=1409.353..1409.353 rows=1460 loops=1)
                                       Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 74kB
                                       Buffers: shared hit=6 read=24627
                                       ->  Hash Join  (cost=30.02..1480.91 rows=7 width=8) (actual time=123.567..1408.644 rows=1460 loops=1)
                                             Hash Cond: (ml.link_type_id = lt.id)
                                             Buffers: shared hit=6 read=24627
                                             ->  Hash Join  (cost=29.99..1480.87 rows=7 width=12) (actual time=123.414..1407.694 rows=1460 loops=1)
                                                   Hash Cond: (mk.movie_id = ml.movie_id)
                                                   Buffers: shared hit=6 read=24626
                                                   ->  Hash Join  (cost=18.40..1467.04 rows=101 width=4) (actual time=98.036..1370.803 rows=47403 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=6 read=24463
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=25.254..665.212 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=18.40..18.40 rows=3 width=4) (actual time=72.334..72.335 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=6 read=9
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=45.664..72.306 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                                     Buffers: shared hit=6 read=9
                                                   ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=25.086..25.086 rows=29997 loops=1)
                                                         Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                                         Buffers: shared read=163
                                                         ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.113..12.055 rows=29997 loops=1)
                                                               Buffers: shared read=163
                                             ->  Hash  (cost=0.03..0.03 rows=18 width=4) (actual time=0.120..0.121 rows=18 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=1
                                                   ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.092..0.102 rows=18 loops=1)
                                                         Buffers: shared read=1
                           ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=20.024..20.024 rows=3 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=20.001..20.007 rows=3 loops=1)
                                       Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared read=1
                     ->  Hash  (cost=128.41..128.41 rows=210031 width=23) (actual time=147.919..147.919 rows=210031 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 13720kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=210031 width=23) (actual time=5.909..82.668 rows=210031 loops=1)
                                 Filter: ((country_code)::text <> '[pl]'::text)
                                 Rows Removed by Filter: 24966
                                 Buffers: shared read=2994
 Planning Time: 3075.497 ms
 Execution Time: 4369.307 ms
(71 rows)

