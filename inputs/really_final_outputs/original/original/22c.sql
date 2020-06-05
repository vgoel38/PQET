                                                                                                        QUERY PLAN                                                                                                         
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.79..517.79 rows=1 width=96) (actual time=184507.982..184507.982 rows=1 loops=1)
   Buffers: shared hit=1630570 read=81105
   ->  Nested Loop  (cost=0.09..517.79 rows=1 width=42) (actual time=2176.855..184453.183 rows=21489 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 3725
         Buffers: shared hit=1630570 read=81105
         ->  Nested Loop  (cost=0.09..517.76 rows=1 width=46) (actual time=337.286..184363.233 rows=23197 loops=1)
               Join Filter: (mi.info_type_id = it.id)
               Rows Removed by Join Filter: 3340
               Buffers: shared hit=1607373 read=81105
               ->  Nested Loop  (cost=0.09..517.71 rows=1 width=50) (actual time=337.257..184080.698 rows=26537 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=1580836 read=81105
                     ->  Nested Loop  (cost=0.08..517.55 rows=1 width=62) (actual time=256.120..79676.457 rows=25486 loops=1)
                           Buffers: shared hit=994363 read=54263
                           ->  Nested Loop  (cost=0.07..517.51 rows=1 width=37) (actual time=121.975..38930.805 rows=77414 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 17
                                 Buffers: shared hit=693821 read=44910
                                 ->  Nested Loop  (cost=0.07..517.48 rows=1 width=41) (actual time=121.958..38635.436 rows=77414 loops=1)
                                       Buffers: shared hit=616407 read=44910
                                       ->  Nested Loop  (cost=0.05..517.38 rows=1 width=26) (actual time=73.939..32983.019 rows=83144 loops=1)
                                             Buffers: shared hit=284528 read=43744
                                             ->  Nested Loop  (cost=0.04..517.29 rows=3 width=14) (actual time=51.705..19439.307 rows=31800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it.id)
                                                   Rows Removed by Join Filter: 62852
                                                   Buffers: shared hit=145689 read=25403
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.021 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..517.18 rows=395 width=18) (actual time=51.674..19393.027 rows=94652 loops=1)
                                                         Buffers: shared hit=145688 read=25403
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=51.024..12193.932 rows=37091 loops=1)
                                                               Buffers: shared hit=10145 read=16297
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=36.081..100.275 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=13.740..4022.665 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10137 read=16287
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.186..0.191 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135543 read=9106
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.359..0.423 rows=3 loops=31800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=138839 read=18341
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.066..0.066 rows=1 loops=83144)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=331879 read=1166
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=77414)
                                       Buffers: shared hit=77414
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.525..0.525 rows=0 loops=77414)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=300542 read=9353
                     ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.705..4.095 rows=1 loops=25486)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 169
                           Buffers: shared hit=586473 read=26842
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=26537)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 20
                     Buffers: shared hit=26537
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.001..0.002 rows=1 loops=23197)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=23197
 Planning Time: 9076.231 ms
 Execution Time: 184508.486 ms
(78 rows)

