                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=2495.079..2495.080 rows=1 loops=1)
   Buffers: shared hit=59751 read=5781
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=734.227..2481.688 rows=743 loops=1)
         Join Filter: (cc.subject_id = cct1.id)
         Rows Removed by Join Filter: 285
         Buffers: shared hit=59751 read=5781
         ->  Nested Loop  (cost=0.10..129.25 rows=1 width=52) (actual time=734.206..2478.465 rows=1028 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=58723 read=5781
               ->  Nested Loop  (cost=0.09..129.10 rows=1 width=72) (actual time=605.589..2238.438 rows=229 loops=1)
                     Join Filter: (cc.status_id = cct2.id)
                     Rows Removed by Join Filter: 57
                     Buffers: shared hit=55472 read=5755
                     ->  Nested Loop  (cost=0.09..129.07 rows=1 width=76) (actual time=605.563..2237.357 rows=229 loops=1)
                           Join Filter: (ml.movie_id = t.id)
                           Buffers: shared hit=55243 read=5755
                           ->  Nested Loop  (cost=0.07..129.02 rows=1 width=55) (actual time=554.708..2106.279 rows=229 loops=1)
                                 Buffers: shared hit=54334 read=5748
                                 ->  Nested Loop  (cost=0.06..129.00 rows=1 width=40) (actual time=136.629..1785.595 rows=552 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=52159 read=5715
                                       ->  Nested Loop  (cost=0.05..128.99 rows=1 width=28) (actual time=89.658..1710.143 rows=962 loops=1)
                                             Join Filter: (ct.id = mc.company_type_id)
                                             Rows Removed by Join Filter: 59
                                             Buffers: shared hit=48737 read=5699
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=1
                                             ->  Nested Loop  (cost=0.05..128.95 rows=2 width=32) (actual time=89.646..1709.526 rows=1021 loops=1)
                                                   Join Filter: (ml.movie_id = mc.movie_id)
                                                   Buffers: shared hit=48736 read=5699
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=63.303..1407.320 rows=199 loops=1)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47817 read=5644
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.004..0.018 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=3 width=12) (actual time=31.680..703.536 rows=251 loops=2)
                                                               Buffers: shared hit=47816 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.657..639.111 rows=10544 loops=2)
                                                                     Buffers: shared hit=5608 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.751..23.753 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.900..611.481 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5604 read=5600
                                                               ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.005..0.005 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42208 read=40
                                                   ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.388..1.514 rows=5 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (note IS NULL)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared hit=919 read=55
                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.056..0.077 rows=1 loops=962)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=3422 read=16
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.580..0.580 rows=0 loops=552)
                                       Index Cond: (id = mc.company_id)
                                       Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2175 read=33
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.570..0.570 rows=1 loops=229)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                 Buffers: shared hit=909 read=7
                     ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=229)
                           Filter: ((kind)::text ~~ 'complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=229
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.914..1.045 rows=4 loops=229)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                     Rows Removed by Filter: 14
                     Buffers: shared hit=3251 read=26
         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=1028)
               Filter: ((kind)::text = 'cast'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1028
 Planning Time: 11081.996 ms
 Execution Time: 2495.535 ms
(85 rows)

