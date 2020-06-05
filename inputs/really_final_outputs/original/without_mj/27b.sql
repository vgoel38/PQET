                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=3200.303..3200.304 rows=1 loops=1)
   Buffers: shared hit=55445 read=5927
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=1458.561..3185.060 rows=247 loops=1)
         Buffers: shared hit=55445 read=5927
         ->  Nested Loop  (cost=0.09..129.26 rows=1 width=33) (actual time=1399.199..3063.928 rows=532 loops=1)
               Join Filter: (ct.id = mc.company_type_id)
               Buffers: shared hit=53333 read=5911
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=24.436..24.438 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.09..129.23 rows=1 width=37) (actual time=1374.756..3039.306 rows=532 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=53333 read=5910
                     ->  Nested Loop  (cost=0.08..129.20 rows=1 width=49) (actual time=1321.769..2985.378 rows=95 loops=1)
                           Join Filter: (cct.id = cc.subject_id)
                           Rows Removed by Join Filter: 57
                           Buffers: shared hit=52863 read=5905
                           ->  Nested Loop  (cost=0.08..129.17 rows=1 width=53) (actual time=1321.740..2985.068 rows=95 loops=1)
                                 Join Filter: (cct.id = cc.status_id)
                                 Rows Removed by Join Filter: 57
                                 Buffers: shared hit=52768 read=5905
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.132..0.134 rows=1 loops=1)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.08..129.13 rows=1 width=57) (actual time=1321.602..2984.875 rows=152 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=52768 read=5904
                                       ->  Nested Loop  (cost=0.06..129.12 rows=1 width=45) (actual time=1228.934..2920.504 rows=209 loops=1)
                                             Join Filter: (ml.movie_id = t.id)
                                             Buffers: shared hit=51994 read=5899
                                             ->  Nested Loop  (cost=0.05..129.08 rows=1 width=24) (actual time=450.398..2789.333 rows=420 loops=1)
                                                   Join Filter: (ml.movie_id = mi.movie_id)
                                                   Buffers: shared hit=50329 read=5884
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=100.692..1626.775 rows=199 loops=1)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47810 read=5651
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.125..0.154 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=50.320..813.197 rows=251 loops=2)
                                                               Buffers: shared hit=47810 read=5650
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.768..692.400 rows=10544 loops=2)
                                                                     Buffers: shared hit=5606 read=5606
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.549..11.551 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.212..676.860 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5602 read=5602
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.011..0.011 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42204 read=44
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=5.718..5.840 rows=2 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                         Rows Removed by Filter: 18
                                                         Buffers: shared hit=2519 read=233
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.311..0.311 rows=0 loops=420)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year = 1998)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=1665 read=15
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.182..0.307 rows=1 loops=209)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=774 read=5
                           ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.001..0.001 rows=2 loops=95)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Buffers: shared hit=95
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.562..0.565 rows=6 loops=95)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=470 read=5
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.227..0.227 rows=0 loops=532)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=2112 read=16
 Planning Time: 10478.228 ms
 Execution Time: 3200.773 ms
(84 rows)

