 Aggregate  (cost=129.29..129.29 rows=1 width=96) (actual time=2734.578..2734.578 rows=1 loops=1)
   Buffers: shared hit=119602 read=5773
   ->  Nested Loop  (cost=0.10..129.29 rows=1 width=48) (actual time=908.909..2723.623 rows=743 loops=1)
         Join Filter: (cc.subject_id = cct1.id)
         Rows Removed by Join Filter: 285
         Buffers: shared hit=119602 read=5773
         ->  Nested Loop  (cost=0.10..129.26 rows=1 width=52) (actual time=908.880..2720.034 rows=1028 loops=1)
               Join Filter: (ml.movie_id = t.id)
               Buffers: shared hit=118574 read=5773
               ->  Nested Loop  (cost=0.09..129.21 rows=1 width=55) (actual time=870.855..2608.870 rows=1028 loops=1)
                     Join Filter: (cc.status_id = cct2.id)
                     Rows Removed by Join Filter: 1028
                     Buffers: shared hit=114471 read=5764
                     ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.019..0.020 rows=2 loops=1)
                           Filter: ((kind)::text ~~ 'complete%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=1
                     ->  Nested Loop  (cost=0.09..129.18 rows=2 width=59) (actual time=435.633..1303.994 rows=1028 loops=2)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Buffers: shared hit=114470 read=5764
                           ->  Nested Loop  (cost=0.07..129.02 rows=1 width=55) (actual time=375.041..1174.854 rows=229 loops=2)
                                 Buffers: shared hit=107944 read=5736
                                 ->  Nested Loop  (cost=0.06..129.00 rows=1 width=40) (actual time=134.525..976.511 rows=552 loops=2)
                                       Join Filter: (ct.id = mc.company_type_id)
                                       Rows Removed by Join Filter: 29
                                       Buffers: shared hit=103564 read=5700
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=9.496..9.499 rows=1 loops=2)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1 read=1
                                       ->  Nested Loop  (cost=0.06..128.97 rows=2 width=44) (actual time=125.025..966.726 rows=581 loops=2)
                                             Join Filter: (ml.movie_id = mc.movie_id)
                                             Buffers: shared hit=103563 read=5699
                                             ->  Nested Loop  (cost=0.05..128.94 rows=1 width=32) (actual time=101.531..858.157 rows=98 loops=2)
                                                   Join Filter: (ml.movie_id = cc.movie_id)
                                                   Buffers: shared hit=102639 read=5673
                                                   ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=46.259..796.051 rows=199 loops=2)
                                                         Join Filter: (lt.id = ml.link_type_id)
                                                         Rows Removed by Join Filter: 303
                                                         Buffers: shared hit=101271 read=5651
                                                         ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.145..0.156 rows=2 loops=2)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 16
                                                               Buffers: shared hit=1 read=1
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=23.073..397.859 rows=251 loops=4)
                                                               Buffers: shared hit=101270 read=5650
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=16.880..336.398 rows=10544 loops=4)
                                                                     Buffers: shared hit=16818 read=5606
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=5.768..5.770 rows=1 loops=4)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared hit=12 read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.108..327.599 rows=10544 loops=4)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=16806 read=5602
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.005..0.005 rows=0 loops=42176)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=84452 read=44
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.242..0.311 rows=0 loops=398)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=1368 read=22
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.991..1.103 rows=6 loops=196)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=924 read=26
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.358..0.358 rows=0 loops=1104)
                                       Index Cond: (id = mc.company_id)
                                       Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=4380 read=36
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.414..0.561 rows=4 loops=458)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                 Rows Removed by Filter: 14
                                 Buffers: shared hit=6526 read=28
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.107..0.107 rows=1 loops=1028)
                     Index Cond: (id = mk.movie_id)
                     Filter: ((production_year >= 1950) AND (production_year <= 2010))
                     Buffers: shared hit=4103 read=9
         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=1028)
               Filter: ((kind)::text = 'cast'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1028
 Planning Time: 10674.956 ms
 Execution Time: 2755.569 ms
