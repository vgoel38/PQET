                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.18..129.18 rows=1 width=96) (actual time=2836.237..2836.238 rows=1 loops=1)
   Buffers: shared hit=30697 read=5907
   ->  Nested Loop  (cost=0.12..129.18 rows=1 width=48) (actual time=1369.769..2820.864 rows=247 loops=1)
         Buffers: shared hit=30697 read=5907
         ->  Nested Loop  (cost=0.11..129.16 rows=1 width=33) (actual time=1327.093..2720.308 rows=532 loops=1)
               Buffers: shared hit=28582 read=5894
               ->  Nested Loop  (cost=0.10..129.15 rows=1 width=37) (actual time=1327.050..2718.524 rows=532 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=27518 read=5894
                     ->  Nested Loop  (cost=0.09..129.12 rows=1 width=49) (actual time=1290.768..2680.878 rows=95 loops=1)
                           Buffers: shared hit=27046 read=5891
                           ->  Nested Loop  (cost=0.08..129.12 rows=1 width=53) (actual time=1290.735..2680.468 rows=95 loops=1)
                                 Buffers: shared hit=26856 read=5891
                                 ->  Nested Loop  (cost=0.08..129.11 rows=1 width=57) (actual time=1290.693..2679.853 rows=152 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=26552 read=5891
                                       ->  Nested Loop  (cost=0.07..129.10 rows=1 width=45) (actual time=1198.017..2621.337 rows=209 loops=1)
                                             Join Filter: (ml.movie_id = t.id)
                                             Buffers: shared hit=25776 read=5888
                                             ->  Nested Loop  (cost=0.05..129.05 rows=1 width=24) (actual time=327.848..2479.554 rows=420 loops=1)
                                                   Join Filter: (ml.movie_id = mi.movie_id)
                                                   Buffers: shared hit=24109 read=5875
                                                   ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=49.170..1439.342 rows=199 loops=1)
                                                         Buffers: shared hit=21588 read=5644
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=49.147..1437.576 rows=251 loops=1)
                                                               Buffers: shared hit=21086 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=49.112..1323.755 rows=10544 loops=1)
                                                                     Buffers: shared hit=2 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=25.789..25.793 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.315..1292.061 rows=10544 loops=1)
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
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=5.111..5.224 rows=2 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                         Rows Removed by Filter: 18
                                                         Buffers: shared hit=2521 read=231
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.336..0.336 rows=0 loops=420)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year = 1998)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=1667 read=13
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.185..0.278 rows=1 loops=209)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=776 read=3
                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=152)
                                       Index Cond: (id = cc.status_id)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=304
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=95)
                                 Index Cond: (id = cc.subject_id)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Buffers: shared hit=190
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.390..0.393 rows=6 loops=95)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=472 read=3
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=532)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=1064
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.188..0.188 rows=0 loops=532)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=2115 read=13
 Planning Time: 11260.413 ms
 Execution Time: 2863.863 ms
(80 rows)

