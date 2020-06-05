                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.89..516.89 rows=1 width=96) (actual time=36581.348..36581.349 rows=1 loops=1)
   Buffers: shared hit=59625 read=13227
   ->  Nested Loop  (cost=0.13..516.89 rows=1 width=39) (actual time=7118.673..36580.910 rows=93 loops=1)
         Buffers: shared hit=59625 read=13227
         ->  Nested Loop  (cost=0.11..516.87 rows=1 width=43) (actual time=7086.927..36179.567 rows=93 loops=1)
               Buffers: shared hit=59410 read=13155
               ->  Nested Loop  (cost=0.10..516.63 rows=14 width=31) (actual time=7003.826..32031.684 rows=2300 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=56539 read=12452
                     ->  Nested Loop  (cost=0.08..516.36 rows=1 width=39) (actual time=6970.211..25293.193 rows=6 loops=1)
                           Buffers: shared hit=55536 read=11184
                           ->  Nested Loop  (cost=0.08..516.36 rows=1 width=43) (actual time=6970.158..25292.464 rows=29 loops=1)
                                 Buffers: shared hit=55478 read=11184
                                 ->  Nested Loop  (cost=0.07..516.31 rows=1 width=18) (actual time=148.550..23100.622 rows=84 loops=1)
                                       Buffers: shared hit=55300 read=11026
                                       ->  Nested Loop  (cost=0.06..516.31 rows=1 width=22) (actual time=148.525..23097.335 rows=297 loops=1)
                                             Buffers: shared hit=54706 read=11026
                                             ->  Nested Loop  (cost=0.05..516.26 rows=2 width=8) (actual time=115.527..13780.794 rows=2667 loops=1)
                                                   Buffers: shared hit=47236 read=7749
                                                   ->  Nested Loop  (cost=0.04..516.22 rows=10 width=12) (actual time=115.499..13765.008 rows=2667 loops=1)
                                                         Buffers: shared hit=41902 read=7749
                                                         ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=115.464..13737.268 rows=3974 loops=1)
                                                               Buffers: shared hit=33954 read=7749
                                                               ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=47.818..12233.774 rows=9984 loops=1)
                                                                     Buffers: shared hit=1003 read=6741
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=20.779..107.558 rows=4 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                           Buffers: shared hit=7 read=12
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=30.017..3029.294 rows=2496 loops=4)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=996 read=6729
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.111..0.148 rows=0 loops=9984)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=32951 read=1008
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=3974)
                                                               Index Cond: (id = cc.subject_id)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=7948
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=2667)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Buffers: shared hit=5334
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=3.468..3.492 rows=0 loops=2667)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=7470 read=3277
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.008..0.008 rows=0 loops=297)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=594
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=26.090..26.090 rows=0 loops=84)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=178 read=158
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.018..0.018 rows=0 loops=29)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=58
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=24.702..1122.079 rows=383 loops=6)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=1003 read=1268
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.800..1.800 rows=0 loops=2300)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=2871 read=703
         ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=4.311..4.311 rows=1 loops=93)
               Index Cond: (id = ci.person_id)
               Heap Fetches: 0
               Buffers: shared hit=215 read=72
 Planning Time: 10255.668 ms
 Execution Time: 36602.734 ms
(77 rows)

