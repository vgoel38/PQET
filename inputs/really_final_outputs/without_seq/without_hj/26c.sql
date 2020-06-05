                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1282.34..1282.34 rows=1 width=96) (actual time=702040.523..702040.524 rows=1 loops=1)
   Buffers: shared hit=610907 read=125102
   ->  Nested Loop  (cost=0.13..1282.34 rows=1 width=39) (actual time=4016.717..701999.176 rows=5400 loops=1)
         Buffers: shared hit=610907 read=125102
         ->  Nested Loop  (cost=0.12..1282.33 rows=1 width=43) (actual time=1010.665..701909.894 rows=5688 loops=1)
               Buffers: shared hit=599531 read=125102
               ->  Nested Loop  (cost=0.11..1282.32 rows=1 width=47) (actual time=972.380..679065.554 rows=5688 loops=1)
                     Buffers: shared hit=584876 read=122087
                     ->  Nested Loop  (cost=0.10..1282.07 rows=14 width=35) (actual time=874.442..507666.105 rows=204714 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=290480 read=92171
                           ->  Nested Loop  (cost=0.08..1281.81 rows=1 width=43) (actual time=829.420..85797.950 rows=1495 loops=1)
                                 Buffers: shared hit=155537 read=22117
                                 ->  Nested Loop  (cost=0.07..1281.80 rows=2 width=47) (actual time=829.349..85750.505 rows=4533 loops=1)
                                       Join Filter: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=146471 read=22117
                                       ->  Nested Loop  (cost=0.06..1281.73 rows=3 width=33) (actual time=786.008..61692.076 rows=1595 loops=1)
                                             Buffers: shared hit=141952 read=20279
                                             ->  Nested Loop  (cost=0.05..1281.48 rows=6 width=8) (actual time=115.486..21461.777 rows=6396 loops=1)
                                                   Buffers: shared hit=122828 read=13799
                                                   ->  Nested Loop  (cost=0.04..1281.36 rows=26 width=12) (actual time=115.469..21401.347 rows=9392 loops=1)
                                                         Buffers: shared hit=104044 read=13799
                                                         ->  Nested Loop  (cost=0.04..1280.91 rows=102 width=16) (actual time=115.435..21301.230 rows=9392 loops=1)
                                                               Buffers: shared hit=85260 read=13799
                                                               ->  Nested Loop  (cost=0.03..1276.18 rows=337 width=4) (actual time=47.812..17224.297 rows=24091 loops=1)
                                                                     Buffers: shared hit=4505 read=12761
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..61.32 rows=10 width=4) (actual time=20.753..313.007 rows=10 loops=1)
                                                                           Index Cond: (keyword = ANY ('{superhero,marvel-comics,based-on-comic,tv-special,fight,violence,magnet,web,claw,laser}'::text[]))
                                                                           Buffers: shared hit=20 read=23
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..121.48 rows=39 width=8) (actual time=33.046..1688.699 rows=2409 loops=10)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=4485 read=12738
                                                               ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.109..0.166 rows=0 loops=24091)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=80755 read=1038
                                                         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=9392)
                                                               Index Cond: (id = cc.status_id)
                                                               Filter: ((kind)::text ~~ '%complete%'::text)
                                                               Buffers: shared hit=18784
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=9392)
                                                         Index Cond: (id = cc.subject_id)
                                                         Filter: ((kind)::text = 'cast'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=18784
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=6.287..6.287 rows=0 loops=6396)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=19124 read=6480
                                       ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=14.992..15.073 rows=3 loops=1595)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=4519 read=1838
                                 ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=0 loops=4533)
                                       Index Cond: (id = mi_idx.info_type_id)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=9066
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=12) (actual time=18.170..281.881 rows=137 loops=1495)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=134943 read=70054
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..0.02 rows=1 width=20) (actual time=0.834..0.834 rows=0 loops=204714)
                           Index Cond: (id = ci.person_role_id)
                           Filter: ((name IS NOT NULL) AND ((name ~~ '%man%'::text) OR (name ~~ '%Man%'::text)))
                           Rows Removed by Filter: 0
                           Buffers: shared hit=294396 read=29916
               ->  Index Only Scan using name_pkey on name n  (cost=0.01..0.01 rows=1 width=4) (actual time=4.011..4.011 rows=1 loops=5688)
                     Index Cond: (id = ci.person_id)
                     Heap Fetches: 0
                     Buffers: shared hit=14655 read=3015
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=5688)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = 'movie'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=11376
 Planning Time: 10120.981 ms
 Execution Time: 702066.104 ms
(76 rows)

