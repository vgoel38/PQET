                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.80..516.80 rows=1 width=96) (actual time=37121.311..37121.311 rows=1 loops=1)
   Buffers: shared hit=87436 read=13271
   ->  Nested Loop  (cost=0.11..516.80 rows=1 width=39) (actual time=5993.429..37120.840 rows=93 loops=1)
         Buffers: shared hit=87436 read=13271
         ->  Nested Loop  (cost=0.10..516.78 rows=1 width=43) (actual time=5977.352..36418.175 rows=93 loops=1)
               Buffers: shared hit=87180 read=13155
               ->  Nested Loop  (cost=0.08..516.54 rows=14 width=31) (actual time=5894.256..32506.944 rows=2300 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=84309 read=12452
                     ->  Nested Loop  (cost=0.07..516.27 rows=1 width=39) (actual time=5843.923..25824.016 rows=6 loops=1)
                           Join Filter: (kt.id = t.kind_id)
                           Rows Removed by Join Filter: 23
                           Buffers: shared hit=83306 read=11184
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.008 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=1
                           ->  Nested Loop  (cost=0.07..516.24 rows=1 width=43) (actual time=5843.910..25823.944 rows=29 loops=1)
                                 Buffers: shared hit=83305 read=11184
                                 ->  Nested Loop  (cost=0.05..516.20 rows=1 width=18) (actual time=105.337..23633.820 rows=84 loops=1)
                                       Join Filter: (it2.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 213
                                       Buffers: shared hit=83127 read=11026
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.012..0.016 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.05..516.15 rows=1 width=22) (actual time=105.320..23633.489 rows=297 loops=1)
                                             Buffers: shared hit=83126 read=11026
                                             ->  Nested Loop  (cost=0.04..516.11 rows=2 width=8) (actual time=76.575..13095.007 rows=2667 loops=1)
                                                   Join Filter: (cct1.id = cc.subject_id)
                                                   Rows Removed by Join Filter: 1307
                                                   Buffers: shared hit=75656 read=7749
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.002..0.005 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..516.07 rows=10 width=12) (actual time=76.570..13091.951 rows=3974 loops=1)
                                                         Join Filter: (cct2.id = cc.status_id)
                                                         Rows Removed by Join Filter: 3974
                                                         Buffers: shared hit=75655 read=7749
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.011 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.04..516.03 rows=41 width=16) (actual time=38.429..6543.044 rows=3974 loops=2)
                                                               Buffers: shared hit=75654 read=7749
                                                               ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=19.307..5778.464 rows=9984 loops=2)
                                                                     Buffers: shared hit=8744 read=6741
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=13.903..57.400 rows=4 loops=2)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                           Buffers: shared hit=23 read=12
                                                                     ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=9.127..1428.409 rows=2496 loops=8)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=8721 read=6729
                                                               ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.057..0.075 rows=0 loops=19968)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=66910 read=1008
                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=3.933..3.950 rows=0 loops=2667)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=7470 read=3277
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=26.068..26.068 rows=0 loops=84)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=178 read=158
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=30.251..1112.712 rows=383 loops=6)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=1003 read=1268
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.697..1.697 rows=0 loops=2300)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=2871 read=703
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=7.550..7.550 rows=1 loops=93)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=256 read=116
 Planning Time: 10113.363 ms
 Execution Time: 37121.765 ms
(81 rows)

