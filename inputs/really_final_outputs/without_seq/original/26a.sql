                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1282.46..1282.46 rows=1 width=128) (actual time=496178.048..496178.049 rows=1 loops=1)
   Buffers: shared hit=467878 read=92195
   ->  Nested Loop  (cost=0.13..1282.46 rows=1 width=54) (actual time=3632.623..496156.954 rows=1728 loops=1)
         Buffers: shared hit=467878 read=92195
         ->  Nested Loop  (cost=0.11..1282.21 rows=14 width=42) (actual time=2388.742..415326.263 rows=58947 loops=1)
               Buffers: shared hit=388693 read=79325
               ->  Nested Loop  (cost=0.10..1281.94 rows=14 width=31) (actual time=2375.719..237561.619 rows=58947 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=184633 read=47425
                     ->  Nested Loop  (cost=0.08..1281.67 rows=1 width=39) (actual time=2342.991..62804.307 rows=326 loops=1)
                           Buffers: shared hit=152656 read=20861
                           ->  Nested Loop  (cost=0.08..1281.67 rows=1 width=43) (actual time=2342.944..62795.257 rows=445 loops=1)
                                 Buffers: shared hit=151766 read=20861
                                 ->  Nested Loop  (cost=0.07..1281.62 rows=1 width=18) (actual time=157.409..41063.658 rows=1423 loops=1)
                                       Buffers: shared hit=148051 read=18881
                                       ->  Nested Loop  (cost=0.06..1281.61 rows=3 width=22) (actual time=157.369..41040.398 rows=2286 loops=1)
                                             Buffers: shared hit=143479 read=18881
                                             ->  Nested Loop  (cost=0.05..1281.48 rows=6 width=8) (actual time=124.761..23460.468 rows=6396 loops=1)
                                                   Buffers: shared hit=122828 read=13799
                                                   ->  Nested Loop  (cost=0.04..1281.36 rows=26 width=12) (actual time=124.744..23407.651 rows=9392 loops=1)
                                                         Buffers: shared hit=104044 read=13799
                                                         ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=124.707..23332.204 rows=9392 loops=1)
                                                               Buffers: shared hit=85260 read=13799
                                                               ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=57.074..20959.352 rows=24091 loops=1)
                                                                     Buffers: shared hit=4505 read=12761
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=30.027..292.643 rows=10 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                                           Buffers: shared hit=20 read=23
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=33.054..2064.573 rows=2409 loops=10)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=4485 read=12738
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.068..0.096 rows=0 loops=24091)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=80755 read=1038
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=9392)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Buffers: shared hit=18784
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=9392)
                                                         Index Cond: (id = cc.subject_id)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=18784
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=2.735..2.747 rows=0 loops=6396)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info > '7.0'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=20651 read=5082
                                       ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=2286)
                                             Index Cond: (id = mi_idx.info_type_id)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=4572
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=15.268..15.268 rows=0 loops=1423)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=3715 read=1980
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=445)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=890
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=20.566..535.601 rows=181 loops=326)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=31977 read=26564
               ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=3.010..3.010 rows=1 loops=58947)
                     Index Cond: (id = ci.person_id)
                     Buffers: shared hit=204060 read=31900
         ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.368..1.368 rows=0 loops=58947)
               Index Cond: (id = ci.person_role_id)
               Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
               Rows Removed by Filter: 0
               Buffers: shared hit=79185 read=12870
 Planning Time: 10402.777 ms
 Execution Time: 496178.562 ms
(76 rows)

