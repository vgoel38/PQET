                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=519.21..519.21 rows=1 width=96) (actual time=90997.842..90997.842 rows=1 loops=1)
   Buffers: shared hit=945160 read=55518
   ->  Nested Loop  (cost=0.11..519.21 rows=1 width=42) (actual time=1565.579..90993.468 rows=2851 loops=1)
         Buffers: shared hit=945160 read=55518
         ->  Nested Loop  (cost=0.11..519.21 rows=1 width=46) (actual time=1565.552..90978.919 rows=3027 loops=1)
               Buffers: shared hit=939106 read=55518
               ->  Nested Loop  (cost=0.10..519.20 rows=1 width=50) (actual time=1565.515..90960.784 rows=3221 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=932664 read=55518
                     ->  Nested Loop  (cost=0.09..519.05 rows=1 width=62) (actual time=1481.803..60258.738 rows=3138 loops=1)
                           Buffers: shared hit=865004 read=50173
                           ->  Nested Loop  (cost=0.07..519.00 rows=1 width=37) (actual time=173.762..34270.746 rows=48114 loops=1)
                                 Buffers: shared hit=679649 read=42878
                                 ->  Nested Loop  (cost=0.07..519.00 rows=1 width=41) (actual time=149.855..34089.308 rows=48114 loops=1)
                                       Buffers: shared hit=631535 read=42877
                                       ->  Nested Loop  (cost=0.06..518.90 rows=1 width=26) (actual time=105.152..29243.944 rows=52686 loops=1)
                                             Buffers: shared hit=421605 read=41728
                                             ->  Nested Loop  (cost=0.04..518.81 rows=3 width=14) (actual time=57.399..18569.801 rows=24800 loops=1)
                                                   Buffers: shared hit=315804 read=25403
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=345 width=18) (actual time=57.350..18217.528 rows=85058 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=56.693..11095.401 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.454..105.302 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.756..3655.828 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.183..0.190 rows=2 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '7.0'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=85058)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=170116
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.372..0.428 rows=2 loops=24800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=105801 read=16325
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.090..0.090 rows=1 loops=52686)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=209930 read=1149
                                 ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=48114)
                                       Index Cond: (id = mc.company_type_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=48114 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.539..0.539 rows=0 loops=48114)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2008)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=185355 read=7295
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=9.046..9.782 rows=1 loops=3138)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 148
                           Buffers: shared hit=67660 read=5345
               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=3221)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=6442
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=3027)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=6054
 Planning Time: 9857.697 ms
 Execution Time: 91012.707 ms
(75 rows)

