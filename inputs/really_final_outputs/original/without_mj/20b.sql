                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1029.70..1029.70 rows=1 width=32) (actual time=643297.820..643297.820 rows=1 loops=1)
   Buffers: shared hit=771661 read=121816
   ->  Nested Loop  (cost=0.10..1029.70 rows=1 width=17) (actual time=21888.725..643297.719 rows=17 loops=1)
         Buffers: shared hit=771661 read=121816
         ->  Nested Loop  (cost=0.08..1029.68 rows=1 width=21) (actual time=21823.874..643136.491 rows=33 loops=1)
               Buffers: shared hit=771544 read=121801
               ->  Nested Loop  (cost=0.07..1029.61 rows=4 width=25) (actual time=1854.134..473106.410 rows=222518 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=452136 read=91740
                     ->  Nested Loop  (cost=0.05..1029.35 rows=1 width=29) (actual time=1804.404..69005.518 rows=1472 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 400
                           Buffers: shared hit=297971 read=23660
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=24.027..24.030 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.05..1029.31 rows=3 width=33) (actual time=899.141..68978.462 rows=1872 loops=1)
                                 Buffers: shared hit=297971 read=23659
                                 ->  Nested Loop  (cost=0.04..1029.10 rows=5 width=8) (actual time=178.905..19776.125 rows=8765 loops=1)
                                       Join Filter: (cc.status_id = cct2.id)
                                       Rows Removed by Join Filter: 8765
                                       Buffers: shared hit=270574 read=15962
                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.120..0.124 rows=2 loops=1)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..1029.06 rows=20 width=12) (actual time=89.537..9880.973 rows=8765 loops=2)
                                             Join Filter: (cc.subject_id = cct1.id)
                                             Rows Removed by Join Filter: 4045
                                             Buffers: shared hit=270574 read=15961
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.012 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Nested Loop  (cost=0.04..1029.02 rows=82 width=16) (actual time=89.515..9869.449 rows=12810 loops=2)
                                                   Buffers: shared hit=270572 read=15961
                                                   ->  Nested Loop  (cost=0.03..1025.23 rows=270 width=4) (actual time=33.242..8351.058 rows=35548 loops=2)
                                                         Buffers: shared hit=32376 read=14911
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=13.324..123.728 rows=8 loops=2)
                                                               Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                               Buffers: shared hit=47 read=20
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=15.160..1025.499 rows=4444 loops=16)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=32329 read=14891
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.029..0.041 rows=0 loops=71096)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=238196 read=1050
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=5.611..5.611 rows=0 loops=8765)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27397 read=7697
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=15.862..274.237 rows=151 loops=1472)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=154165 read=68080
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.761..0.761 rows=0 loops=222518)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=319408 read=30061
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=4.882..4.882 rows=1 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=117 read=15
 Planning Time: 5217.226 ms
 Execution Time: 643298.312 ms
(68 rows)

