                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.82..516.82 rows=1 width=64) (actual time=21197.437..21197.438 rows=1 loops=1)
   Buffers: shared hit=4950 read=3257
   ->  Nested Loop  (cost=0.09..516.82 rows=1 width=27) (actual time=4934.289..21197.372 rows=16 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Buffers: shared hit=4950 read=3257
         ->  Nested Loop  (cost=0.09..516.77 rows=1 width=31) (actual time=4934.264..21197.126 rows=16 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 16
               Buffers: shared hit=4934 read=3257
               ->  Nested Loop  (cost=0.09..516.73 rows=1 width=35) (actual time=4934.237..21196.973 rows=16 loops=1)
                     Buffers: shared hit=4918 read=3257
                     ->  Nested Loop  (cost=0.08..516.72 rows=1 width=39) (actual time=4881.051..21143.576 rows=16 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=4857 read=3254
                           ->  Nested Loop  (cost=0.07..516.69 rows=1 width=47) (actual time=4830.795..21093.088 rows=16 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=4796 read=3251
                                 ->  Nested Loop  (cost=0.05..516.53 rows=1 width=39) (actual time=1067.082..13931.279 rows=60 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 1
                                       Buffers: shared hit=4298 read=2128
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=0.007..0.015 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared hit=1
                                       ->  Nested Loop  (cost=0.05..516.50 rows=5 width=33) (actual time=1067.070..13931.135 rows=61 loops=1)
                                             Buffers: shared hit=4297 read=2128
                                             ->  Nested Loop  (cost=0.04..516.07 rows=10 width=8) (actual time=388.018..8047.044 rows=318 loops=1)
                                                   Join Filter: (cc.status_id = cct1.id)
                                                   Rows Removed by Join Filter: 312
                                                   Buffers: shared hit=3460 read=1693
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.006..0.009 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=1
                                                   ->  Nested Loop  (cost=0.04..516.03 rows=41 width=12) (actual time=259.389..8046.068 rows=630 loops=1)
                                                         Buffers: shared hit=3459 read=1693
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=80.658..5845.231 rows=1133 loops=1)
                                                               Buffers: shared hit=49 read=1068
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=44.385..134.291 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                     Buffers: shared hit=8 read=11
                                                               ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=32.294..1427.069 rows=283 loops=4)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=41 read=1057
                                                         ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..0.01 rows=1 width=8) (actual time=1.406..1.935 rows=1 loops=1133)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=3410 read=625
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=18.499..18.499 rows=0 loops=318)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=837 read=435
                                 ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=118.276..119.357 rows=0 loops=60)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 214
                                       Buffers: shared hit=498 read=1123
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=3.150..3.151 rows=1 loops=16)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=61 read=3
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.334..3.334 rows=1 loops=16)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Buffers: shared hit=61 read=3
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.003 rows=2 loops=16)
                     Buffers: shared hit=16
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=16)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 15
               Buffers: shared hit=16
 Planning Time: 8977.679 ms
 Execution Time: 21197.949 ms
(73 rows)

