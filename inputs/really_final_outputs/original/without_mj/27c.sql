                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=4165.303..4165.303 rows=1 loops=1)
   Buffers: shared hit=63208 read=6021
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=1909.116..4151.743 rows=743 loops=1)
         Join Filter: (cc.status_id = cct.id)
         Rows Removed by Join Filter: 285
         Buffers: shared hit=63208 read=6021
         ->  Nested Loop  (cost=0.10..129.25 rows=1 width=52) (actual time=1909.087..4147.886 rows=743 loops=1)
               Join Filter: (ct.id = mc.company_type_id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=62465 read=6021
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=18.355..18.357 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.10..129.22 rows=1 width=56) (actual time=1863.384..4128.935 rows=838 loops=1)
                     Buffers: shared hit=62465 read=6020
                     ->  Nested Loop  (cost=0.09..129.20 rows=1 width=41) (actual time=574.958..3707.885 rows=1913 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=54854 read=5979
                           ->  Nested Loop  (cost=0.08..129.17 rows=1 width=53) (actual time=527.999..3469.359 rows=251 loops=1)
                                 Join Filter: (cct.id = cc.subject_id)
                                 Rows Removed by Join Filter: 95
                                 Buffers: shared hit=53638 read=5956
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                       Filter: ((kind)::text = 'cast'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.08..129.14 rows=1 width=57) (actual time=527.982..3469.089 rows=346 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=53637 read=5956
                                       ->  Nested Loop  (cost=0.06..129.12 rows=1 width=45) (actual time=265.415..3352.723 rows=746 loops=1)
                                             Join Filter: (ml.movie_id = mi.movie_id)
                                             Buffers: shared hit=51072 read=5937
                                             ->  Nested Loop  (cost=0.05..128.97 rows=1 width=41) (actual time=130.100..2138.161 rows=199 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=48553 read=5704
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=92.478..1578.217 rows=199 loops=1)
                                                         Join Filter: (ml.link_type_id = lt.id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=47810 read=5651
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.273..0.287 rows=2 loops=1)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared read=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=46.128..788.831 rows=251 loops=2)
                                                               Buffers: shared hit=47810 read=5650
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.749..676.372 rows=10544 loops=2)
                                                                     Buffers: shared hit=5606 read=5606
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.544..11.546 rows=1 loops=2)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=4 read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.200..661.032 rows=10544 loops=2)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=5602 read=5602
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.010..0.010 rows=0 loops=21088)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=42204 read=44
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.811..2.811 rows=1 loops=199)
                                                         Index Cond: (id = mk.movie_id)
                                                         Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                                         Buffers: shared hit=743 read=53
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=5.961..6.099 rows=4 loops=199)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                                   Rows Removed by Filter: 17
                                                   Buffers: shared hit=2519 read=233
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.119..0.154 rows=0 loops=746)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=2565 read=19
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.872..0.944 rows=8 loops=251)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1216 read=23
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.219..0.219 rows=0 loops=1913)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=7611 read=41
         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=743)
               Filter: ((kind)::text ~~ 'complete%'::text)
               Rows Removed by Filter: 2
               Buffers: shared hit=743
 Planning Time: 10456.143 ms
 Execution Time: 4165.765 ms
(85 rows)

