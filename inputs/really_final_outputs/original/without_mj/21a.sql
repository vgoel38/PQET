                                                                                                QUERY PLAN                                                                                                 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.21..129.21 rows=1 width=96) (actual time=3163.520..3163.520 rows=1 loops=1)
   Buffers: shared hit=65968 read=5866
   ->  Nested Loop  (cost=0.09..129.21 rows=1 width=48) (actual time=556.868..3152.282 rows=1410 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=65968 read=5866
         ->  Nested Loop  (cost=0.08..129.17 rows=1 width=47) (actual time=519.173..3019.669 rows=1816 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=58719 read=5851
               ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=461.015..2578.801 rows=402 loops=1)
                     Join Filter: (mc.company_type_id = ct.id)
                     Rows Removed by Join Filter: 20
                     Buffers: shared hit=53156 read=5785
                     ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=460.876..2576.875 rows=422 loops=1)
                           Buffers: shared hit=52735 read=5784
                           ->  Nested Loop  (cost=0.05..128.96 rows=1 width=32) (actual time=134.280..1949.048 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=48727 read=5708
                                 ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=95.178..1592.650 rows=199 loops=1)
                                       Join Filter: (ml.link_type_id = lt.id)
                                       Rows Removed by Join Filter: 303
                                       Buffers: shared hit=47810 read=5651
                                       ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=27.351..27.365 rows=2 loops=1)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 16
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=33.950..782.511 rows=251 loops=2)
                                             Buffers: shared hit=47810 read=5650
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=33.712..679.697 rows=10544 loops=2)
                                                   Buffers: shared hit=5606 read=5606
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=11.494..11.496 rows=1 loops=2)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared hit=4 read=4
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.212..664.239 rows=10544 loops=2)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=5602 read=5602
                                             ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.009..0.009 rows=0 loops=21088)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=42204 read=44
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.653..1.786 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=917 read=57
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.614..0.614 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4008 read=76
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=422)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=421 read=1
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.932..1.093 rows=5 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                     Rows Removed by Filter: 16
                     Buffers: shared hit=5563 read=66
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.072..0.072 rows=1 loops=1816)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 0
               Buffers: shared hit=7249 read=15
 Planning Time: 5209.150 ms
 Execution Time: 3163.966 ms
(64 rows)

