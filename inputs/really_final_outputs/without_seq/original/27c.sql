                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.18..129.18 rows=1 width=96) (actual time=2748.983..2748.984 rows=1 loops=1)
   Buffers: shared hit=37936 read=5840
   ->  Nested Loop  (cost=0.12..129.18 rows=1 width=48) (actual time=448.949..2735.540 rows=743 loops=1)
         Buffers: shared hit=37936 read=5840
         ->  Nested Loop  (cost=0.11..129.16 rows=1 width=33) (actual time=240.091..2427.724 rows=1808 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=30737 read=5807
               ->  Nested Loop  (cost=0.09..129.00 rows=1 width=53) (actual time=156.799..1880.002 rows=399 loops=1)
                     Buffers: shared hit=24756 read=5708
                     ->  Nested Loop  (cost=0.09..129.00 rows=1 width=57) (actual time=156.775..1877.746 rows=399 loops=1)
                           Buffers: shared hit=23958 read=5708
                           ->  Nested Loop  (cost=0.08..128.99 rows=1 width=61) (actual time=156.732..1875.104 rows=428 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=23102 read=5708
                                 ->  Nested Loop  (cost=0.07..128.96 rows=1 width=49) (actual time=118.378..1744.655 rows=78 loops=1)
                                       Join Filter: (ml.movie_id = t.id)
                                       Buffers: shared hit=22751 read=5684
                                       ->  Nested Loop  (cost=0.06..128.92 rows=1 width=28) (actual time=72.250..1484.540 rows=78 loops=1)
                                             Buffers: shared hit=22460 read=5663
                                             ->  Nested Loop  (cost=0.05..128.91 rows=1 width=32) (actual time=72.228..1483.876 rows=98 loops=1)
                                                   Join Filter: (ml.movie_id = cc.movie_id)
                                                   Buffers: shared hit=22264 read=5663
                                                   ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=70.285..1414.540 rows=199 loops=1)
                                                         Buffers: shared hit=21588 read=5644
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=70.263..1412.847 rows=251 loops=1)
                                                               Buffers: shared hit=21086 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=70.227..1281.388 rows=10544 loops=1)
                                                                     Buffers: shared hit=2 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.899..46.902 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.320..1228.625 rows=10544 loops=1)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2 read=5600
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.009..0.011 rows=0 loops=10544)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=21084 read=40
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=1 loops=251)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=502
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.217..0.347 rows=0 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=676 read=19
                                             ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=98)
                                                   Index Cond: (id = cc.subject_id)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=196
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=3.332..3.332 rows=1 loops=78)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: ((production_year >= 1950) AND (production_year <= 2010))
                                             Buffers: shared hit=291 read=21
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.621..1.665 rows=5 loops=78)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=351 read=24
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=428)
                                 Index Cond: (id = mc.company_type_id)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=856
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=399)
                           Index Cond: (id = cc.status_id)
                           Filter: ((kind)::text ~~ 'complete%'::text)
                           Buffers: shared hit=798
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=1.358..1.368 rows=5 loops=399)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                     Rows Removed by Filter: 17
                     Buffers: shared hit=5981 read=99
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.169..0.169 rows=0 loops=1808)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=7199 read=33
 Planning Time: 11315.880 ms
 Execution Time: 2749.453 ms
(80 rows)

