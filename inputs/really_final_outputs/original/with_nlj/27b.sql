 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=2414.151..2414.152 rows=1 loops=1)
   Buffers: shared hit=52559 read=5748
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=836.703..2398.731 rows=247 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=52559 read=5748
         ->  Nested Loop  (cost=0.10..129.25 rows=1 width=52) (actual time=836.558..2397.580 rows=247 loops=1)
               Buffers: shared hit=52313 read=5747
               ->  Nested Loop  (cost=0.09..129.23 rows=1 width=37) (actual time=777.172..2274.740 rows=532 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=50201 read=5731
                     ->  Nested Loop  (cost=0.08..129.20 rows=1 width=49) (actual time=729.264..2225.191 rows=95 loops=1)
                           Join Filter: (cc.status_id = cct2.id)
                           Rows Removed by Join Filter: 57
                           Buffers: shared hit=49731 read=5726
                           ->  Nested Loop  (cost=0.08..129.17 rows=1 width=53) (actual time=729.240..2224.484 rows=152 loops=1)
                                 Join Filter: (ml.movie_id = mi.movie_id)
                                 Buffers: shared hit=49579 read=5726
                                 ->  Nested Loop  (cost=0.06..129.01 rows=1 width=49) (actual time=632.637..2066.508 rows=57 loops=1)
                                       Join Filter: (cct1.id = cc.subject_id)
                                       Rows Removed by Join Filter: 19
                                       Buffers: shared hit=48891 read=5711
                                       ->  Nested Loop  (cost=0.06..128.98 rows=1 width=53) (actual time=632.479..2066.084 rows=57 loops=1)
                                             Join Filter: (ml.movie_id = cc.movie_id)
                                             Buffers: shared hit=48835 read=5710
                                             ->  Nested Loop  (cost=0.05..128.97 rows=1 width=41) (actual time=321.950..2002.216 rows=77 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=48553 read=5704
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=78.920..1478.837 rows=199 loops=1)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47810 read=5651
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=11.086..11.100 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=33.955..733.718 rows=251 loops=2)
                                                               Buffers: shared hit=47810 read=5650
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.720..651.341 rows=10544 loops=2)
                                                                     Buffers: shared hit=5606 read=5606
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.497..11.499 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.216..635.517 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5602 read=5602
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42204 read=44
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.628..2.628 rows=0 loops=199)
                                                         Index Cond: (id = mk.movie_id)
                                                         Filter: (production_year = 1998)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=743 read=53
                                             ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.505..0.827 rows=1 loops=77)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=282 read=6
                                       ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.004..0.005 rows=1 loops=57)
                                             Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                             Buffers: shared hit=56 read=1
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=2.257..2.768 rows=3 loops=57)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                       Rows Removed by Filter: 10
                                       Buffers: shared hit=688 read=15
                           ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=152)
                                 Filter: ((kind)::text = 'complete'::text)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=152
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.513..0.517 rows=6 loops=95)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=470 read=5
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.230..0.230 rows=0 loops=532)
                     Index Cond: (id = mc.company_id)
                     Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                     Rows Removed by Filter: 1
                     Buffers: shared hit=2112 read=16
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=247)
               Filter: ((kind)::text = 'production companies'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=246 read=1
 Planning Time: 10417.873 ms
 Execution Time: 2433.701 ms
