                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.95..516.95 rows=1 width=64) (actual time=19768.677..19768.678 rows=1 loops=1)
   Buffers: shared hit=6346 read=3258
   ->  Nested Loop  (cost=0.11..516.95 rows=1 width=27) (actual time=4635.355..19768.602 rows=16 loops=1)
         Buffers: shared hit=6346 read=3258
         ->  Nested Loop  (cost=0.10..516.88 rows=1 width=31) (actual time=4635.302..19768.412 rows=16 loops=1)
               Buffers: shared hit=6314 read=3258
               ->  Nested Loop  (cost=0.10..516.87 rows=1 width=35) (actual time=4611.502..19744.509 rows=16 loops=1)
                     Buffers: shared hit=6298 read=3257
                     ->  Nested Loop  (cost=0.09..516.85 rows=1 width=39) (actual time=4558.323..19691.108 rows=16 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=6237 read=3254
                           ->  Nested Loop  (cost=0.07..516.82 rows=1 width=47) (actual time=4524.732..19657.279 rows=16 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=6176 read=3251
                                 ->  Nested Loop  (cost=0.06..516.67 rows=1 width=39) (actual time=1027.711..13387.221 rows=60 loops=1)
                                       Buffers: shared hit=5678 read=2128
                                       ->  Nested Loop  (cost=0.06..516.65 rows=5 width=33) (actual time=1027.666..13385.988 rows=61 loops=1)
                                             Buffers: shared hit=5556 read=2128
                                             ->  Nested Loop  (cost=0.04..516.22 rows=10 width=8) (actual time=273.542..7679.273 rows=318 loops=1)
                                                   Buffers: shared hit=4719 read=1693
                                                   ->  Nested Loop  (cost=0.04..516.04 rows=41 width=12) (actual time=161.661..7670.399 rows=630 loops=1)
                                                         Buffers: shared hit=3459 read=1693
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=82.901..5615.383 rows=1133 loops=1)
                                                               Buffers: shared hit=49 read=1068
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.329..128.213 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                     Buffers: shared hit=8 read=11
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=38.537..1371.157 rows=283 loops=4)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=41 read=1057
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=8) (actual time=1.346..1.807 rows=1 loops=1133)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=3410 read=625
                                                   ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=630)
                                                         Index Cond: (id = cc.status_id)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=1260
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=17.943..17.943 rows=0 loops=318)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=837 read=435
                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=14) (actual time=0.013..0.013 rows=1 loops=61)
                                             Index Cond: (id = t.kind_id)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=122
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=103.256..104.497 rows=0 loops=60)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 214
                                       Buffers: shared hit=498 read=1123
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.108..2.110 rows=1 loops=16)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=61 read=3
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.334..3.334 rows=1 loops=16)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Buffers: shared hit=61 read=3
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=1.490..1.490 rows=1 loops=16)
                     Index Cond: (id = mc.company_type_id)
                     Heap Fetches: 0
                     Buffers: shared hit=16 read=1
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.04 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=16)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'release dates'::text)
               Buffers: shared hit=32
 Planning Time: 9283.278 ms
 Execution Time: 19769.636 ms
(70 rows)

