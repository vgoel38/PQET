 Aggregate  (cost=812.41..812.41 rows=1 width=192) (actual time=13492.618..13492.618 rows=1 loops=1)
   Buffers: shared hit=81357 read=10008
   ->  Nested Loop  (cost=0.10..812.41 rows=1 width=84) (actual time=428.494..13492.148 rows=114 loops=1)
         Join Filter: (t1.kind_id = kt1.id)
         Buffers: shared hit=81357 read=10008
         ->  Nested Loop  (cost=0.10..812.37 rows=1 width=88) (actual time=428.478..13491.417 rows=114 loops=1)
               Buffers: shared hit=81243 read=10008
               ->  Nested Loop  (cost=0.09..812.36 rows=1 width=73) (actual time=428.431..13134.832 rows=131 loops=1)
                     Join Filter: (t2.kind_id = kt2.id)
                     Rows Removed by Join Filter: 38
                     Buffers: shared hit=80746 read=9981
                     ->  Nested Loop  (cost=0.09..812.32 rows=1 width=77) (actual time=404.835..13110.023 rows=150 loops=1)
                           Join Filter: ((t1.id = mi_idx1.movie_id) AND (it1.id = mi_idx1.info_type_id))
                           Rows Removed by Join Filter: 300
                           Buffers: shared hit=80597 read=9980
                           ->  Nested Loop  (cost=0.08..811.43 rows=31 width=87) (actual time=383.618..12986.919 rows=157 loops=1)
                                 Buffers: shared hit=79994 read=9962
                                 ->  Nested Loop  (cost=0.06..810.07 rows=30 width=79) (actual time=383.358..12679.029 rows=55 loops=1)
                                       Buffers: shared hit=79756 read=9928
                                       ->  Nested Loop  (cost=0.05..723.63 rows=30 width=54) (actual time=374.316..12358.028 rows=55 loops=1)
                                             Buffers: shared hit=79559 read=9905
                                             ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.352..13.359 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                             ->  Nested Loop  (cost=0.05..723.58 rows=30 width=50) (actual time=360.958..12344.600 rows=55 loops=1)
                                                   Buffers: shared hit=79559 read=9904
                                                   ->  Nested Loop  (cost=0.04..723.05 rows=30 width=35) (actual time=310.384..11778.462 rows=55 loops=1)
                                                         Buffers: shared hit=79381 read=9862
                                                         ->  Nested Loop  (cost=0.02..720.44 rows=29 width=43) (actual time=275.395..11299.351 rows=29 loops=1)
                                                               Join Filter: (ml.link_type_id = lt.id)
                                                               Rows Removed by Join Filter: 2278
                                                               Buffers: shared hit=79299 read=9817
                                                               ->  Nested Loop  (cost=0.02..720.29 rows=172 width=47) (actual time=57.919..11272.901 rows=1159 loops=1)
                                                                     Join Filter: (ml.linked_movie_id = t2.id)
                                                                     Buffers: shared hit=79299 read=9816
                                                                     ->  Nested Loop  (cost=0.01..637.18 rows=416 width=22) (actual time=23.583..2635.375 rows=1505 loops=1)
                                                                           Buffers: shared hit=74412 read=8682
                                                                           ->  Nested Loop  (cost=0.00..571.47 rows=6253 width=10) (actual time=9.145..2141.471 rows=36749 loops=1)
                                                                                 Join Filter: (mi_idx2.info_type_id = it2.id)
                                                                                 Rows Removed by Join Filter: 669811
                                                                                 Buffers: shared hit=3 read=8451
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.046..0.054 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                                                                 ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=706570 width=14) (actual time=9.085..1978.850 rows=706560 loops=1)
                                                                                       Filter: (info < '3.5'::text)
                                                                                       Rows Removed by Filter: 673475
                                                                                       Buffers: shared hit=2 read=8451
                                                                           ->  Index Scan using linked_movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=2 width=12) (actual time=0.009..0.013 rows=0 loops=36749)
                                                                                 Index Cond: (linked_movie_id = mi_idx2.movie_id)
                                                                                 Buffers: shared hit=74409 read=231
                                                                     ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.20 rows=1 width=25) (actual time=5.736..5.736 rows=1 loops=1505)
                                                                           Index Cond: (id = mi_idx2.movie_id)
                                                                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=4887 read=1134
                                                               ->  Materialize  (cost=0.00..0.04 rows=3 width=4) (actual time=0.020..0.021 rows=2 loops=1159)
                                                                     Buffers: shared read=1
                                                                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=22.932..22.947 rows=2 loops=1)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared read=1
                                                         ->  Index Scan using movie_id_movie_companies on movie_companies mc2  (cost=0.01..0.09 rows=2 width=8) (actual time=15.796..16.513 rows=2 loops=29)
                                                               Index Cond: (movie_id = t2.id)
                                                               Buffers: shared hit=82 read=45
                                                   ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=10.287..10.287 rows=1 loops=55)
                                                         Index Cond: (id = mc2.company_id)
                                                         Buffers: shared hit=178 read=42
                                       ->  Index Scan using title_idx_id on title t1  (cost=0.01..2.88 rows=1 width=25) (actual time=5.830..5.830 rows=1 loops=55)
                                             Index Cond: (id = ml.movie_id)
                                             Buffers: shared hit=197 read=23
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc1  (cost=0.01..0.05 rows=2 width=8) (actual time=4.625..5.591 rows=3 loops=55)
                                       Index Cond: (movie_id = t1.id)
                                       Buffers: shared hit=238 read=34
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..0.03 rows=3 width=14) (actual time=0.777..0.779 rows=3 loops=157)
                                 Index Cond: (movie_id = mc1.movie_id)
                                 Buffers: shared hit=603 read=18
                     ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=2 width=4) (actual time=0.161..0.161 rows=1 loops=150)
                           Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                           Rows Removed by Filter: 2
                           Buffers: shared hit=149 read=1
               ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=2.719..2.719 rows=1 loops=131)
                     Index Cond: (id = mc1.company_id)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=497 read=27
         ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=2 width=4) (actual time=0.003..0.003 rows=1 loops=114)
               Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
               Rows Removed by Filter: 1
               Buffers: shared hit=114
 Planning Time: 5797.491 ms
 Execution Time: 13510.588 ms
