 Aggregate  (cost=730.31..730.31 rows=1 width=192) (actual time=2881.062..2881.062 rows=1 loops=1)
   Buffers: shared hit=53530 read=8862
   ->  Nested Loop  (cost=0.10..730.31 rows=1 width=84) (actual time=308.660..2880.963 rows=8 loops=1)
         Buffers: shared hit=53530 read=8862
         ->  Nested Loop  (cost=0.09..730.29 rows=1 width=69) (actual time=308.624..2831.425 rows=8 loops=1)
               Join Filter: (t2.id = mc2.movie_id)
               Buffers: shared hit=53501 read=8859
               ->  Nested Loop  (cost=0.08..730.15 rows=1 width=77) (actual time=308.358..2830.990 rows=2 loops=1)
                     Join Filter: ((ml.linked_movie_id = t2.id) AND (kt2.id = t2.kind_id))
                     Buffers: shared hit=53494 read=8856
                     ->  Nested Loop  (cost=0.06..729.94 rows=1 width=60) (actual time=300.159..2685.292 rows=12 loops=1)
                           Buffers: shared hit=53456 read=8846
                           ->  Nested Loop  (cost=0.06..729.91 rows=1 width=56) (actual time=300.139..2685.125 rows=12 loops=1)
                                 Join Filter: (mi_idx1.info_type_id = it1.id)
                                 Rows Removed by Join Filter: 24
                                 Buffers: shared hit=53444 read=8846
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.347..13.349 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.06..729.86 rows=10 width=60) (actual time=232.189..2671.724 rows=36 loops=1)
                                       Buffers: shared hit=53444 read=8845
                                       ->  Nested Loop  (cost=0.05..729.36 rows=28 width=45) (actual time=168.709..2155.914 rows=243 loops=1)
                                             Buffers: shared hit=52538 read=8779
                                             ->  Nested Loop  (cost=0.04..728.14 rows=27 width=53) (actual time=133.688..1921.405 rows=84 loops=1)
                                                   Join Filter: (kt1.id = t1.kind_id)
                                                   Rows Removed by Join Filter: 6
                                                   Buffers: shared hit=52174 read=8735
                                                   ->  Seq Scan on kind_type kt1  (cost=0.00..0.03 rows=1 width=4) (actual time=6.711..6.712 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'tv series'::text)
                                                         Rows Removed by Filter: 6
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..728.08 rows=192 width=57) (actual time=126.971..1914.567 rows=90 loops=1)
                                                         Join Filter: (ml.movie_id = t1.id)
                                                         Buffers: shared hit=52174 read=8734
                                                         ->  Nested Loop  (cost=0.02..707.17 rows=192 width=32) (actual time=72.632..1391.015 rows=90 loops=1)
                                                               Buffers: shared hit=51857 read=8691
                                                               ->  Nested Loop  (cost=0.01..626.35 rows=64 width=18) (actual time=55.348..1266.867 rows=34 loops=1)
                                                                     Join Filter: (lt.id = ml.link_type_id)
                                                                     Rows Removed by Join Filter: 2124
                                                                     Buffers: shared hit=51745 read=8671
                                                                     ->  Nested Loop  (cost=0.01..626.06 rows=387 width=22) (actual time=25.188..1265.067 rows=1085 loops=1)
                                                                           Buffers: shared hit=51745 read=8670
                                                                           ->  Nested Loop  (cost=0.00..564.39 rows=5826 width=10) (actual time=10.819..974.415 rows=25591 loops=1)
                                                                                 Join Filter: (mi_idx2.info_type_id = it2.id)
                                                                                 Rows Removed by Join Filter: 632704
                                                                                 Buffers: shared hit=2 read=8452
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.056 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                                                                 ->  Seq Scan on movie_info_idx mi_idx2  (cost=0.00..467.71 rows=658313 width=14) (actual time=10.699..863.405 rows=658295 loops=1)
                                                                                       Filter: (info < '3.0'::text)
                                                                                       Rows Removed by Filter: 721740
                                                                                       Buffers: shared hit=1 read=8452
                                                                           ->  Index Scan using linked_movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=2 width=12) (actual time=0.009..0.011 rows=0 loops=25591)
                                                                                 Index Cond: (linked_movie_id = mi_idx2.movie_id)
                                                                                 Buffers: shared hit=51743 read=218
                                                                     ->  Materialize  (cost=0.00..0.04 rows=3 width=4) (actual time=0.000..0.001 rows=2 loops=1085)
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=3 width=4) (actual time=0.122..0.135 rows=2 loops=1)
                                                                                 Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                                 Rows Removed by Filter: 16
                                                                                 Buffers: shared read=1
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..1.26 rows=3 width=14) (actual time=3.642..3.646 rows=3 loops=34)
                                                                     Index Cond: (movie_id = ml.movie_id)
                                                                     Buffers: shared hit=112 read=20
                                                         ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.11 rows=1 width=25) (actual time=5.812..5.812 rows=1 loops=90)
                                                               Index Cond: (id = mi_idx1.movie_id)
                                                               Buffers: shared hit=317 read=43
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc1  (cost=0.01..0.05 rows=2 width=8) (actual time=2.216..2.786 rows=3 loops=84)
                                                   Index Cond: (movie_id = t1.id)
                                                   Buffers: shared hit=364 read=44
                                       ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=2.121..2.121 rows=0 loops=243)
                                             Index Cond: (id = mc1.company_id)
                                             Filter: ((country_code)::text = '[us]'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=906 read=66
                           ->  Seq Scan on kind_type kt2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.009 rows=1 loops=12)
                                 Filter: ((kind)::text = 'tv series'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=12
                     ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.21 rows=1 width=25) (actual time=12.138..12.138 rows=0 loops=12)
                           Index Cond: (id = mi_idx2.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2008))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=38 read=10
               ->  Index Scan using movie_id_movie_companies on movie_companies mc2  (cost=0.01..0.13 rows=2 width=8) (actual time=0.134..0.204 rows=4 loops=2)
                     Index Cond: (movie_id = mi_idx2.movie_id)
                     Buffers: shared hit=7 read=3
         ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=6.188..6.188 rows=1 loops=8)
               Index Cond: (id = mc2.company_id)
               Buffers: shared hit=29 read=3
 Planning Time: 5697.555 ms
 Execution Time: 2907.326 ms
