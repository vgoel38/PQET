                                                                        QUERY PLAN                                                                         
-----------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=14107.98..14107.98 rows=1 width=32) (actual time=34733.478..34733.478 rows=1 loops=1)
   Buffers: shared hit=2188 read=61156
   ->  Hash Join  (cost=1757.09..14105.73 rows=28943 width=17) (actual time=2491.780..34730.435 rows=669 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=2188 read=61156
         ->  Nested Loop  (cost=1757.03..14103.29 rows=28943 width=21) (actual time=2468.017..34703.402 rows=669 loops=1)
               Buffers: shared hit=2185 read=61155
               ->  Hash Join  (cost=1757.02..2958.84 rows=29863 width=25) (actual time=2413.626..3541.739 rows=767 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared read=54788
                     ->  Hash Join  (cost=1756.98..2945.96 rows=119452 width=29) (actual time=1765.846..3473.089 rows=105501 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared read=54787
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=172674 width=8) (actual time=34.723..1635.425 rows=295628 loops=1)
                                 Filter: ((note !~~ '%(TV)%'::text) AND (note ~~ '%(USA)%'::text))
                                 Rows Removed by Filter: 2313501
                                 Buffers: shared read=18789
                           ->  Hash  (cost=1500.26..1500.26 rows=1749033 width=21) (actual time=1715.224..1715.224 rows=1749032 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                 Buffers: shared read=35998
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1749033 width=21) (actual time=4.310..1045.818 rows=1749032 loops=1)
                                       Filter: (production_year > 1990)
                                       Rows Removed by Filter: 779280
                                       Buffers: shared read=35998
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=55.391..55.391 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=55.376..55.380 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.37 rows=1 width=8) (actual time=37.405..40.622 rows=1 loops=767)
                     Index Cond: (movie_id = t.id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 10
                     Buffers: shared hit=2185 read=6367
         ->  Hash  (cost=0.04..0.04 rows=113 width=4) (actual time=23.696..23.696 rows=113 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 12kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.04 rows=113 width=4) (actual time=23.557..23.610 rows=113 loops=1)
                     Buffers: shared read=1
 Planning Time: 1706.405 ms
 Execution Time: 34740.506 ms
(43 rows)

