                                                                                                         QUERY PLAN                                                                                                          
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.14..517.14 rows=1 width=96) (actual time=102196.083..102196.084 rows=1 loops=1)
   Buffers: shared hit=101967 read=23170
   ->  Nested Loop  (cost=0.11..517.14 rows=1 width=39) (actual time=8601.061..102195.646 rows=93 loops=1)
         Join Filter: (kt.id = t.kind_id)
         Rows Removed by Join Filter: 18
         Buffers: shared hit=101967 read=23170
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=9.552..9.555 rows=1 loops=1)
               Filter: ((kind)::text = 'movie'::text)
               Rows Removed by Filter: 6
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.11..517.11 rows=1 width=43) (actual time=8591.500..102185.939 rows=111 loops=1)
               Join Filter: (mk.movie_id = t.id)
               Buffers: shared hit=101967 read=23169
               ->  Nested Loop  (cost=0.10..517.09 rows=1 width=38) (actual time=6037.256..100001.739 rows=365 loops=1)
                     Buffers: shared hit=100620 read=23056
                     ->  Nested Loop  (cost=0.08..517.07 rows=1 width=42) (actual time=6016.866..96120.995 rows=365 loops=1)
                           Buffers: shared hit=99741 read=22475
                           ->  Nested Loop  (cost=0.07..516.47 rows=34 width=30) (actual time=288.015..69448.903 rows=10367 loops=1)
                                 Buffers: shared hit=86380 read=18066
                                 ->  Nested Loop  (cost=0.05..516.20 rows=1 width=18) (actual time=228.103..27479.847 rows=84 loops=1)
                                       Join Filter: (it.id = mi_idx.info_type_id)
                                       Rows Removed by Join Filter: 213
                                       Buffers: shared hit=83114 read=11039
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=1.585..1.589 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.05..516.16 rows=1 width=22) (actual time=226.512..27477.889 rows=297 loops=1)
                                             Buffers: shared hit=83114 read=11038
                                             ->  Nested Loop  (cost=0.04..516.11 rows=2 width=8) (actual time=177.313..13541.100 rows=2667 loops=1)
                                                   Join Filter: (cc.subject_id = cct.id)
                                                   Rows Removed by Join Filter: 1307
                                                   Buffers: shared hit=75648 read=7757
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=7.378..7.381 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..516.08 rows=10 width=12) (actual time=169.929..13530.342 rows=3974 loops=1)
                                                         Join Filter: (cct.id = cc.status_id)
                                                         Rows Removed by Join Filter: 3974
                                                         Buffers: shared hit=75648 read=7756
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.023 rows=2 loops=1)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Rows Removed by Filter: 2
                                                               Buffers: shared hit=1
                                                         ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=85.017..6762.085 rows=3974 loops=2)
                                                               Buffers: shared hit=75647 read=7756
                                                               ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=28.791..5776.445 rows=9984 loops=2)
                                                                     Buffers: shared hit=8743 read=6742
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=8.289..54.933 rows=4 loops=2)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,fight}'::text[]))
                                                                           Buffers: shared hit=23 read=12
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=16.769..1428.542 rows=2496 loops=8)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=8720 read=6730
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.075..0.097 rows=0 loops=19968)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=66904 read=1014
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=5.194..5.224 rows=0 loops=2667)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=7466 read=3281
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=30.072..499.299 rows=123 loops=84)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=3266 read=7027
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=2.568..2.568 rows=0 loops=10367)
                                 Index Cond: (id = ci.person_role_id)
                                 Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=13361 read=4409
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=10.625..10.625 rows=1 loops=365)
                           Index Cond: (id = ci.person_id)
                           Buffers: shared hit=879 read=581
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=25) (actual time=5.978..5.978 rows=0 loops=365)
                     Index Cond: (id = ci.movie_id)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=1347 read=113
 Planning Time: 9462.495 ms
 Execution Time: 102223.492 ms
(81 rows)

