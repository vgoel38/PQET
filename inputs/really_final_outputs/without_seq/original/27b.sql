                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.18..129.18 rows=1 width=96) (actual time=2842.259..2842.260 rows=1 loops=1)
   Buffers: shared hit=30697 read=5907
   ->  Nested Loop  (cost=0.12..129.18 rows=1 width=48) (actual time=1375.774..2826.853 rows=247 loops=1)
         Buffers: shared hit=30697 read=5907
         ->  Nested Loop  (cost=0.11..129.16 rows=1 width=33) (actual time=1333.105..2724.191 rows=532 loops=1)
               Buffers: shared hit=28582 read=5894
               ->  Nested Loop  (cost=0.10..129.15 rows=1 width=37) (actual time=1333.060..2721.287 rows=532 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=27518 read=5894
                     ->  Nested Loop  (cost=0.09..129.12 rows=1 width=49) (actual time=1296.773..2682.954 rows=95 loops=1)
                           Buffers: shared hit=27046 read=5891
                           ->  Nested Loop  (cost=0.08..129.12 rows=1 width=53) (actual time=1296.739..2682.397 rows=95 loops=1)
                                 Buffers: shared hit=26856 read=5891
                                 ->  Nested Loop  (cost=0.08..129.11 rows=1 width=57) (actual time=1296.695..2681.531 rows=152 loops=1)
                                       Join Filter: (ml.movie_id = cc.movie_id)
                                       Buffers: shared hit=26552 read=5891
                                       ->  Nested Loop  (cost=0.07..129.10 rows=1 width=45) (actual time=1212.364..2622.704 rows=209 loops=1)
                                             Join Filter: (ml.movie_id = t.id)
                                             Buffers: shared hit=25776 read=5888
                                             ->  Nested Loop  (cost=0.05..129.05 rows=1 width=24) (actual time=325.519..2485.110 rows=420 loops=1)
                                                   Join Filter: (ml.movie_id = mi.movie_id)
                                                   Buffers: shared hit=24109 read=5875
                                                   ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=38.489..1433.716 rows=199 loops=1)
                                                         Buffers: shared hit=21588 read=5644
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=38.465..1431.890 rows=251 loops=1)
                                                               Buffers: shared hit=21086 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=38.432..1313.878 rows=10544 loops=1)
                                                                     Buffers: shared hit=2 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=15.110..15.113 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.311..1292.341 rows=10544 loops=1)
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
                                                   ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=5.165..5.280 rows=2 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                         Rows Removed by Filter: 18
                                                         Buffers: shared hit=2521 read=231
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.326..0.326 rows=0 loops=420)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year = 1998)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=1667 read=13
                                       ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.186..0.279 rows=1 loops=209)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=776 read=3
                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=152)
                                       Index Cond: (id = cc.status_id)
                                       Filter: ((kind)::text = 'complete'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=304
                           ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=95)
                                 Index Cond: (id = cc.subject_id)
                                 Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                 Buffers: shared hit=190
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.393..0.398 rows=6 loops=95)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NULL)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=472 read=3
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=532)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=1064
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.191..0.191 rows=0 loops=532)
               Index Cond: (id = mc.company_id)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 1
               Buffers: shared hit=2115 read=13
 Planning Time: 11351.232 ms
 Execution Time: 2864.192 ms
(80 rows)

