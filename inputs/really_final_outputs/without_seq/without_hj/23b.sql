                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.95..516.95 rows=1 width=64) (actual time=19956.914..19956.914 rows=1 loops=1)
   Buffers: shared hit=6346 read=3258
   ->  Nested Loop  (cost=0.11..516.95 rows=1 width=27) (actual time=4573.571..19956.820 rows=16 loops=1)
         Buffers: shared hit=6346 read=3258
         ->  Nested Loop  (cost=0.10..516.88 rows=1 width=31) (actual time=4573.518..19956.646 rows=16 loops=1)
               Buffers: shared hit=6314 read=3258
               ->  Nested Loop  (cost=0.10..516.87 rows=1 width=35) (actual time=4549.723..19932.762 rows=16 loops=1)
                     Buffers: shared hit=6298 read=3257
                     ->  Nested Loop  (cost=0.09..516.85 rows=1 width=39) (actual time=4496.553..19879.400 rows=16 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=6237 read=3254
                           ->  Nested Loop  (cost=0.07..516.82 rows=1 width=47) (actual time=4462.943..19845.582 rows=16 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=6176 read=3251
                                 ->  Nested Loop  (cost=0.06..516.67 rows=1 width=39) (actual time=940.886..13559.527 rows=60 loops=1)
                                       Buffers: shared hit=5678 read=2128
                                       ->  Nested Loop  (cost=0.06..516.65 rows=5 width=33) (actual time=940.843..13558.304 rows=61 loops=1)
                                             Buffers: shared hit=5556 read=2128
                                             ->  Nested Loop  (cost=0.04..516.22 rows=10 width=8) (actual time=261.765..7668.850 rows=318 loops=1)
                                                   Buffers: shared hit=4719 read=1693
                                                   ->  Nested Loop  (cost=0.04..516.04 rows=41 width=12) (actual time=149.885..7660.132 rows=630 loops=1)
                                                         Buffers: shared hit=3459 read=1693
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=71.151..5635.084 rows=1133 loops=1)
                                                               Buffers: shared hit=49 read=1068
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=26.556..116.402 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                     Buffers: shared hit=8 read=11
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=38.545..1379.014 rows=283 loops=4)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=41 read=1057
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=8) (actual time=1.336..1.781 rows=1 loops=1133)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=3410 read=625
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=630)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=1260
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=18.517..18.517 rows=0 loops=318)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=837 read=435
                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=14) (actual time=0.013..0.013 rows=1 loops=61)
                                             Index Cond: (id = t.kind_id)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=122
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=103.523..104.764 rows=0 loops=60)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 214
                                       Buffers: shared hit=498 read=1123
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.109..2.110 rows=1 loops=16)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=61 read=3
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.332..3.332 rows=1 loops=16)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Buffers: shared hit=61 read=3
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=1.490..1.490 rows=1 loops=16)
                     Index Cond: (id = mc.company_type_id)
                     Heap Fetches: 0
                     Buffers: shared hit=16 read=1
         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.04 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=16)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=32
 Planning Time: 9413.994 ms
 Execution Time: 19972.234 ms
(70 rows)

