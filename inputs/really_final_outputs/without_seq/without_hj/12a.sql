                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=12886.65..12886.65 rows=1 width=96) (actual time=94232.000..94232.000 rows=1 loops=1)
   Buffers: shared hit=437152 read=45680
   ->  Nested Loop  (cost=0.08..12886.65 rows=1 width=42) (actual time=4557.780..94229.843 rows=397 loops=1)
         Buffers: shared hit=437152 read=45680
         ->  Nested Loop  (cost=0.07..12886.63 rows=5 width=46) (actual time=4557.719..94223.724 rows=397 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=436358 read=45680
               ->  Nested Loop  (cost=0.06..12882.06 rows=18 width=54) (actual time=517.812..56671.318 rows=5674 loops=1)
                     Join Filter: (mi_idx.movie_id = t.id)
                     Buffers: shared hit=368460 read=33938
                     ->  Nested Loop  (cost=0.05..12875.51 rows=102 width=33) (actual time=144.565..32883.981 rows=19791 loops=1)
                           Buffers: shared hit=298833 read=24329
                           ->  Nested Loop  (cost=0.04..12870.49 rows=282 width=18) (actual time=26.251..13734.683 rows=24233 loops=1)
                                 Buffers: shared hit=204504 read=21334
                                 ->  Nested Loop  (cost=0.03..12865.61 rows=1129 width=22) (actual time=0.198..13445.120 rows=64707 loops=1)
                                       Buffers: shared hit=75090 read=21334
                                       ->  Nested Loop  (cost=0.02..12156.13 rows=468 width=10) (actual time=0.173..2953.691 rows=15849 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 37013
                                             Buffers: shared hit=13572 read=12221
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=0.121..2887.100 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=52862)
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=1 read=1
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..1.52 rows=2 width=12) (actual time=0.513..0.658 rows=4 loops=15849)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=61518 read=9113
                                 ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=64707)
                                       Index Cond: (id = mc.company_type_id)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=129414
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.789..0.789 rows=1 loops=24233)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=94329 read=2995
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=1.200..1.200 rows=0 loops=19791)
                           Index Cond: (id = mc.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2008))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=69627 read=9609
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=6.612..6.616 rows=0 loops=5674)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: (info = ANY ('{Drama,Horror}'::text[]))
                     Rows Removed by Filter: 28
                     Buffers: shared hit=67898 read=11742
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=397)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'genres'::text)
               Buffers: shared hit=794
 Planning Time: 5018.020 ms
 Execution Time: 94251.769 ms
(58 rows)

