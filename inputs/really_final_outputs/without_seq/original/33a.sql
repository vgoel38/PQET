                                                                                                                     QUERY PLAN                                                                                                                      
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=983.71..983.71 rows=1 width=192) (actual time=12787.149..12787.149 rows=1 loops=1)
   Buffers: shared hit=417002 read=4130
   ->  Nested Loop  (cost=0.14..983.71 rows=1 width=84) (actual time=2933.671..12787.091 rows=8 loops=1)
         Join Filter: ((t.id = mi_idx.movie_id) AND (it.id = mi_idx.info_type_id))
         Rows Removed by Join Filter: 807
         Buffers: shared hit=417002 read=4130
         ->  Nested Loop  (cost=0.12..983.68 rows=1 width=94) (actual time=597.658..12604.724 rows=465 loops=1)
               Buffers: shared hit=415154 read=4114
               ->  Nested Loop  (cost=0.11..983.67 rows=1 width=79) (actual time=597.649..12562.785 rows=465 loops=1)
                     Buffers: shared hit=413302 read=4106
                     ->  Nested Loop  (cost=0.10..983.47 rows=1 width=71) (actual time=597.638..12293.922 rows=58 loops=1)
                           Buffers: shared hit=413040 read=4084
                           ->  Nested Loop  (cost=0.09..983.46 rows=3 width=75) (actual time=343.594..12292.790 rows=131 loops=1)
                                 Buffers: shared hit=412778 read=4084
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.088..0.093 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=2
                                 ->  Nested Loop  (cost=0.09..974.25 rows=3 width=71) (actual time=343.500..12292.542 rows=131 loops=1)
                                       Buffers: shared hit=412776 read=4084
                                       ->  Nested Loop  (cost=0.07..925.27 rows=17 width=46) (actual time=246.704..5286.289 rows=1849 loops=1)
                                             Buffers: shared hit=405996 read=3463
                                             ->  Nested Loop  (cost=0.07..924.76 rows=116 width=50) (actual time=246.661..5273.085 rows=2083 loops=1)
                                                   Join Filter: (ml.movie_id = t.id)
                                                   Buffers: shared hit=401830 read=3463
                                                   ->  Nested Loop  (cost=0.06..917.33 rows=116 width=41) (actual time=235.172..3509.839 rows=2083 loops=1)
                                                         Buffers: shared hit=393750 read=3207
                                                         ->  Merge Join  (cost=0.05..913.96 rows=694 width=45) (actual time=0.171..3281.003 rows=57514 loops=1)
                                                               Merge Cond: (mi_idx.movie_id = ml.movie_id)
                                                               Buffers: shared hit=278722 read=3207
                                                               ->  Nested Loop  (cost=0.04..13743.70 rows=10637 width=33) (actual time=0.138..3152.766 rows=25899 loops=1)
                                                                     Buffers: shared hit=278005 read=2968
                                                                     ->  Nested Loop  (cost=0.03..13218.84 rows=29462 width=18) (actual time=0.114..518.195 rows=47761 loops=1)
                                                                           Buffers: shared hit=88374 read=1485
                                                                           ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=10) (actual time=0.091..199.717 rows=21301 loops=1)
                                                                                 Join Filter: (mi_idx.info_type_id = it.id)
                                                                                 Rows Removed by Join Filter: 42602
                                                                                 Buffers: shared hit=267 read=561
                                                                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.029..127.132 rows=63903 loops=1)
                                                                                       Buffers: shared hit=266 read=560
                                                                                 ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=63903)
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.041..0.042 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'rating'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=2 width=8) (actual time=0.009..0.013 rows=2 loops=21301)
                                                                                 Index Cond: (movie_id = mi_idx.movie_id)
                                                                                 Buffers: shared hit=88107 read=924
                                                                     ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=0.054..0.054 rows=1 loops=47761)
                                                                           Index Cond: (id = mc.company_id)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=189631 read=1483
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.026..68.111 rows=74480 loops=1)
                                                                     Buffers: shared hit=717 read=239
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=57514)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=115028
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=0.844..0.844 rows=1 loops=2083)
                                                         Index Cond: (id = mc.movie_id)
                                                         Buffers: shared hit=8080 read=256
                                             ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=2083)
                                                   Index Cond: (id = t.kind_id)
                                                   Filter: ((kind)::text = 'tv series'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=4166
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=25) (actual time=3.788..3.788 rows=0 loops=1849)
                                             Index Cond: (id = ml.linked_movie_id)
                                             Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=6780 read=621
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=0 loops=131)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'tv series'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=262
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.19 rows=2 width=8) (actual time=2.431..4.627 rows=8 loops=58)
                           Index Cond: (movie_id = t.id)
                           Buffers: shared hit=262 read=22
               ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=0.088..0.088 rows=1 loops=465)
                     Index Cond: (id = mc.company_id)
                     Buffers: shared hit=1852 read=8
         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.03 rows=1 width=14) (actual time=0.388..0.390 rows=2 loops=465)
               Index Cond: (movie_id = mc.movie_id)
               Filter: (info < '3.0'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=1848 read=16
 Planning Time: 6387.006 ms
 Execution Time: 12787.776 ms
(91 rows)

