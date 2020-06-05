                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.21..129.21 rows=1 width=96) (actual time=3014.368..3014.368 rows=1 loops=1)
   Buffers: shared hit=66213 read=5853
   ->  Nested Loop  (cost=0.09..129.21 rows=1 width=48) (actual time=440.584..3002.698 rows=1874 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=66213 read=5853
         ->  Nested Loop  (cost=0.08..129.16 rows=1 width=47) (actual time=411.194..2807.707 rows=1874 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=58734 read=5836
               ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=344.595..2323.824 rows=402 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 20
                     Buffers: shared hit=53169 read=5772
                     ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=344.570..2322.060 rows=422 loops=1)
                           Buffers: shared hit=52747 read=5772
                           ->  Nested Loop  (cost=0.05..128.95 rows=1 width=32) (actual time=76.289..1773.098 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=48736 read=5699
                                 ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=49.949..1493.095 rows=199 loops=1)
                                       Join Filter: (ml.link_type_id = lt.id)
                                       Rows Removed by Join Filter: 303
                                       Buffers: shared hit=47817 read=5644
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.016..0.031 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..128.89 rows=3 width=12) (actual time=25.005..746.396 rows=251 loops=2)
                                             Buffers: shared hit=47816 read=5644
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=24.981..665.570 rows=10544 loops=2)
                                                   Buffers: shared hit=5608 read=5604
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=17.006..17.008 rows=1 loops=2)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared hit=4 read=4
                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.968..644.729 rows=10544 loops=2)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=5604 read=5600
                                             ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=21088)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=42208 read=40
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.298..1.402 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=919 read=55
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.536..0.536 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4011 read=73
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=422)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=422
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=1.018..1.200 rows=5 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                     Rows Removed by Filter: 16
                     Buffers: shared hit=5565 read=64
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.103..0.103 rows=1 loops=1874)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Buffers: shared hit=7479 read=17
 Planning Time: 5890.710 ms
 Execution Time: 3061.438 ms
(63 rows)

