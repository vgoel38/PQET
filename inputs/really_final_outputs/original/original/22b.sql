                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.78..517.78 rows=1 width=96) (actual time=63340.397..63340.398 rows=1 loops=1)
   Buffers: shared hit=695373 read=50645
   ->  Nested Loop  (cost=0.09..517.78 rows=1 width=42) (actual time=10587.309..63340.237 rows=31 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 2
         Buffers: shared hit=695373 read=50645
         ->  Nested Loop  (cost=0.09..517.75 rows=1 width=46) (actual time=10587.292..63340.002 rows=32 loops=1)
               Join Filter: (mi.info_type_id = it1.id)
               Rows Removed by Join Filter: 3
               Buffers: shared hit=695341 read=50645
               ->  Nested Loop  (cost=0.09..517.70 rows=1 width=50) (actual time=10587.257..63339.318 rows=35 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=695306 read=50645
                     ->  Nested Loop  (cost=0.08..517.55 rows=1 width=62) (actual time=7856.579..58953.075 rows=55 loops=1)
                           Buffers: shared hit=694894 read=50172
                           ->  Nested Loop  (cost=0.07..517.50 rows=1 width=37) (actual time=184.142..36315.648 rows=48114 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 8
                                 Buffers: shared hit=509534 read=42877
                                 ->  Nested Loop  (cost=0.07..517.47 rows=1 width=41) (actual time=184.124..36151.154 rows=48114 loops=1)
                                       Buffers: shared hit=461420 read=42877
                                       ->  Nested Loop  (cost=0.05..517.38 rows=1 width=26) (actual time=139.422..31632.855 rows=52686 loops=1)
                                             Buffers: shared hit=251490 read=41728
                                             ->  Nested Loop  (cost=0.04..517.28 rows=3 width=14) (actual time=116.658..19174.100 rows=24800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 60258
                                                   Buffers: shared hit=145689 read=25403
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.023 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..517.18 rows=345 width=18) (actual time=116.626..19138.566 rows=85058 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=115.964..11504.023 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=101.020..177.803 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.735..3768.001 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.197..0.204 rows=2 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '7.0'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.440..0.500 rows=2 loops=24800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=105801 read=16325
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.084..0.084 rows=1 loops=52686)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=209930 read=1149
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=48114)
                                       Buffers: shared hit=48114
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.470..0.470 rows=0 loops=48114)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2009)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=185360 read=7295
                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=74.637..79.745 rows=1 loops=55)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                           Rows Removed by Filter: 49
                           Buffers: shared hit=412 read=473
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.013 rows=1 loops=35)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 16
                     Buffers: shared hit=35
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.003..0.003 rows=1 loops=32)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=32
 Planning Time: 9194.623 ms
 Execution Time: 63340.910 ms
(78 rows)

