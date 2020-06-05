                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=519.21..519.21 rows=1 width=96) (actual time=58435.009..58435.009 rows=1 loops=1)
   Buffers: shared hit=865555 read=50646
   ->  Nested Loop  (cost=0.11..519.21 rows=1 width=42) (actual time=9947.500..58434.850 rows=31 loops=1)
         Buffers: shared hit=865555 read=50646
         ->  Nested Loop  (cost=0.11..519.21 rows=1 width=46) (actual time=9947.470..58434.536 rows=32 loops=1)
               Buffers: shared hit=865491 read=50646
               ->  Nested Loop  (cost=0.10..519.20 rows=1 width=50) (actual time=9947.419..58433.971 rows=35 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=865421 read=50646
                     ->  Nested Loop  (cost=0.09..519.05 rows=1 width=62) (actual time=7575.016..54660.835 rows=55 loops=1)
                           Buffers: shared hit=865009 read=50173
                           ->  Nested Loop  (cost=0.07..519.00 rows=1 width=37) (actual time=184.751..33014.599 rows=48114 loops=1)
                                 Buffers: shared hit=679649 read=42878
                                 ->  Nested Loop  (cost=0.07..519.00 rows=1 width=41) (actual time=160.882..32844.725 rows=48114 loops=1)
                                       Buffers: shared hit=631535 read=42877
                                       ->  Nested Loop  (cost=0.06..518.90 rows=1 width=26) (actual time=116.176..28449.264 rows=52686 loops=1)
                                             Buffers: shared hit=421605 read=41728
                                             ->  Nested Loop  (cost=0.04..518.81 rows=3 width=14) (actual time=68.431..18145.325 rows=24800 loops=1)
                                                   Buffers: shared hit=315804 read=25403
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=345 width=18) (actual time=68.381..17814.545 rows=85058 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=67.721..10498.607 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=44.470..124.050 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.748..3450.921 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.187..0.195 rows=2 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '7.0'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=85058)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=170116
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.365..0.414 rows=2 loops=24800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=105801 read=16325
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.082..0.082 rows=1 loops=52686)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=209930 read=1149
                                 ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=48114)
                                       Index Cond: (id = mc.company_type_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=48114 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.449..0.449 rows=0 loops=48114)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2009)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=185360 read=7295
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=63.337..68.597 rows=1 loops=55)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 49
                           Buffers: shared hit=412 read=473
               ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=35)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=70
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=32)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=64
 Planning Time: 9067.532 ms
 Execution Time: 58435.902 ms
(75 rows)

