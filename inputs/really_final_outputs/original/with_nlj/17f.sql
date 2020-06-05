 Aggregate  (cost=168.51..168.51 rows=1 width=32) (actual time=1604537.932..1604537.932 rows=1 loops=1)
   Buffers: shared hit=10346180 read=343708
   ->  Nested Loop  (cost=0.10..168.49 rows=278 width=15) (actual time=1589.544..1603792.375 rows=1113120 loops=1)
         Buffers: shared hit=10346180 read=343708
         ->  Nested Loop  (cost=0.08..163.56 rows=278 width=19) (actual time=1540.562..1566296.279 rows=1113120 loops=1)
               Buffers: shared hit=5893389 read=339907
               ->  Nested Loop  (cost=0.07..161.23 rows=145 width=27) (actual time=179.094..1553097.967 rows=149494 loops=1)
                     Buffers: shared hit=5193384 read=322468
                     ->  Nested Loop  (cost=0.06..138.94 rows=1138 width=16) (actual time=153.933..1215330.022 rows=1038393 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=1102014 read=253560
                           ->  Nested Loop  (cost=0.04..129.99 rows=34 width=8) (actual time=108.105..98271.773 rows=41840 loops=1)
                                 Buffers: shared hit=141595 read=37534
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.636..6228.952 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.956..30.957 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.656..6149.115 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=4) (actual time=2.196..2.196 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Buffers: shared hit=141595 read=25872
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.554..26.661 rows=25 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=960419 read=216026
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                           Index Cond: (id = ci.person_id)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4091370 read=68908
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.062..0.083 rows=7 loops=149494)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=700005 read=17439
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1113120)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=4452791 read=3801
 Planning Time: 3746.391 ms
 Execution Time: 1604558.449 ms
