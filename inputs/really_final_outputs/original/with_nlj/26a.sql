 Aggregate  (cost=571.93..571.93 rows=1 width=128) (actual time=300833.584..300833.584 rows=1 loops=1)
   Buffers: shared hit=1284349 read=71640
   ->  Nested Loop  (cost=0.10..571.93 rows=1 width=54) (actual time=10686.934..300808.246 rows=1728 loops=1)
         Buffers: shared hit=1284349 read=71640
         ->  Nested Loop  (cost=0.08..571.91 rows=1 width=43) (actual time=10623.018..287801.653 rows=1728 loops=1)
               Buffers: shared hit=1279369 read=69705
               ->  Nested Loop  (cost=0.07..571.67 rows=14 width=31) (actual time=9749.467..209991.572 rows=58947 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=1200190 read=56829
                     ->  Nested Loop  (cost=0.05..571.40 rows=1 width=39) (actual time=9659.351..56234.101 rows=326 loops=1)
                           Buffers: shared hit=1168217 read=30261
                           ->  Nested Loop  (cost=0.04..571.34 rows=4 width=43) (actual time=9364.150..52300.106 rows=79039 loops=1)
                                 Buffers: shared hit=852697 read=28826
                                 ->  Nested Loop  (cost=0.03..571.15 rows=2 width=35) (actual time=9322.952..40143.235 rows=647 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 5355
                                       Buffers: shared hit=851369 read=26998
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=11.893..11.897 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.03..571.11 rows=17 width=39) (actual time=400.729..40128.205 rows=6002 loops=1)
                                             Join Filter: (cc.movie_id = t.id)
                                             Buffers: shared hit=851369 read=26997
                                             ->  Nested Loop  (cost=0.01..548.88 rows=32 width=14) (actual time=69.252..3040.995 rows=17898 loops=1)
                                                   Join Filter: (cct2.id = cc.status_id)
                                                   Rows Removed by Join Filter: 17898
                                                   Buffers: shared hit=797184 read=9511
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.122..0.126 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.01..548.83 rows=126 width=18) (actual time=34.622..1512.127 rows=17898 loops=2)
                                                         Join Filter: (cct1.id = cc.subject_id)
                                                         Rows Removed by Join Filter: 12016
                                                         Buffers: shared hit=797184 read=9510
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.010 rows=1 loops=2)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=2
                                                         ->  Nested Loop  (cost=0.01..548.73 rows=502 width=22) (actual time=34.610..1497.359 rows=29914 loops=2)
                                                               Buffers: shared hit=797182 read=9510
                                                               ->  Nested Loop  (cost=0.00..496.08 rows=1708 width=10) (actual time=9.548..710.801 rows=121572 loops=2)
                                                                     Join Filter: (it2.id = mi_idx.info_type_id)
                                                                     Rows Removed by Join Filter: 71395
                                                                     Buffers: shared hit=8454 read=8454
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=4.919..4.927 rows=1 loops=2)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1 read=1
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=4.624..640.864 rows=192967 loops=2)
                                                                           Filter: (info > '7.0'::text)
                                                                           Rows Removed by Filter: 1187068
                                                                           Buffers: shared hit=8453 read=8453
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.005..0.006 rows=0 loops=243144)
                                                                     Index Cond: (movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=788728 read=1056
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.69 rows=1 width=25) (actual time=2.071..2.071 rows=0 loops=17898)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=54185 read=17486
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=15.929..18.708 rows=122 loops=647)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=1328 read=1828
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.049..0.049 rows=0 loops=79039)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=315520 read=1435
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=19.918..471.192 rows=181 loops=326)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=31973 read=26568
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=1.316..1.316 rows=0 loops=58947)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=79179 read=12876
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=7.520..7.520 rows=1 loops=1728)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=4980 read=1935
 Planning Time: 9527.393 ms
 Execution Time: 300858.247 ms
