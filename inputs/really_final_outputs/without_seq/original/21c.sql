                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.16..129.16 rows=1 width=96) (actual time=2796.515..2796.516 rows=1 loops=1)
   Buffers: shared hit=40406 read=5853
   ->  Nested Loop  (cost=0.10..129.16 rows=1 width=48) (actual time=567.480..2784.755 rows=1874 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=40406 read=5853
         ->  Nested Loop  (cost=0.08..129.11 rows=1 width=47) (actual time=538.104..2563.300 rows=1874 loops=1)
               Join Filter: (ml.movie_id = mi.movie_id)
               Buffers: shared hit=32927 read=5836
               ->  Nested Loop  (cost=0.07..128.96 rows=1 width=43) (actual time=479.850..2182.302 rows=402 loops=1)
                     Buffers: shared hit=27362 read=5772
                     ->  Nested Loop  (cost=0.07..128.95 rows=1 width=47) (actual time=479.810..2180.289 rows=422 loops=1)
                           Buffers: shared hit=26518 read=5772
                           ->  Nested Loop  (cost=0.05..128.93 rows=1 width=32) (actual time=144.865..1676.047 rows=1021 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=22507 read=5699
                                 ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=134.433..1518.734 rows=199 loops=1)
                                       Buffers: shared hit=21588 read=5644
                                       ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=134.407..1517.101 rows=251 loops=1)
                                             Buffers: shared hit=21086 read=5644
                                             ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=134.374..1339.550 rows=10544 loops=1)
                                                   Buffers: shared hit=2 read=5604
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=110.906..110.910 rows=1 loops=1)
                                                         Index Cond: (keyword = 'sequel'::text)
                                                         Buffers: shared read=4
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.458..1222.734 rows=10544 loops=1)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=2 read=5600
                                             ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.016..0.016 rows=0 loops=10544)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=21084 read=40
                                       ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=1 loops=251)
                                             Index Cond: (id = ml.link_type_id)
                                             Filter: ((link)::text ~~ '%follow%'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=502
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.743..0.786 rows=5 loops=199)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=919 read=55
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.493..0.493 rows=0 loops=1021)
                                 Index Cond: (id = mc.company_id)
                                 Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4011 read=73
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=422)
                           Index Cond: (id = mc.company_type_id)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=844
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.861..0.944 rows=5 loops=402)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                     Rows Removed by Filter: 16
                     Buffers: shared hit=5565 read=64
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.117..0.117 rows=1 loops=1874)
               Index Cond: (id = mk.movie_id)
               Filter: ((production_year >= 1950) AND (production_year <= 2010))
               Buffers: shared hit=7479 read=17
 Planning Time: 6085.386 ms
 Execution Time: 2797.001 ms
(61 rows)

