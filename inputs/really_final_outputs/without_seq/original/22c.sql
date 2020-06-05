                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=519.45..519.45 rows=1 width=96) (actual time=166830.963..166830.963 rows=1 loops=1)
   Buffers: shared hit=1869607 read=81106
   ->  Nested Loop  (cost=0.11..519.45 rows=1 width=42) (actual time=2174.222..166776.740 rows=21489 loops=1)
         Buffers: shared hit=1869607 read=81106
         ->  Nested Loop  (cost=0.11..519.44 rows=1 width=46) (actual time=376.334..166669.181 rows=23197 loops=1)
               Buffers: shared hit=1823213 read=81106
               ->  Nested Loop  (cost=0.10..519.44 rows=1 width=50) (actual time=376.294..166531.400 rows=26537 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=1770139 read=81106
                     ->  Nested Loop  (cost=0.09..519.28 rows=1 width=62) (actual time=311.765..76341.572 rows=25486 loops=1)
                           Buffers: shared hit=1183666 read=54264
                           ->  Nested Loop  (cost=0.07..519.24 rows=1 width=37) (actual time=140.436..36779.094 rows=77414 loops=1)
                                 Buffers: shared hit=883124 read=44911
                                 ->  Nested Loop  (cost=0.07..519.23 rows=1 width=41) (actual time=119.337..36485.859 rows=77414 loops=1)
                                       Buffers: shared hit=805710 read=44910
                                       ->  Nested Loop  (cost=0.06..519.14 rows=1 width=26) (actual time=71.310..30617.663 rows=83144 loops=1)
                                             Buffers: shared hit=473831 read=43744
                                             ->  Nested Loop  (cost=0.04..519.04 rows=3 width=14) (actual time=57.328..18565.141 rows=31800 loops=1)
                                                   Buffers: shared hit=334992 read=25403
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=57.285..18135.133 rows=94652 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=56.725..10658.705 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.467..113.233 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.775..3506.824 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.193..0.199 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=94652)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=189304
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.318..0.376 rows=3 loops=31800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=138839 read=18341
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.069..0.069 rows=1 loops=83144)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=331879 read=1166
                                 ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=77414)
                                       Index Cond: (id = mc.company_type_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=77414 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.510..0.510 rows=0 loops=77414)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=300542 read=9353
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.162..3.537 rows=1 loops=25486)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 169
                           Buffers: shared hit=586473 read=26842
               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=26537)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=53074
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=23197)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=46394
 Planning Time: 9449.823 ms
 Execution Time: 166852.118 ms
(75 rows)

