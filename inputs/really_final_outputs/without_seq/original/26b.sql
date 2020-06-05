                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.03..517.03 rows=1 width=96) (actual time=46877.445..46877.446 rows=1 loops=1)
   Buffers: shared hit=70008 read=14925
   ->  Nested Loop  (cost=0.13..517.03 rows=1 width=39) (actual time=6882.150..46877.062 rows=93 loops=1)
         Buffers: shared hit=70008 read=14925
         ->  Nested Loop  (cost=0.12..517.02 rows=1 width=43) (actual time=6882.113..46876.216 rows=111 loops=1)
               Buffers: shared hit=69786 read=14925
               ->  Nested Loop  (cost=0.12..517.02 rows=1 width=47) (actual time=6882.065..46874.216 rows=213 loops=1)
                     Buffers: shared hit=69360 read=14925
                     ->  Nested Loop  (cost=0.11..517.00 rows=1 width=51) (actual time=6850.310..46341.120 rows=213 loops=1)
                           Buffers: shared hit=68782 read=14836
                           ->  Nested Loop  (cost=0.09..516.76 rows=14 width=39) (actual time=6767.213..38561.517 rows=6430 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=60115 read=13553
                                 ->  Nested Loop  (cost=0.07..516.49 rows=1 width=47) (actual time=6733.558..25246.933 rows=53 loops=1)
                                       Buffers: shared hit=55910 read=11244
                                       ->  Nested Loop  (cost=0.06..516.45 rows=1 width=22) (actual time=153.581..22891.534 rows=144 loops=1)
                                             Buffers: shared hit=55500 read=11078
                                             ->  Nested Loop  (cost=0.06..516.44 rows=1 width=26) (actual time=153.553..22887.092 rows=457 loops=1)
                                                   Buffers: shared hit=54586 read=11078
                                                   ->  Nested Loop  (cost=0.04..516.22 rows=10 width=12) (actual time=120.545..13712.580 rows=3974 loops=1)
                                                         Buffers: shared hit=41902 read=7749
                                                         ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=120.510..13683.090 rows=3974 loops=1)
                                                               Buffers: shared hit=33954 read=7749
                                                               ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=52.871..11985.023 rows=9984 loops=1)
                                                                     Buffers: shared hit=1003 read=6741
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=25.836..113.370 rows=4 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                           Buffers: shared hit=7 read=12
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=30.017..2965.628 rows=2496 loops=4)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=996 read=6729
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.124..0.168 rows=0 loops=9984)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=32951 read=1008
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=3974)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Buffers: shared hit=7948
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=2.288..2.307 rows=0 loops=3974)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Filter: (info > '8.0'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=12684 read=3329
                                             ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=0 loops=457)
                                                   Index Cond: (id = mi_idx.info_type_id)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=914
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=16.354..16.354 rows=0 loops=144)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=410 read=166
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=14.603..250.954 rows=121 loops=53)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=4205 read=2309
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.207..1.207 rows=0 loops=6430)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=8667 read=1283
                     ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=2.499..2.499 rows=1 loops=213)
                           Index Cond: (id = ci.person_id)
                           Heap Fetches: 0
                           Buffers: shared hit=578 read=89
               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=213)
                     Index Cond: (id = cc.subject_id)
                     Filter: ((kind)::text = 'cast'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=426
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=111)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = 'movie'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=222
 Planning Time: 10373.336 ms
 Execution Time: 46878.247 ms
(77 rows)

