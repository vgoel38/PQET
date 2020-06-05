                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.18..129.18 rows=1 width=96) (actual time=3071.284..3071.285 rows=1 loops=1)
   Buffers: shared hit=35186 read=5918
   ->  Nested Loop  (cost=0.12..129.18 rows=1 width=48) (actual time=487.991..3047.027 rows=477 loops=1)
         Buffers: shared hit=35186 read=5918
         ->  Nested Loop  (cost=0.11..129.16 rows=1 width=33) (actual time=446.371..2822.527 rows=1106 loops=1)
               Buffers: shared hit=30782 read=5898
               ->  Nested Loop  (cost=0.10..129.15 rows=1 width=37) (actual time=446.330..2816.341 rows=1163 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=28456 read=5898
                     ->  Nested Loop  (cost=0.09..129.12 rows=1 width=49) (actual time=413.696..2743.709 rows=154 loops=1)
                           Buffers: shared hit=27693 read=5893
                           ->  Nested Loop  (cost=0.08..129.12 rows=1 width=53) (actual time=413.670..2742.865 rows=154 loops=1)
                                 Buffers: shared hit=27385 read=5893
                                 ->  Nested Loop  (cost=0.08..129.11 rows=1 width=57) (actual time=413.642..2741.627 rows=211 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=26963 read=5893
                                       ->  Nested Loop  (cost=0.07..129.10 rows=1 width=45) (actual time=367.333..2680.337 rows=327 loops=1)
                                             Join Filter: (ml.movie_id = t.id)
                                             Buffers: shared hit=25776 read=5888
                                             ->  Nested Loop  (cost=0.05..129.05 rows=1 width=24) (actual time=337.949..2540.623 rows=420 loops=1)
                                                   Join Filter: (ml.movie_id = mi.movie_id)
                                                   Buffers: shared hit=24109 read=5875
                                                   ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=59.235..1504.891 rows=199 loops=1)
                                                         Buffers: shared hit=21588 read=5644
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=59.214..1503.231 rows=251 loops=1)
                                                               Buffers: shared hit=21086 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.182..1385.616 rows=10544 loops=1)
                                                                     Buffers: shared hit=2 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=35.872..35.876 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.300..1344.017 rows=10544 loops=1)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2 read=5600
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.010..0.010 rows=0 loops=10544)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=21084 read=40
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=1 loops=251)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=502
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=5.089..5.202 rows=2 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                         Rows Removed by Filter: 18
                                                         Buffers: shared hit=2521 read=231
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.331..0.331 rows=1 loops=420)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=1667 read=13
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.126..0.185 rows=1 loops=327)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=1187 read=5
                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=211)
                                       Index Cond: (id = cc.status_id)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=422
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=154)
                                 Index Cond: (id = cc.subject_id)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Buffers: shared hit=308
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.413..0.465 rows=8 loops=154)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=763 read=5
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=1163)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=2326
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.202..0.202 rows=0 loops=1106)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=4404 read=20
 Planning Time: 11426.900 ms
 Execution Time: 3071.759 ms
(81 rows)

