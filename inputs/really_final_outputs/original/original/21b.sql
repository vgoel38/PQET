                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.21..129.21 rows=1 width=96) (actual time=2951.395..2951.395 rows=1 loops=1)
   Buffers: shared hit=59955 read=5847
   ->  Nested Loop  (cost=0.09..129.20 rows=1 width=48) (actual time=1066.954..2951.301 rows=38 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=59955 read=5847
         ->  Nested Loop  (cost=0.08..129.16 rows=1 width=47) (actual time=486.192..2857.893 rows=308 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=58734 read=5836
               ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=419.595..2374.659 rows=402 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 20
                     Buffers: shared hit=53169 read=5772
                     ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=419.569..2372.560 rows=422 loops=1)
                           Buffers: shared hit=52747 read=5772
                           ->  Nested Loop  (cost=0.05..128.95 rows=1 width=32) (actual time=76.294..1776.798 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=48736 read=5699
                                 ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=49.942..1494.943 rows=199 loops=1)
                                       Join Filter: (ml.link_type_id = lt.id)
                                       Rows Removed by Join Filter: 303
                                       Buffers: shared hit=47817 read=5644
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.015..0.029 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..128.89 rows=3 width=12) (actual time=25.001..747.311 rows=251 loops=2)
                                             Buffers: shared hit=47816 read=5644
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=24.977..665.790 rows=10544 loops=2)
                                                   Buffers: shared hit=5608 read=5604
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=17.005..17.008 rows=1 loops=2)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared hit=4 read=4
                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.965..644.929 rows=10544 loops=2)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=5604 read=5600
                                             ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=21088)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=42208 read=40
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.305..1.411 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=919 read=55
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.582..0.582 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4011 read=73
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=422)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=422
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=1.044..1.200 rows=1 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Germany,German}'::text[]))
                     Rows Removed by Filter: 20
                     Buffers: shared hit=5565 read=64
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.302..0.302 rows=0 loops=308)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 2000) AND (production_year <= 2010))
               Rows Removed by Filter: 1
               Buffers: shared hit=1221 read=11
 Planning Time: 5937.247 ms
 Execution Time: 2978.685 ms
(64 rows)

