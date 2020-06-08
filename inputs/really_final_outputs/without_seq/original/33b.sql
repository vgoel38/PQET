                                                                                                                  QUERY PLAN                                                                                                                   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=883.89..883.89 rows=1 width=192) (actual time=6049.728..6049.729 rows=1 loops=1)
   Buffers: shared hit=49477 read=2299
   ->  Nested Loop  (cost=0.14..883.89 rows=1 width=84) (actual time=1262.228..6049.674 rows=4 loops=1)
         Join Filter: ((t.id = mi_idx.movie_id) AND (it.id = mi_idx.info_type_id))
         Rows Removed by Join Filter: 4
         Buffers: shared hit=49477 read=2299
         ->  Nested Loop  (cost=0.12..883.86 rows=1 width=94) (actual time=1262.146..6049.543 rows=4 loops=1)
               Buffers: shared hit=49463 read=2297
               ->  Nested Loop  (cost=0.12..883.86 rows=1 width=98) (actual time=1262.089..6049.464 rows=4 loops=1)
                     Join Filter: (ml.movie_id = t.id)
                     Buffers: shared hit=49455 read=2297
                     ->  Nested Loop  (cost=0.11..883.79 rows=1 width=89) (actual time=1256.983..6044.318 rows=4 loops=1)
                           Buffers: shared hit=49441 read=2295
                           ->  Nested Loop  (cost=0.09..883.78 rows=1 width=74) (actual time=1256.950..6044.241 rows=4 loops=1)
                                 Buffers: shared hit=49425 read=2295
                                 ->  Nested Loop  (cost=0.08..883.10 rows=1 width=66) (actual time=1256.764..6044.027 rows=1 loops=1)
                                       Buffers: shared hit=49423 read=2292
                                       ->  Nested Loop  (cost=0.08..883.09 rows=1 width=70) (actual time=175.062..6043.891 rows=6 loops=1)
                                             Buffers: shared hit=49411 read=2292
                                             ->  Nested Loop  (cost=0.06..877.33 rows=2 width=45) (actual time=71.883..2540.684 rows=477 loops=1)
                                                   Buffers: shared hit=47783 read=2006
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.031..0.047 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=2
                                                   ->  Nested Loop  (cost=0.06..868.12 rows=2 width=41) (actual time=71.848..2540.201 rows=477 loops=1)
                                                         Buffers: shared hit=47781 read=2006
                                                         ->  Nested Loop  (cost=0.04..864.58 rows=199 width=26) (actual time=0.117..437.713 rows=9674 loops=1)
                                                               Join Filter: (ml.movie_id = mc.movie_id)
                                                               Buffers: shared hit=9814 read=1264
                                                               ->  Nested Loop  (cost=0.03..861.43 rows=44 width=18) (actual time=0.108..259.612 rows=2064 loops=1)
                                                                     Join Filter: (mi_idx.info_type_id = it.id)
                                                                     Rows Removed by Join Filter: 4128
                                                                     Buffers: shared hit=379 read=803
                                                                     ->  Merge Join  (cost=0.03..854.18 rows=4998 width=22) (actual time=0.087..252.623 rows=6192 loops=1)
                                                                           Merge Cond: (ml.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=378 read=802
                                                                           ->  Nested Loop  (cost=0.01..291.72 rows=1666 width=8) (actual time=0.050..86.347 rows=2315 loops=1)
                                                                                 Join Filter: (lt.id = ml.link_type_id)
                                                                                 Rows Removed by Join Filter: 56521
                                                                                 Buffers: shared hit=85 read=239
                                                                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.009..46.185 rows=29997 loops=1)
                                                                                       Buffers: shared hit=83 read=239
                                                                                 ->  Materialize  (cost=0.00..9.19 rows=1 width=4) (actual time=0.000..0.000 rows=2 loops=29997)
                                                                                       Buffers: shared hit=2
                                                                                       ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.005..0.011 rows=2 loops=1)
                                                                                             Filter: ((link)::text ~~ '%follow%'::text)
                                                                                             Rows Removed by Filter: 16
                                                                                             Buffers: shared hit=2
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.008..144.152 rows=68653 loops=1)
                                                                                 Buffers: shared hit=293 read=563
                                                                     ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=6192)
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'rating'::text)
                                                                                 Buffers: shared hit=1 read=1
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=8) (actual time=0.067..0.081 rows=5 loops=2064)
                                                                     Index Cond: (movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=9435 read=461
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.216..0.216 rows=0 loops=9674)
                                                               Index Cond: (id = mc.company_id)
                                                               Filter: ((country_code)::text = '[nl]'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=37967 read=742
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=25) (actual time=7.343..7.343 rows=0 loops=477)
                                                   Index Cond: (id = ml.linked_movie_id)
                                                   Filter: (production_year = 2007)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=1628 read=286
                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.016..0.016 rows=0 loops=6)
                                             Index Cond: (id = t.kind_id)
                                             Filter: ((kind)::text = 'tv series'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=12
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.68 rows=2 width=8) (actual time=0.178..0.200 rows=4 loops=1)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=2 read=3
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.014..0.014 rows=1 loops=4)
                                 Index Cond: (id = mc.company_id)
                                 Buffers: shared hit=16
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=1.280..1.280 rows=1 loops=4)
                           Index Cond: (id = mc.movie_id)
                           Buffers: shared hit=14 read=2
               ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=4)
                     Index Cond: (id = t.kind_id)
                     Filter: ((kind)::text = 'tv series'::text)
                     Buffers: shared hit=8
         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.03 rows=1 width=14) (actual time=0.025..0.028 rows=2 loops=4)
               Index Cond: (movie_id = mc.movie_id)
               Filter: (info < '3.0'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=14 read=2
 Planning Time: 6296.902 ms
 Execution Time: 6050.693 ms
(94 rows)

