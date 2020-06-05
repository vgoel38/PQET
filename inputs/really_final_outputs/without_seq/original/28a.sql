                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.99..516.99 rows=1 width=96) (actual time=151611.979..151611.980 rows=1 loops=1)
   Buffers: shared hit=317930 read=58895
   ->  Nested Loop  (cost=0.13..516.99 rows=1 width=42) (actual time=669.718..151603.545 rows=4803 loops=1)
         Buffers: shared hit=317930 read=58895
         ->  Nested Loop  (cost=0.13..516.98 rows=1 width=46) (actual time=650.877..151562.072 rows=4803 loops=1)
               Buffers: shared hit=313127 read=58894
               ->  Nested Loop  (cost=0.11..516.89 rows=1 width=31) (actual time=608.770..147474.062 rows=4955 loops=1)
                     Join Filter: (t.id = mc.movie_id)
                     Buffers: shared hit=293848 read=58317
                     ->  Nested Loop  (cost=0.10..516.86 rows=1 width=43) (actual time=580.127..142176.299 rows=432 loops=1)
                           Buffers: shared hit=292217 read=57692
                           ->  Nested Loop  (cost=0.10..516.85 rows=1 width=47) (actual time=580.072..142168.579 rows=484 loops=1)
                                 Join Filter: (mi.movie_id = t.id)
                                 Buffers: shared hit=291249 read=57692
                                 ->  Nested Loop  (cost=0.08..516.81 rows=1 width=22) (actual time=547.756..123399.556 rows=2861 loops=1)
                                       Buffers: shared hit=282934 read=54550
                                       ->  Nested Loop  (cost=0.08..516.80 rows=2 width=26) (actual time=547.712..123344.677 rows=4691 loops=1)
                                             Buffers: shared hit=273552 read=54550
                                             ->  Nested Loop  (cost=0.07..516.64 rows=1 width=18) (actual time=204.491..23161.886 rows=3662 loops=1)
                                                   Buffers: shared hit=235328 read=20838
                                                   ->  Nested Loop  (cost=0.06..516.53 rows=23 width=22) (actual time=204.433..23087.153 rows=10910 loops=1)
                                                         Buffers: shared hit=213508 read=20838
                                                         ->  Nested Loop  (cost=0.05..516.35 rows=8 width=8) (actual time=159.534..11542.105 rows=3832 loops=1)
                                                               Buffers: shared hit=201666 read=17344
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=31 width=12) (actual time=107.871..11488.511 rows=10536 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=107.845..11376.276 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=52.702..10198.148 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=29.439..104.697 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.762..3356.148 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.023..0.030 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=20024)
                                                                           Index Cond: (id = cc.status_id)
                                                                           Filter: ((kind)::text <> 'complete+verified'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=10536)
                                                                     Index Cond: (id = cc.subject_id)
                                                                     Filter: ((kind)::text = 'crew'::text)
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=21072
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=2.977..3.009 rows=3 loops=3832)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=11842 read=3494
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=0 loops=10910)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=21820
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=22.662..27.354 rows=1 loops=3662)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 77
                                                   Buffers: shared hit=38224 read=33712
                                       ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=4691)
                                             Index Cond: (id = mi.info_type_id)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=9382
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=6.558..6.558 rows=0 loops=2861)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 2000)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=8315 read=3142
                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=484)
                                 Index Cond: (id = t.kind_id)
                                 Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=968
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=10.185..12.251 rows=11 loops=432)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                           Rows Removed by Filter: 10
                           Buffers: shared hit=1631 read=625
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.823..0.823 rows=1 loops=4955)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text <> '[us]'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=19279 read=577
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=4803)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
               Buffers: shared hit=4803 read=1
 Planning Time: 15382.489 ms
 Execution Time: 151612.514 ms
(95 rows)

