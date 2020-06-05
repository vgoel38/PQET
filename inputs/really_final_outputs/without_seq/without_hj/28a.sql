                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.98..516.98 rows=1 width=96) (actual time=83902.325..83902.326 rows=1 loops=1)
   Buffers: shared hit=300642 read=31545
   ->  Nested Loop  (cost=0.13..516.98 rows=1 width=42) (actual time=704.903..83893.959 rows=4803 loops=1)
         Buffers: shared hit=300642 read=31545
         ->  Nested Loop  (cost=0.12..516.89 rows=1 width=27) (actual time=673.834..79777.835 rows=4955 loops=1)
               Buffers: shared hit=281363 read=30968
               ->  Nested Loop  (cost=0.11..516.88 rows=1 width=31) (actual time=673.802..79752.583 rows=5151 loops=1)
                     Buffers: shared hit=271061 read=30968
                     ->  Nested Loop  (cost=0.11..516.88 rows=1 width=35) (actual time=673.758..79723.092 rows=5728 loops=1)
                           Buffers: shared hit=259605 read=30968
                           ->  Nested Loop  (cost=0.11..516.87 rows=1 width=39) (actual time=654.465..79677.860 rows=5728 loops=1)
                                 Join Filter: (t.id = mc.movie_id)
                                 Buffers: shared hit=253877 read=30967
                                 ->  Nested Loop  (cost=0.09..516.84 rows=1 width=51) (actual time=618.420..73603.029 rows=550 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=251729 read=30259
                                       ->  Nested Loop  (cost=0.08..516.69 rows=1 width=43) (actual time=242.615..43712.924 rows=525 loops=1)
                                             Buffers: shared hit=245949 read=24882
                                             ->  Nested Loop  (cost=0.07..516.64 rows=1 width=18) (actual time=208.519..23598.959 rows=3662 loops=1)
                                                   Buffers: shared hit=235328 read=20838
                                                   ->  Nested Loop  (cost=0.06..516.53 rows=23 width=22) (actual time=208.461..23528.543 rows=10910 loops=1)
                                                         Buffers: shared hit=213508 read=20838
                                                         ->  Nested Loop  (cost=0.05..516.35 rows=8 width=8) (actual time=163.566..11656.363 rows=3832 loops=1)
                                                               Buffers: shared hit=201666 read=17344
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=31 width=12) (actual time=111.904..11605.032 rows=10536 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=111.877..11498.789 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=56.732..10271.283 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.482..96.939 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.760..3383.717 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.023..0.031 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=20024)
                                                                           Index Cond: (id = cc.status_id)
                                                                           Filter: ((kind)::text <> 'complete+verified'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=10536)
                                                                     Index Cond: (id = cc.subject_id)
                                                                     Filter: ((kind)::text = 'crew'::text)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=21072
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=3.065..3.095 rows=3 loops=3832)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=11842 read=3494
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=10910)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=21820
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=5.491..5.491 rows=0 loops=3662)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=10621 read=4044
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=47.359..56.927 rows=1 loops=525)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 129
                                             Buffers: shared hit=5780 read=5377
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=9.484..11.032 rows=10 loops=550)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                       Rows Removed by Filter: 10
                                       Buffers: shared hit=2148 read=708
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=5728)
                                 Index Cond: (id = mc.company_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=5728 read=1
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=5728)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'countries'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=11456
               ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=5151)
                     Index Cond: (id = t.kind_id)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=10302
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.829..0.829 rows=1 loops=4955)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=19279 read=577
 Planning Time: 14967.964 ms
 Execution Time: 83921.680 ms
(95 rows)

