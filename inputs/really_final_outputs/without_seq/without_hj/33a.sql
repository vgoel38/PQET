                                                                                                                      QUERY PLAN                                                                                                                      
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=971.54..971.54 rows=1 width=192) (actual time=11777.652..11777.653 rows=1 loops=1)
   Buffers: shared hit=106002 read=3132
   ->  Nested Loop  (cost=0.14..971.54 rows=1 width=84) (actual time=2099.868..11777.558 rows=8 loops=1)
         Buffers: shared hit=106002 read=3132
         ->  Nested Loop  (cost=0.13..971.54 rows=1 width=88) (actual time=2099.851..11777.496 rows=8 loops=1)
               Buffers: shared hit=105986 read=3132
               ->  Nested Loop  (cost=0.13..971.53 rows=2 width=92) (actual time=2099.808..11777.390 rows=8 loops=1)
                     Join Filter: (ml.linked_movie_id = t2.id)
                     Buffers: shared hit=105970 read=3132
                     ->  Nested Loop  (cost=0.11..970.89 rows=10 width=83) (actual time=2048.716..11604.227 rows=38 loops=1)
                           Buffers: shared hit=105828 read=3122
                           ->  Nested Loop  (cost=0.10..970.71 rows=10 width=68) (actual time=2048.670..11578.202 rows=38 loops=1)
                                 Join Filter: (ml.linked_movie_id = mc2.movie_id)
                                 Buffers: shared hit=105681 read=3117
                                 ->  Nested Loop  (cost=0.09..970.58 rows=1 width=60) (actual time=2036.177..11433.154 rows=15 loops=1)
                                       Join Filter: (it2.id = mi_idx2.info_type_id)
                                       Rows Removed by Join Filter: 2919
                                       Buffers: shared hit=105624 read=3102
                                       ->  Nested Loop  (cost=0.08..908.69 rows=49 width=54) (actual time=59.791..6396.270 rows=2083 loops=1)
                                             Buffers: shared hit=97849 read=2604
                                             ->  Nested Loop  (cost=0.06..906.25 rows=137 width=39) (actual time=21.418..3700.086 rows=9674 loops=1)
                                                   Buffers: shared hit=59890 read=1864
                                                   ->  Nested Loop  (cost=0.05..900.23 rows=133 width=47) (actual time=21.367..3406.936 rows=2064 loops=1)
                                                         Buffers: shared hit=50455 read=1403
                                                         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..9.21 rows=1 width=4) (actual time=0.087..0.104 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Nested Loop  (cost=0.04..891.02 rows=133 width=43) (actual time=21.275..3405.268 rows=2064 loops=1)
                                                               Join Filter: (ml.movie_id = t1.id)
                                                               Buffers: shared hit=50453 read=1403
                                                               ->  Nested Loop  (cost=0.03..876.53 rows=133 width=18) (actual time=0.824..471.359 rows=2064 loops=1)
                                                                     Buffers: shared hit=42838 read=760
                                                                     ->  Nested Loop  (cost=0.03..872.66 rows=796 width=22) (actual time=0.133..376.335 rows=20890 loops=1)
                                                                           Join Filter: (it1.id = mi_idx1.info_type_id)
                                                                           Rows Removed by Join Filter: 41780
                                                                           Buffers: shared hit=1058 read=760
                                                                           ->  Merge Join  (cost=0.02..846.34 rows=89993 width=26) (actual time=0.069..305.604 rows=62670 loops=1)
                                                                                 Merge Cond: (ml.movie_id = mi_idx1.movie_id)
                                                                                 Buffers: shared hit=1057 read=759
                                                                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.027..49.325 rows=29997 loops=1)
                                                                                       Buffers: shared hit=83 read=239
                                                                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx1  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.034..173.594 rows=114373 loops=1)
                                                                                       Buffers: shared hit=974 read=520
                                                                           ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=62670)
                                                                                 Buffers: shared hit=1 read=1
                                                                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.037..0.039 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'rating'::text)
                                                                                       Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=20890)
                                                                           Index Cond: (id = ml.link_type_id)
                                                                           Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=41780
                                                               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.11 rows=1 width=25) (actual time=1.419..1.419 rows=1 loops=2064)
                                                                     Index Cond: (id = mi_idx1.movie_id)
                                                                     Buffers: shared hit=7615 read=643
                                                   ->  Index Scan using movie_id_movie_companies on movie_companies mc1  (cost=0.01..0.05 rows=2 width=8) (actual time=0.090..0.137 rows=5 loops=2064)
                                                         Index Cond: (movie_id = t1.id)
                                                         Buffers: shared hit=9435 read=461
                                             ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=0.277..0.277 rows=0 loops=9674)
                                                   Index Cond: (id = mc1.company_id)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=37959 read=740
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx2  (cost=0.01..1.26 rows=1 width=14) (actual time=2.404..2.416 rows=1 loops=2083)
                                             Index Cond: (movie_id = ml.linked_movie_id)
                                             Filter: (info < '3.0'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=7775 read=498
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc2  (cost=0.01..0.13 rows=2 width=8) (actual time=8.298..9.661 rows=3 loops=15)
                                       Index Cond: (movie_id = mi_idx2.movie_id)
                                       Buffers: shared hit=57 read=15
                           ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=0.680..0.680 rows=1 loops=38)
                                 Index Cond: (id = mc2.company_id)
                                 Buffers: shared hit=147 read=5
                     ->  Index Scan using title_idx_id on title t2  (cost=0.01..0.06 rows=1 width=25) (actual time=4.554..4.554 rows=0 loops=38)
                           Index Cond: (id = mc2.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2008))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=142 read=10
               ->  Index Scan using kind_type_pkey on kind_type kt2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=8)
                     Index Cond: (id = t2.kind_id)
                     Filter: ((kind)::text = 'tv series'::text)
                     Buffers: shared hit=16
         ->  Index Scan using kind_type_pkey on kind_type kt1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=8)
               Index Cond: (id = t1.kind_id)
               Filter: ((kind)::text = 'tv series'::text)
               Buffers: shared hit=16
 Planning Time: 6396.348 ms
 Execution Time: 11810.933 ms
(91 rows)

