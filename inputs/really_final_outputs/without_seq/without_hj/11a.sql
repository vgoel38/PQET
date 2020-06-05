                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.00..129.00 rows=1 width=96) (actual time=2242.250..2242.250 rows=1 loops=1)
   Buffers: shared hit=28953 read=5789
   ->  Nested Loop  (cost=0.08..129.00 rows=1 width=48) (actual time=354.889..2232.918 rows=310 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=28953 read=5789
         ->  Nested Loop  (cost=0.07..128.96 rows=1 width=43) (actual time=308.931..1997.472 rows=402 loops=1)
               Buffers: shared hit=27362 read=5772
               ->  Nested Loop  (cost=0.07..128.95 rows=1 width=47) (actual time=308.892..1995.936 rows=422 loops=1)
                     Buffers: shared hit=26518 read=5772
                     ->  Nested Loop  (cost=0.05..128.93 rows=1 width=32) (actual time=65.598..1611.527 rows=1021 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=22507 read=5699
                           ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=55.139..1468.223 rows=199 loops=1)
                                 Buffers: shared hit=21588 read=5644
                                 ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=55.118..1467.031 rows=251 loops=1)
                                       Buffers: shared hit=21086 read=5644
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=55.083..1363.964 rows=10544 loops=1)
                                             Buffers: shared hit=2 read=5604
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.628..31.632 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.410..1326.775 rows=10544 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=2 read=5600
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.009..0.009 rows=0 loops=10544)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=21084 read=40
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.003..0.003 rows=1 loops=251)
                                       Index Cond: (id = ml.link_type_id)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=502
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.647..0.716 rows=5 loops=199)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=919 read=55
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.375..0.375 rows=0 loops=1021)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4011 read=73
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=422)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=844
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.585..0.585 rows=1 loops=402)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 0
               Buffers: shared hit=1591 read=17
 Planning Time: 3391.978 ms
 Execution Time: 2273.870 ms
(54 rows)

