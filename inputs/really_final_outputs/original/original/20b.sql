                                                                                                     QUERY PLAN                                                                                                     
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1029.69..1029.69 rows=1 width=32) (actual time=659199.853..659199.854 rows=1 loops=1)
   Buffers: shared hit=771686 read=121791
   ->  Nested Loop  (cost=0.10..1029.69 rows=1 width=17) (actual time=22366.579..659199.731 rows=17 loops=1)
         Buffers: shared hit=771686 read=121791
         ->  Nested Loop  (cost=0.08..1029.67 rows=1 width=21) (actual time=22343.392..659130.210 rows=33 loops=1)
               Buffers: shared hit=771568 read=121777
               ->  Nested Loop  (cost=0.07..1029.60 rows=4 width=25) (actual time=1882.006..487581.381 rows=222518 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=452154 read=91722
                     ->  Nested Loop  (cost=0.05..1029.33 rows=1 width=29) (actual time=1832.199..69371.874 rows=1472 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 400
                           Buffers: shared hit=297985 read=23646
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.014..0.017 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared hit=1
                           ->  Nested Loop  (cost=0.05..1029.30 rows=3 width=33) (actual time=859.368..69368.955 rows=1872 loops=1)
                                 Buffers: shared hit=297984 read=23646
                                 ->  Nested Loop  (cost=0.04..1029.09 rows=5 width=8) (actual time=134.592..20287.399 rows=8765 loops=1)
                                       Join Filter: (cc.status_id = cct2.id)
                                       Rows Removed by Join Filter: 8765
                                       Buffers: shared hit=270584 read=15952
                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.014 rows=2 loops=1)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.04..1029.05 rows=20 width=12) (actual time=67.453..10137.104 rows=8765 loops=2)
                                             Join Filter: (cc.subject_id = cct1.id)
                                             Rows Removed by Join Filter: 4045
                                             Buffers: shared hit=270583 read=15952
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.011 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Nested Loop  (cost=0.04..1029.01 rows=82 width=16) (actual time=67.433..10125.711 rows=12810 loops=2)
                                                   Buffers: shared hit=270581 read=15952
                                                   ->  Nested Loop  (cost=0.03..1025.21 rows=270 width=4) (actual time=48.301..8609.264 rows=35548 loops=2)
                                                         Buffers: shared hit=32379 read=14908
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=4) (actual time=42.893..152.558 rows=8 loops=2)
                                                               Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                                               Buffers: shared hit=47 read=20
                                                         ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.02 rows=39 width=8) (actual time=9.977..1054.146 rows=4444 loops=16)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=32332 read=14888
                                                   ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.028..0.041 rows=0 loops=71096)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=238202 read=1044
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=5.597..5.597 rows=0 loops=8765)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=27400 read=7694
                     ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=22.491..283.800 rows=151 loops=1472)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=154169 read=68076
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.768..0.768 rows=0 loops=222518)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name !~~ '%Sherlock%'::text) AND ((name ~~ '%Tony%Stark%'::text) OR (name ~~ '%Iron%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=319414 read=30055
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=2.103..2.103 rows=1 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=118 read=14
 Planning Time: 5938.564 ms
 Execution Time: 659200.693 ms
(68 rows)

