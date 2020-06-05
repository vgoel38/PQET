                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.21..129.21 rows=1 width=96) (actual time=3054.515..3054.516 rows=1 loops=1)
   Buffers: shared hit=66196 read=5870
   ->  Nested Loop  (cost=0.09..129.21 rows=1 width=48) (actual time=578.339..3043.209 rows=1874 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=66196 read=5870
         ->  Nested Loop  (cost=0.08..129.17 rows=1 width=47) (actual time=540.620..2831.427 rows=1874 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=58719 read=5851
               ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=482.495..2387.783 rows=402 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 20
                     Buffers: shared hit=53156 read=5785
                     ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=482.339..2385.922 rows=422 loops=1)
                           Buffers: shared hit=52735 read=5784
                           ->  Nested Loop  (cost=0.05..128.96 rows=1 width=32) (actual time=122.390..1753.337 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=48727 read=5708
                                 ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=83.274..1499.831 rows=199 loops=1)
                                       Join Filter: (ml.link_type_id = lt.id)
                                       Rows Removed by Join Filter: 303
                                       Buffers: shared hit=47810 read=5651
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=15.458..15.472 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=33.944..742.052 rows=251 loops=2)
                                             Buffers: shared hit=47810 read=5650
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.718..650.603 rows=10544 loops=2)
                                                   Buffers: shared hit=5606 read=5606
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.501..11.503 rows=1 loops=2)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared hit=4 read=4
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.210..635.205 rows=10544 loops=2)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=5602 read=5602
                                             ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.008..0.008 rows=0 loops=21088)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=42204 read=44
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.164..1.269 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=917 read=57
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.618..0.618 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4008 read=76
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=422)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=421 read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.939..1.100 rows=5 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                     Rows Removed by Filter: 16
                     Buffers: shared hit=5563 read=66
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.112..0.112 rows=1 loops=1874)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Buffers: shared hit=7477 read=19
 Planning Time: 5224.673 ms
 Execution Time: 3054.965 ms
(63 rows)

