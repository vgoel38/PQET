                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.15..129.16 rows=1 width=96) (actual time=2561.279..2561.280 rows=1 loops=1)
   Buffers: shared hit=34148 read=5847
   ->  Nested Loop  (cost=0.10..129.15 rows=1 width=48) (actual time=1141.943..2561.163 rows=38 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=34148 read=5847
         ->  Nested Loop  (cost=0.08..129.11 rows=1 width=47) (actual time=411.178..2433.729 rows=308 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=32927 read=5836
               ->  Nested Loop  (cost=0.07..128.96 rows=1 width=43) (actual time=352.931..2078.117 rows=402 loops=1)
                     Buffers: shared hit=27362 read=5772
                     ->  Nested Loop  (cost=0.07..128.95 rows=1 width=47) (actual time=352.891..2075.813 rows=422 loops=1)
                           Buffers: shared hit=26518 read=5772
                           ->  Nested Loop  (cost=0.05..128.93 rows=1 width=32) (actual time=67.953..1563.915 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=22507 read=5699
                                 ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=57.499..1392.307 rows=199 loops=1)
                                       Buffers: shared hit=21588 read=5644
                                       ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=57.477..1390.681 rows=251 loops=1)
                                             Buffers: shared hit=21086 read=5644
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=57.440..1254.019 rows=10544 loops=1)
                                                   Buffers: shared hit=2 read=5604
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=33.976..33.979 rows=1 loops=1)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared read=4
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.454..1214.396 rows=10544 loops=1)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=2 read=5600
                                             ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.012..0.012 rows=0 loops=10544)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=21084 read=40
                                       ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=1 loops=251)
                                             Index Cond: (id = ml.link_type_id)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=502
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.773..0.857 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=919 read=55
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.500..0.500 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4011 read=73
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=422)
                           Index Cond: (id = mc.company_type_id)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=844
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=4) (actual time=0.805..0.883 rows=1 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Germany,German}'::text[]))
                     Rows Removed by Filter: 20
                     Buffers: shared hit=5565 read=64
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.413..0.413 rows=0 loops=308)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 2000) AND (production_year <= 2010))
               Rows Removed by Filter: 1
               Buffers: shared hit=1221 read=11
 Planning Time: 5863.976 ms
 Execution Time: 2579.356 ms
(62 rows)

