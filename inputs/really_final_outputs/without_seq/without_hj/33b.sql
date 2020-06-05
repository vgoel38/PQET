                                                                                                                  QUERY PLAN                                                                                                                   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=879.21..879.21 rows=1 width=192) (actual time=4431.540..4431.541 rows=1 loops=1)
   Buffers: shared hit=91381 read=2190
   ->  Nested Loop  (cost=0.14..879.21 rows=1 width=84) (actual time=997.316..4431.488 rows=4 loops=1)
         Join Filter: ((ml.linked_movie_id = t2.id) AND (kt2.id = t2.kind_id))
         Buffers: shared hit=91381 read=2190
         ->  Nested Loop  (cost=0.12..879.15 rows=1 width=83) (actual time=994.336..4378.718 rows=10 loops=1)
               Join Filter: (kt1.id = t1.kind_id)
               Buffers: shared hit=91348 read=2183
               ->  Nested Loop  (cost=0.01..15.31 rows=1 width=8) (actual time=0.030..0.040 rows=1 loops=1)
                     Buffers: shared hit=3 read=1
                     ->  Index Scan using kind_type_pkey on kind_type kt2  (cost=0.00..9.19 rows=1 width=4) (actual time=0.011..0.018 rows=1 loops=1)
                           Filter: ((kind)::text = 'tv series'::text)
                           Rows Removed by Filter: 6
                           Buffers: shared hit=2
                     ->  Index Scan using kind_type_kind_key on kind_type kt1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.017..0.019 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'tv series'::text)
                           Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=0.11..863.84 rows=10 width=83) (actual time=994.299..4378.653 rows=10 loops=1)
                     Join Filter: (ml.movie_id = t1.id)
                     Buffers: shared hit=91345 read=2182
                     ->  Nested Loop  (cost=0.10..863.20 rows=10 width=74) (actual time=946.204..4237.693 rows=10 loops=1)
                           Buffers: shared hit=91312 read=2175
                           ->  Nested Loop  (cost=0.09..863.02 rows=10 width=59) (actual time=946.141..4146.310 rows=10 loops=1)
                                 Join Filter: (ml.linked_movie_id = mc2.movie_id)
                                 Buffers: shared hit=91279 read=2168
                                 ->  Nested Loop  (cost=0.07..862.88 rows=1 width=51) (actual time=933.550..4058.337 rows=4 loops=1)
                                       Join Filter: (it2.id = mi_idx2.info_type_id)
                                       Rows Removed by Join Filter: 612
                                       Buffers: shared hit=91271 read=2158
                                       ->  Nested Loop  (cost=0.06..860.36 rows=2 width=45) (actual time=45.745..2339.914 rows=477 loops=1)
                                             Buffers: shared hit=89555 read=1982
                                             ->  Nested Loop  (cost=0.05..856.81 rows=199 width=30) (actual time=0.213..635.735 rows=9674 loops=1)
                                                   Join Filter: (ml.movie_id = mc1.movie_id)
                                                   Buffers: shared hit=51588 read=1240
                                                   ->  Nested Loop  (cost=0.04..853.66 rows=44 width=22) (actual time=0.205..323.945 rows=2064 loops=1)
                                                         Buffers: shared hit=42152 read=780
                                                         ->  Merge Join  (cost=0.03..849.81 rows=796 width=26) (actual time=0.046..252.601 rows=20890 loops=1)
                                                               Merge Cond: (mi_idx1.movie_id = ml.movie_id)
                                                               Buffers: shared hit=372 read=780
                                                               ->  Nested Loop  (cost=0.02..12354.75 rows=12213 width=14) (actual time=0.036..191.061 rows=21301 loops=1)
                                                                     Buffers: shared hit=289 read=541
                                                                     ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.029..171.405 rows=21301 loops=1)
                                                                           Join Filter: (mi_idx1.info_type_id = it1.id)
                                                                           Rows Removed by Join Filter: 42602
                                                                           Buffers: shared hit=287 read=541
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.008..115.817 rows=63903 loops=1)
                                                                                 Buffers: shared hit=286 read=540
                                                                           ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=63903)
                                                                                 Buffers: shared hit=1 read=1
                                                                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=1 read=1
                                                                     ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=21301)
                                                                           Buffers: shared hit=2
                                                                           ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'rating'::text)
                                                                                 Buffers: shared hit=2
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.008..38.219 rows=29997 loops=1)
                                                                     Buffers: shared hit=83 read=239
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=20890)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=41780
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc1  (cost=0.01..0.07 rows=2 width=8) (actual time=0.098..0.147 rows=5 loops=2064)
                                                         Index Cond: (movie_id = mi_idx1.movie_id)
                                                         Buffers: shared hit=9436 read=460
                                             ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=0.175..0.175 rows=0 loops=9674)
                                                   Index Cond: (id = mc1.company_id)
                                                   Filter: ((country_code)::text = '[nl]'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=37967 read=742
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx2  (cost=0.01..1.26 rows=1 width=14) (actual time=3.598..3.601 rows=1 loops=477)
                                             Index Cond: (movie_id = ml.linked_movie_id)
                                             Filter: (info < '3.0'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=1716 read=176
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc2  (cost=0.01..0.13 rows=2 width=8) (actual time=20.222..21.979 rows=2 loops=4)
                                       Index Cond: (movie_id = mi_idx2.movie_id)
                                       Buffers: shared hit=8 read=10
                           ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=9.131..9.131 rows=1 loops=10)
                                 Index Cond: (id = mc2.company_id)
                                 Buffers: shared hit=33 read=7
                     ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.06 rows=1 width=25) (actual time=14.089..14.089 rows=1 loops=10)
                           Index Cond: (id = mc1.movie_id)
                           Buffers: shared hit=33 read=7
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.06 rows=1 width=25) (actual time=5.272..5.272 rows=0 loops=10)
               Index Cond: (id = mc2.movie_id)
               Filter: (production_year = 2007)
               Rows Removed by Filter: 1
               Buffers: shared hit=33 read=7
 Planning Time: 6214.968 ms
 Execution Time: 4432.179 ms
(93 rows)

