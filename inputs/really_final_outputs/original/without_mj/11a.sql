                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.05..129.05 rows=1 width=96) (actual time=2886.041..2886.041 rows=1 loops=1)
   Buffers: shared hit=54745 read=5804
   ->  Nested Loop  (cost=0.08..129.05 rows=1 width=48) (actual time=521.572..2875.579 rows=310 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=54745 read=5804
         ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=475.725..2633.628 rows=402 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 20
               Buffers: shared hit=53156 read=5785
               ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=475.571..2631.128 rows=422 loops=1)
                     Buffers: shared hit=52735 read=5784
                     ->  Nested Loop  (cost=0.05..128.96 rows=1 width=32) (actual time=115.634..2044.614 rows=1021 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=48727 read=5708
                           ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=76.531..1732.469 rows=199 loops=1)
                                 Join Filter: (ml.link_type_id = lt.id)
                                 Rows Removed by Join Filter: 303
                                 Buffers: shared hit=47810 read=5651
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.130..0.143 rows=2 loops=1)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 16
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=38.238..866.004 rows=251 loops=2)
                                       Buffers: shared hit=47810 read=5650
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=37.999..757.065 rows=10544 loops=2)
                                             Buffers: shared hit=5606 read=5606
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=15.791..15.792 rows=1 loops=2)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared hit=4 read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.201..737.255 rows=10544 loops=2)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=5602 read=5602
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.010..0.010 rows=0 loops=21088)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=42204 read=44
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.371..1.562 rows=5 loops=199)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=917 read=57
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.573..0.573 rows=0 loops=1021)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4008 read=76
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=422)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=421 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.600..0.600 rows=1 loops=402)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 0
               Buffers: shared hit=1589 read=19
 Planning Time: 3014.014 ms
 Execution Time: 2928.988 ms
(56 rows)

