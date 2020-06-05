                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=2048.96..2048.96 rows=1 width=64) (actual time=6620.105..6620.106 rows=1 loops=1)
   Buffers: shared hit=57821 read=51198
   ->  Nested Loop  (cost=0.06..2048.96 rows=1 width=32) (actual time=1646.994..6620.061 rows=16 loops=1)
         Buffers: shared hit=57821 read=51198
         ->  Nested Loop  (cost=0.04..2048.95 rows=1 width=23) (actual time=1116.054..6039.993 rows=46 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 130
               Buffers: shared hit=57669 read=51166
               ->  Nested Loop  (cost=0.04..2048.91 rows=1 width=27) (actual time=1115.896..6038.973 rows=176 loops=1)
                     Join Filter: (ci.movie_id = ml.linked_movie_id)
                     Rows Removed by Join Filter: 10588765
                     Buffers: shared hit=57494 read=51165
                     ->  Nested Loop  (cost=0.04..2037.32 rows=1 width=19) (actual time=1054.665..3767.641 rows=353 loops=1)
                           Join Filter: (n.id = ci.person_id)
                           Buffers: shared hit=118 read=51002
                           ->  Nested Loop  (cost=0.03..2035.69 rows=1 width=27) (actual time=1013.699..3596.410 rows=3 loops=1)
                                 Buffers: shared hit=104 read=50983
                                 ->  Nested Loop  (cost=0.01..2035.21 rows=1 width=23) (actual time=965.857..3525.355 rows=3 loops=1)
                                       Buffers: shared hit=100 read=50975
                                       ->  Nested Loop  (cost=0.00..2029.08 rows=1 width=4) (actual time=72.367..2768.415 rows=64 loops=1)
                                             Join Filter: (it.id = pi.info_type_id)
                                             Buffers: shared read=50819
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=23.756..23.795 rows=1 loops=1)
                                                   Filter: ((info)::text = 'mini biography'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared read=1
                                             ->  Seq Scan on person_info pi  (cost=0.00..2029.02 rows=64 width=8) (actual time=48.606..2744.406 rows=64 loops=1)
                                                   Filter: (note = 'Volker Boehm'::text)
                                                   Rows Removed by Filter: 2963600
                                                   Buffers: shared read=50818
                                       ->  Index Scan using name_pkey on name n  (cost=0.01..6.13 rows=1 width=19) (actual time=11.819..11.819 rows=0 loops=64)
                                             Index Cond: (id = pi.person_id)
                                             Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=100 read=156
                                 ->  Index Scan using person_id_aka_name on aka_name an  (cost=0.01..0.48 rows=1 width=4) (actual time=20.361..23.675 rows=1 loops=3)
                                       Index Cond: (person_id = n.id)
                                       Filter: (name ~~ '%a%'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=4 read=8
                           ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..1.63 rows=31 width=8) (actual time=24.721..56.989 rows=118 loops=3)
                                 Index Cond: (person_id = an.person_id)
                                 Buffers: shared hit=14 read=19
                     ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.075..2.515 rows=29997 loops=353)
                           Buffers: shared hit=57376 read=163
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.004 rows=1 loops=176)
                     Filter: ((link)::text = 'features'::text)
                     Rows Removed by Filter: 15
                     Buffers: shared hit=175 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=21) (actual time=12.608..12.608 rows=0 loops=46)
               Index Cond: (id = ci.movie_id)
               Filter: ((production_year >= 1980) AND (production_year <= 1984))
               Rows Removed by Filter: 1
               Buffers: shared hit=152 read=32
 Planning Time: 4518.672 ms
 Execution Time: 6620.800 ms
(56 rows)

