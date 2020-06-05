 Aggregate  (cost=783.33..783.33 rows=1 width=96) (actual time=673170.401..673170.402 rows=1 loops=1)
   Buffers: shared hit=4770232 read=148140
   ->  Nested Loop  (cost=0.10..783.33 rows=1 width=39) (actual time=9944.267..673125.668 rows=5400 loops=1)
         Buffers: shared hit=4770232 read=148140
         ->  Nested Loop  (cost=0.08..783.31 rows=1 width=43) (actual time=9883.013..631246.716 rows=5400 loops=1)
               Buffers: shared hit=4754749 read=141999
               ->  Nested Loop  (cost=0.07..783.06 rows=14 width=31) (actual time=9805.200..467536.698 rows=189738 loops=1)
                     Join Filter: (t.id = ci.movie_id)
                     Buffers: shared hit=4486324 read=113476
                     ->  Nested Loop  (cost=0.05..782.80 rows=1 width=39) (actual time=9713.414..83655.415 rows=1261 loops=1)
                           Buffers: shared hit=4360983 read=49124
                           ->  Nested Loop  (cost=0.04..782.36 rows=30 width=43) (actual time=9450.726..77088.746 rows=293146 loops=1)
                                 Buffers: shared hit=3186814 read=47686
                                 ->  Nested Loop  (cost=0.03..780.70 rows=17 width=35) (actual time=9418.711..53510.837 rows=4028 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 8908
                                       Buffers: shared hit=3177285 read=39255
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=11.810..11.816 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.03..780.65 rows=122 width=39) (actual time=400.732..53490.985 rows=12936 loops=1)
                                             Join Filter: (cc.movie_id = t.id)
                                             Buffers: shared hit=3177285 read=39254
                                             ->  Nested Loop  (cost=0.01..756.24 rows=224 width=14) (actual time=69.250..6429.656 rows=61559 loops=1)
                                                   Join Filter: (cct2.id = cc.status_id)
                                                   Rows Removed by Join Filter: 61559
                                                   Buffers: shared hit=2960483 read=9526
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.123..0.126 rows=2 loops=1)
                                                         Filter: ((kind)::text ~~ '%complete%'::text)
                                                         Rows Removed by Filter: 2
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.01..756.08 rows=897 width=18) (actual time=34.620..3189.270 rows=61559 loops=2)
                                                         Join Filter: (cct1.id = cc.subject_id)
                                                         Rows Removed by Join Filter: 33840
                                                         Buffers: shared hit=2960483 read=9525
                                                         ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.007 rows=1 loops=2)
                                                               Filter: ((kind)::text = 'cast'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=2
                                                         ->  Nested Loop  (cost=0.01..755.52 rows=3587 width=22) (actual time=34.612..3145.940 rows=95399 loops=2)
                                                               Buffers: shared hit=2960481 read=9525
                                                               ->  Nested Loop  (cost=0.00..563.18 rows=12213 width=10) (actual time=9.482..822.022 rows=459925 loops=2)
                                                                     Join Filter: (it2.id = mi_idx.info_type_id)
                                                                     Rows Removed by Join Filter: 920110
                                                                     Buffers: shared hit=8454 read=8454
                                                                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=4.915..4.922 rows=1 loops=2)
                                                                           Filter: ((info)::text = 'rating'::text)
                                                                           Rows Removed by Filter: 112
                                                                           Buffers: shared hit=1 read=1
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=4.560..307.387 rows=1380035 loops=2)
                                                                           Buffers: shared hit=8453 read=8453
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.02 rows=1 width=12) (actual time=0.004..0.004 rows=0 loops=919850)
                                                                     Index Cond: (movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=2952027 read=1071
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=0.763..0.763 rows=0 loops=61559)
                                                   Index Cond: (id = mi_idx.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=216802 read=29728
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.10 rows=11 width=8) (actual time=4.864..5.810 rows=73 loops=4028)
                                       Index Cond: (movie_id = t.id)
                                       Buffers: shared hit=9529 read=8431
                           ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=0.022..0.022 rows=0 loops=293146)
                                 Index Cond: (id = mk.keyword_id)
                                 Filter: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=1174169 read=1438
                     ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=16.275..304.108 rows=150 loops=1261)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=125341 read=64352
               ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=0.860..0.860 rows=0 loops=189738)
                     Index Cond: (id = ci.person_role_id)
                     Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=268425 read=28523
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=4) (actual time=7.750..7.750 rows=1 loops=5400)
               Index Cond: (id = ci.person_id)
               Buffers: shared hit=15483 read=6141
 Planning Time: 9487.383 ms
 Execution Time: 673197.406 ms
