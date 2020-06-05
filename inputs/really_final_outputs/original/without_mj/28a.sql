                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.80..516.80 rows=1 width=96) (actual time=155434.206..155434.206 rows=1 loops=1)
   Buffers: shared hit=275671 read=61390
   ->  Nested Loop  (cost=0.11..516.80 rows=1 width=42) (actual time=779.008..155426.348 rows=4803 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=275671 read=61390
         ->  Nested Loop  (cost=0.11..516.77 rows=1 width=46) (actual time=771.899..155399.696 rows=4803 loops=1)
               Join Filter: (kt.id = t.kind_id)
               Rows Removed by Join Filter: 481
               Buffers: shared hit=270869 read=61389
               ->  Nested Loop  (cost=0.11..516.74 rows=1 width=50) (actual time=752.543..155352.211 rows=4979 loops=1)
                     Join Filter: (mi.movie_id = t.id)
                     Buffers: shared hit=265891 read=61388
                     ->  Nested Loop  (cost=0.09..516.70 rows=1 width=49) (actual time=698.362..143479.846 rows=8121 loops=1)
                           Buffers: shared hit=234703 read=60077
                           ->  Nested Loop  (cost=0.08..516.60 rows=1 width=34) (actual time=647.931..137882.478 rows=8728 loops=1)
                                 Join Filter: (mi.movie_id = mc.movie_id)
                                 Buffers: shared hit=200509 read=59315
                                 ->  Nested Loop  (cost=0.07..516.57 rows=1 width=22) (actual time=611.868..123357.205 rows=2861 loops=1)
                                       Join Filter: (it1.id = mi.info_type_id)
                                       Rows Removed by Join Filter: 1830
                                       Buffers: shared hit=190597 read=54569
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=15.184..15.222 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.07..516.52 rows=2 width=26) (actual time=596.675..123336.318 rows=4691 loops=1)
                                             Buffers: shared hit=190597 read=54568
                                             ->  Nested Loop  (cost=0.05..516.37 rows=1 width=18) (actual time=328.417..22948.906 rows=3662 loops=1)
                                                   Join Filter: (it2.id = mi_idx.info_type_id)
                                                   Rows Removed by Join Filter: 7248
                                                   Buffers: shared hit=152376 read=20853
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.054 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.05..516.31 rows=23 width=22) (actual time=328.355..22940.714 rows=10910 loops=1)
                                                         Buffers: shared hit=152375 read=20853
                                                         ->  Nested Loop  (cost=0.04..516.13 rows=8 width=8) (actual time=275.106..11639.581 rows=3832 loops=1)
                                                               Join Filter: (cct1.id = cc.subject_id)
                                                               Rows Removed by Join Filter: 6704
                                                               Buffers: shared hit=140537 read=17355
                                                               ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.152..0.158 rows=1 loops=1)
                                                                     Filter: ((kind)::text = 'crew'::text)
                                                                     Rows Removed by Filter: 3
                                                                     Buffers: shared read=1
                                                               ->  Nested Loop  (cost=0.04..516.10 rows=31 width=12) (actual time=175.968..11631.929 rows=10536 loops=1)
                                                                     Join Filter: (cct2.id = cc.status_id)
                                                                     Rows Removed by Join Filter: 49536
                                                                     Buffers: shared hit=140537 read=17354
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=175.930..11572.920 rows=20024 loops=1)
                                                                           Buffers: shared hit=140536 read=17354
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.229..10399.484 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.244..93.739 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.168..3426.833 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.023..0.030 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130395 read=1053
                                                                     ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.000..0.001 rows=3 loops=20024)
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.014..0.023 rows=3 loops=1)
                                                                                 Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                 Rows Removed by Filter: 1
                                                                                 Buffers: shared hit=1
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=2.911..2.945 rows=3 loops=3832)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=11838 read=3498
                                             ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=22.672..27.409 rows=1 loops=3662)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 77
                                                   Buffers: shared hit=38221 read=33715
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=4.503..5.070 rows=3 loops=2861)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                       Rows Removed by Filter: 9
                                       Buffers: shared hit=9912 read=4746
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.639..0.639 rows=1 loops=8728)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=34194 read=762
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.460..1.460 rows=1 loops=8121)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=31188 read=1311
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.006..0.006 rows=1 loops=4979)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=4978 read=1
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.003 rows=1 loops=4803)
               Buffers: shared hit=4802 read=1
 Planning Time: 14166.037 ms
 Execution Time: 155434.702 ms
(101 rows)

