                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.00..129.00 rows=1 width=96) (actual time=2267.309..2267.326 rows=1 loops=1)
   Buffers: shared hit=28953 read=5789
   ->  Nested Loop  (cost=0.08..129.00 rows=1 width=48) (actual time=354.926..2249.894 rows=310 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=28953 read=5789
         ->  Nested Loop  (cost=0.07..128.96 rows=1 width=43) (actual time=308.948..2003.660 rows=402 loops=1)
               Buffers: shared hit=27362 read=5772
               ->  Nested Loop  (cost=0.07..128.95 rows=1 width=47) (actual time=308.909..2001.193 rows=422 loops=1)
                     Buffers: shared hit=26518 read=5772
                     ->  Nested Loop  (cost=0.05..128.93 rows=1 width=32) (actual time=57.307..1493.636 rows=1021 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=22507 read=5699
                           ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=46.853..1344.639 rows=199 loops=1)
                                 Buffers: shared hit=21588 read=5644
                                 ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=46.832..1342.962 rows=251 loops=1)
                                       Buffers: shared hit=21086 read=5644
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=46.791..1250.786 rows=10544 loops=1)
                                             Buffers: shared hit=2 read=5604
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.345..23.348 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.401..1221.580 rows=10544 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=2 read=5600
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.008 rows=0 loops=10544)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=21084 read=40
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=1 loops=251)
                                       Index Cond: (id = ml.link_type_id)
                                       Filter: ((link)::text ~~ '%follow%'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=502
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.658..0.743 rows=5 loops=199)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=919 read=55
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.496..0.496 rows=0 loops=1021)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4011 read=73
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=422)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=844
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.611..0.611 rows=1 loops=402)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2000))
               Rows Removed by Filter: 0
               Buffers: shared hit=1591 read=17
 Planning Time: 3625.936 ms
 Execution Time: 2290.394 ms
(54 rows)

