                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=519.39..519.39 rows=1 width=96) (actual time=230093.738..230093.739 rows=1 loops=1)
   Buffers: shared hit=987512 read=98099
   ->  Nested Loop  (cost=0.11..519.39 rows=1 width=42) (actual time=1404.631..230026.488 rows=46281 loops=1)
         Buffers: shared hit=987512 read=98099
         ->  Nested Loop  (cost=0.11..519.39 rows=1 width=46) (actual time=195.606..229794.002 rows=49908 loops=1)
               Buffers: shared hit=887696 read=98099
               ->  Nested Loop  (cost=0.10..519.38 rows=1 width=50) (actual time=175.162..229597.205 rows=49908 loops=1)
                     Buffers: shared hit=837788 read=98098
                     ->  Nested Loop  (cost=0.09..519.36 rows=1 width=35) (actual time=156.114..208505.261 rows=71768 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=553570 read=94794
                           ->  Nested Loop  (cost=0.08..519.33 rows=1 width=43) (actual time=155.885..191855.590 rows=5131 loops=1)
                                 Buffers: shared hit=534222 read=88479
                                 ->  Nested Loop  (cost=0.07..519.33 rows=1 width=47) (actual time=155.849..191785.695 rows=5831 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=522560 read=88479
                                       ->  Nested Loop  (cost=0.06..519.17 rows=1 width=39) (actual time=106.372..67234.377 rows=7271 loops=1)
                                             Buffers: shared hit=446790 read=40944
                                             ->  Nested Loop  (cost=0.04..519.04 rows=3 width=14) (actual time=95.782..18629.277 rows=31800 loops=1)
                                                   Buffers: shared hit=334992 read=25403
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=95.735..18162.538 rows=94652 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=95.234..9999.298 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=71.978..129.654 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.779..3279.605 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.210..0.217 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=94652)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=189304
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.527..1.527 rows=0 loops=31800)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=111798 read=15541
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=15.153..17.126 rows=1 loops=7271)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 63
                                             Buffers: shared hit=75770 read=47535
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.007..0.007 rows=1 loops=5831)
                                       Index Cond: (id = mi.info_type_id)
                                       Filter: ((info)::text = 'countries'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=11662
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.493..3.230 rows=14 loops=5131)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=19348 read=6315
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.292..0.292 rows=1 loops=71768)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=284218 read=3304
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=49908)
                     Index Cond: (id = mc.company_type_id)
                     Heap Fetches: 0
                     Buffers: shared hit=49908 read=1
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=49908)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=99816
 Planning Time: 9173.672 ms
 Execution Time: 230094.262 ms
(74 rows)

