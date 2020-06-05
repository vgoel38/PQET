                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=3393.282..3393.282 rows=1 loops=1)
   Buffers: shared hit=58495 read=5938
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=1487.054..3369.158 rows=477 loops=1)
         Buffers: shared hit=58495 read=5938
         ->  Nested Loop  (cost=0.09..129.26 rows=1 width=33) (actual time=1381.136..3130.385 rows=1106 loops=1)
               Join Filter: (ct.id = mc.company_type_id)
               Rows Removed by Join Filter: 57
               Buffers: shared hit=54094 read=5915
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=14.730..14.732 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.09..129.23 rows=1 width=37) (actual time=1359.446..3114.955 rows=1163 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=54094 read=5914
                     ->  Nested Loop  (cost=0.08..129.20 rows=1 width=49) (actual time=1313.418..3020.985 rows=154 loops=1)
                           Join Filter: (cct1.id = cc.subject_id)
                           Rows Removed by Join Filter: 57
                           Buffers: shared hit=53333 read=5907
                           ->  Nested Loop  (cost=0.08..129.17 rows=1 width=53) (actual time=1313.391..3020.276 rows=154 loops=1)
                                 Join Filter: (cct2.id = cc.status_id)
                                 Rows Removed by Join Filter: 57
                                 Buffers: shared hit=53179 read=5907
                                 ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.119..0.120 rows=1 loops=1)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.08..129.13 rows=1 width=57) (actual time=1313.266..3020.011 rows=211 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=53179 read=5906
                                       ->  Nested Loop  (cost=0.06..129.12 rows=1 width=45) (actual time=521.468..2940.475 rows=327 loops=1)
                                             Join Filter: (ml.movie_id = t.id)
                                             Buffers: shared hit=51994 read=5899
                                             ->  Nested Loop  (cost=0.05..129.08 rows=1 width=24) (actual time=475.405..2808.290 rows=420 loops=1)
                                                   Join Filter: (ml.movie_id = mi.movie_id)
                                                   Buffers: shared hit=50329 read=5884
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=92.377..1582.232 rows=199 loops=1)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47810 read=5651
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.124..0.138 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=46.163..790.911 rows=251 loops=2)
                                                               Buffers: shared hit=47810 read=5650
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.775..677.980 rows=10544 loops=2)
                                                                     Buffers: shared hit=5606 read=5606
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.562..11.564 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.206..662.557 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5602 read=5602
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.010..0.010 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42204 read=44
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=6.033..6.158 rows=2 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                         Rows Removed by Filter: 18
                                                         Buffers: shared hit=2519 read=233
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.313..0.313 rows=1 loops=420)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=1665 read=15
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.182..0.241 rows=1 loops=327)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=1185 read=7
                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=154)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Buffers: shared hit=154
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.553..0.604 rows=8 loops=154)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=761 read=7
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.215..0.215 rows=0 loops=1106)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=4401 read=23
 Planning Time: 10554.569 ms
 Execution Time: 3393.736 ms
(85 rows)

