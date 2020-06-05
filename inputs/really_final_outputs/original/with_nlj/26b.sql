 Aggregate  (cost=516.82..516.82 rows=1 width=96) (actual time=293157.342..293157.343 rows=1 loops=1)
   Buffers: shared hit=165504 read=52999
   ->  Nested Loop  (cost=0.11..516.82 rows=1 width=39) (actual time=25159.504..293156.974 rows=93 loops=1)
         Join Filter: (it2.id = mi_idx.info_type_id)
         Rows Removed by Join Filter: 133
         Buffers: shared hit=165504 read=52999
         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.498..13.506 rows=1 loops=1)
               Filter: ((info)::text = 'rating'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.11..516.78 rows=1 width=43) (actual time=25145.993..293143.240 rows=226 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=165504 read=52998
               ->  Nested Loop  (cost=0.10..516.76 rows=1 width=49) (actual time=2160.203..286573.632 rows=1262 loops=1)
                     Buffers: shared hit=160738 read=52614
                     ->  Nested Loop  (cost=0.08..516.74 rows=1 width=53) (actual time=2093.788..274077.469 rows=1262 loops=1)
                           Buffers: shared hit=157511 read=50781
                           ->  Nested Loop  (cost=0.07..516.49 rows=14 width=41) (actual time=1845.149..194931.827 rows=44986 loops=1)
                                 Join Filter: (t.id = ci.movie_id)
                                 Buffers: shared hit=101154 read=37802
                                 ->  Nested Loop  (cost=0.05..516.23 rows=1 width=29) (actual time=1770.355..37059.825 rows=269 loops=1)
                                       Join Filter: (kt.id = t.kind_id)
                                       Rows Removed by Join Filter: 98
                                       Buffers: shared hit=82601 read=11477
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=6.718..6.724 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.05..516.20 rows=1 width=33) (actual time=1763.629..37052.461 rows=367 loops=1)
                                             Buffers: shared hit=82601 read=11476
                                             ->  Nested Loop  (cost=0.04..516.11 rows=2 width=8) (actual time=170.573..11328.308 rows=2667 loops=1)
                                                   Join Filter: (cc.subject_id = cct1.id)
                                                   Rows Removed by Join Filter: 1307
                                                   Buffers: shared hit=75648 read=7757
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.118..0.124 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..516.08 rows=10 width=12) (actual time=170.452..11323.812 rows=3974 loops=1)
                                                         Join Filter: (cct2.id = cc.status_id)
                                                         Rows Removed by Join Filter: 3974
                                                         Buffers: shared hit=75648 read=7756
                                                         ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.017 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=85.232..5657.967 rows=3974 loops=2)
                                                               Buffers: shared hit=75647 read=7756
                                                               ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=29.043..4440.980 rows=9984 loops=2)
                                                                     Buffers: shared hit=8743 read=6742
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=8.559..59.535 rows=4 loops=2)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                           Buffers: shared hit=23 read=12
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=15.718..1093.214 rows=2496 loops=8)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=8720 read=6730
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.080..0.119 rows=0 loops=19968)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=66904 read=1014
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=9.643..9.643 rows=0 loops=2667)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=6953 read=3719
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=26.404..586.331 rows=167 loops=269)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=18553 read=26325
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.755..1.755 rows=0 loops=44986)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=56357 read=12979
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=9.895..9.895 rows=1 loops=1262)
                           Index Cond: (id = ci.person_id)
                           Buffers: shared hit=3227 read=1833
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=5.192..5.200 rows=0 loops=1262)
                     Index Cond: (movie_id = ci.movie_id)
                     Filter: (info > '8.0'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=4766 read=384
 Planning Time: 9735.204 ms
 Execution Time: 293178.602 ms
