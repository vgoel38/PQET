                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.74..517.74 rows=1 width=96) (actual time=252951.175..252951.176 rows=1 loops=1)
   Buffers: shared hit=742470 read=98098
   ->  Nested Loop  (cost=0.09..517.73 rows=1 width=42) (actual time=1314.482..252847.517 rows=46281 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 8485
         Buffers: shared hit=742470 read=98098
         ->  Nested Loop  (cost=0.09..517.70 rows=1 width=46) (actual time=176.674..252634.725 rows=49908 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 5427
               Buffers: shared hit=692562 read=98098
               ->  Nested Loop  (cost=0.09..517.67 rows=1 width=50) (actual time=176.654..252436.471 rows=49908 loops=1)
                     Buffers: shared hit=642654 read=98098
                     ->  Nested Loop  (cost=0.08..517.65 rows=1 width=35) (actual time=157.691..231249.756 rows=71768 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=358436 read=94794
                           ->  Nested Loop  (cost=0.07..517.62 rows=1 width=43) (actual time=157.422..212835.562 rows=5131 loops=1)
                                 Join Filter: (mi.info_type_id = it1.id)
                                 Rows Removed by Join Filter: 700
                                 Buffers: shared hit=339088 read=88479
                                 ->  Nested Loop  (cost=0.07..517.57 rows=1 width=47) (actual time=157.396..212730.916 rows=5831 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=333257 read=88479
                                       ->  Nested Loop  (cost=0.05..517.42 rows=1 width=39) (actual time=74.530..69317.643 rows=7271 loops=1)
                                             Buffers: shared hit=257487 read=40944
                                             ->  Nested Loop  (cost=0.04..517.29 rows=3 width=14) (actual time=55.643..18677.057 rows=31800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 62852
                                                   Buffers: shared hit=145689 read=25403
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.027 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..517.18 rows=395 width=18) (actual time=55.613..18623.571 rows=94652 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=55.073..10505.846 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=40.114..88.544 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.743..3461.764 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.209..0.216 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.591..1.591 rows=0 loops=31800)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=111798 read=15541
                                       ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=17.626..19.720 rows=1 loops=7271)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 63
                                             Buffers: shared hit=75770 read=47535
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.012 rows=1 loops=5831)
                                       Filter: ((info)::text = 'countries'::text)
                                       Rows Removed by Filter: 20
                                       Buffers: shared hit=5831
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.758..3.573 rows=14 loops=5131)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=19348 read=6315
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.294..0.294 rows=1 loops=71768)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=284218 read=3304
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=49908)
                     Buffers: shared hit=49908
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=49908)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=49908
 Planning Time: 9455.507 ms
 Execution Time: 252951.672 ms
(77 rows)

