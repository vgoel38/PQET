                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.94..516.94 rows=1 width=96) (actual time=43361.999..43362.000 rows=1 loops=1)
   Buffers: shared hit=209706 read=24314
   ->  Nested Loop  (cost=0.13..516.94 rows=1 width=42) (actual time=2789.024..43361.589 rows=148 loops=1)
         Buffers: shared hit=209706 read=24314
         ->  Nested Loop  (cost=0.13..516.93 rows=1 width=46) (actual time=2788.982..43360.302 rows=224 loops=1)
               Join Filter: (t.id = mi_idx.movie_id)
               Buffers: shared hit=209258 read=24314
               ->  Nested Loop  (cost=0.11..516.91 rows=1 width=56) (actual time=2740.939..42999.225 rows=210 loops=1)
                     Buffers: shared hit=208440 read=24292
                     ->  Nested Loop  (cost=0.10..516.81 rows=1 width=41) (actual time=2715.285..41812.832 rows=212 loops=1)
                           Buffers: shared hit=207722 read=24162
                           ->  Nested Loop  (cost=0.10..516.81 rows=1 width=45) (actual time=2690.863..41787.273 rows=212 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=207510 read=24161
                                 ->  Nested Loop  (cost=0.08..516.78 rows=1 width=33) (actual time=1985.206..40997.614 rows=20 loops=1)
                                       Buffers: shared hit=207459 read=24108
                                       ->  Nested Loop  (cost=0.08..516.77 rows=1 width=37) (actual time=1985.164..40996.863 rows=34 loops=1)
                                             Join Filter: (t.id = mi.movie_id)
                                             Buffers: shared hit=207391 read=24108
                                             ->  Nested Loop  (cost=0.07..516.62 rows=1 width=29) (actual time=192.633..25669.644 rows=273 loops=1)
                                                   Buffers: shared hit=204770 read=21575
                                                   ->  Nested Loop  (cost=0.06..516.61 rows=3 width=33) (actual time=192.595..25664.498 rows=315 loops=1)
                                                         Buffers: shared hit=204140 read=21575
                                                         ->  Nested Loop  (cost=0.05..516.26 rows=8 width=8) (actual time=163.555..9162.538 rows=3832 loops=1)
                                                               Buffers: shared hit=193026 read=17344
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=10 width=12) (actual time=163.531..9134.829 rows=6216 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=111.879..9036.664 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=56.721..7786.635 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.454..114.561 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.766..2549.983 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.025..0.032 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=20024)
                                                                           Index Cond: (id = cc.subject_id)
                                                                           Filter: ((kind)::text = 'crew'::text)
                                                                           Rows Removed by Filter: 1
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=6216)
                                                                     Index Cond: (id = cc.status_id)
                                                                     Filter: ((kind)::text <> 'complete+verified'::text)
                                                                     Rows Removed by Filter: 0
                                                                     Buffers: shared hit=12432
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=4.305..4.305 rows=0 loops=3832)
                                                               Index Cond: (id = mk.movie_id)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=11114 read=4231
                                                   ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=315)
                                                         Index Cond: (id = t.kind_id)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=630
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=53.501..56.141 rows=0 loops=273)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                   Rows Removed by Filter: 109
                                                   Buffers: shared hit=2621 read=2533
                                       ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=34)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=68
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=35.537..39.468 rows=11 loops=20)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                       Rows Removed by Filter: 14
                                       Buffers: shared hit=51 read=53
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.118..0.118 rows=1 loops=212)
                                 Index Cond: (id = mc.company_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=212 read=1
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=5.594..5.594 rows=1 loops=212)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=718 read=130
               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=1.715..1.716 rows=1 loops=210)
                     Index Cond: (movie_id = mk.movie_id)
                     Filter: (info > '6.5'::text)
                     Rows Removed by Filter: 2
                     Buffers: shared hit=818 read=22
         ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=224)
               Index Cond: (id = mi_idx.info_type_id)
               Filter: ((info)::text = 'rating'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=448
 Planning Time: 15247.258 ms
 Execution Time: 43385.434 ms
(96 rows)

