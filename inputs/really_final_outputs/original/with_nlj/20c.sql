 Aggregate  (cost=1281.66..1281.66 rows=1 width=64) (actual time=656336.089..656336.090 rows=1 loops=1)
   Buffers: shared hit=612922 read=119422
   ->  Nested Loop  (cost=0.10..1281.66 rows=1 width=32) (actual time=2248.666..656295.689 rows=5406 loops=1)
         Buffers: shared hit=612922 read=119422
         ->  Nested Loop  (cost=0.08..1281.64 rows=1 width=21) (actual time=2182.249..614357.731 rows=5406 loops=1)
               Buffers: shared hit=597426 read=113270
               ->  Nested Loop  (cost=0.07..1281.55 rows=5 width=25) (actual time=1933.610..449732.620 rows=189844 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=328815 read=84729
                     ->  Nested Loop  (cost=0.05..1281.29 rows=1 width=29) (actual time=1808.833..64836.947 rows=1267 loops=1)
                           Join Filter: (t.kind_id = kt.id)
                           Rows Removed by Join Filter: 328
                           Buffers: shared hit=203430 read=20293
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=11.882..11.887 rows=1 loops=1)
                                 Filter: ((kind)::text = 'movie'::text)
                                 Rows Removed by Filter: 6
                                 Buffers: shared read=1
                           ->  Nested Loop  (cost=0.05..1281.25 rows=3 width=33) (actual time=924.156..64822.233 rows=1595 loops=1)
                                 Buffers: shared hit=203430 read=20292
                                 ->  Nested Loop  (cost=0.04..1281.00 rows=6 width=8) (actual time=178.919..19006.070 rows=6396 loops=1)
                                       Join Filter: (cc.status_id = cct2.id)
                                       Rows Removed by Join Filter: 6396
                                       Buffers: shared hit=184309 read=13809
                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.124..0.129 rows=2 loops=1)
                                             Filter: ((kind)::text ~~ '%complete%'::text)
                                             Rows Removed by Filter: 2
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.04..1280.96 rows=26 width=12) (actual time=89.538..9497.747 rows=6396 loops=2)
                                             Join Filter: (cc.subject_id = cct1.id)
                                             Rows Removed by Join Filter: 2996
                                             Buffers: shared hit=184309 read=13808
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.013 rows=1 loops=2)
                                                   Filter: ((kind)::text = 'cast'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=89.516..9488.797 rows=9392 loops=2)
                                                   Buffers: shared hit=184307 read=13808
                                                   ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=33.228..7891.109 rows=24091 loops=2)
                                                         Buffers: shared hit=21765 read=12764
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=13.325..159.104 rows=10 loops=2)
                                                               Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                               Buffers: shared hit=59 read=24
                                                         ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=17.022..771.381 rows=2409 loops=20)
                                                               Index Cond: (keyword_id = k.id)
                                                               Buffers: shared hit=21706 read=12740
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.046..0.064 rows=0 loops=48182)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=162542 read=1044
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=7.161..7.161 rows=0 loops=6396)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=19121 read=6483
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=17.013..303.468 rows=150 loops=1267)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125385 read=64436
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.864..0.864 rows=0 loops=189844)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268611 read=28541
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=7.752..7.752 rows=1 loops=5406)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15496 read=6152
 Planning Time: 3310.813 ms
 Execution Time: 656363.174 ms
