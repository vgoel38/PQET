 Aggregate  (cost=516.82..516.82 rows=1 width=64) (actual time=19971.386..19971.387 rows=1 loops=1)
   Buffers: shared hit=4935 read=3272
   ->  Nested Loop  (cost=0.09..516.82 rows=1 width=27) (actual time=4704.839..19971.291 rows=16 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Buffers: shared hit=4935 read=3272
         ->  Nested Loop  (cost=0.09..516.77 rows=1 width=31) (actual time=4702.038..19968.289 rows=16 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 16
               Buffers: shared hit=4920 read=3271
               ->  Nested Loop  (cost=0.09..516.74 rows=1 width=35) (actual time=4683.109..19949.243 rows=16 loops=1)
                     Buffers: shared hit=4905 read=3270
                     ->  Nested Loop  (cost=0.08..516.72 rows=1 width=39) (actual time=4629.936..19895.881 rows=16 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=4845 read=3266
                           ->  Nested Loop  (cost=0.07..516.69 rows=1 width=47) (actual time=4587.999..19853.710 rows=16 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=4785 read=3262
                                 ->  Nested Loop  (cost=0.05..516.54 rows=1 width=39) (actual time=1015.892..13872.612 rows=60 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 1
                                       Buffers: shared hit=4289 read=2137
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=11.833..11.841 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.05..516.51 rows=5 width=33) (actual time=1004.050..13860.650 rows=61 loops=1)
                                             Buffers: shared hit=4289 read=2136
                                             ->  Nested Loop  (cost=0.04..516.08 rows=10 width=8) (actual time=325.059..7993.207 rows=318 loops=1)
                                                   Join Filter: (cc.status_id = cct1.id)
                                                   Rows Removed by Join Filter: 312
                                                   Buffers: shared hit=3454 read=1699
                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=8.978..8.981 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'completeverified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..516.04 rows=41 width=12) (actual time=162.459..7983.257 rows=630 loops=1)
                                                         Buffers: shared hit=3454 read=1698
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=75.393..5734.691 rows=1133 loops=1)
                                                               Buffers: shared hit=48 read=1069
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=22.450..112.345 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                     Buffers: shared hit=8 read=11
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=40.585..1404.924 rows=283 loops=4)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=40 read=1058
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=8) (actual time=1.406..1.978 rows=1 loops=1133)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=3406 read=629
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=18.447..18.447 rows=0 loops=318)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=835 read=437
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=98.401..99.679 rows=0 loops=60)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 214
                                       Buffers: shared hit=496 read=1125
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.629..2.631 rows=1 loops=16)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=60 read=4
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.332..3.332 rows=1 loops=16)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Buffers: shared hit=60 read=4
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=1.184..1.184 rows=2 loops=16)
                     Buffers: shared hit=15 read=1
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.184..0.184 rows=1 loops=16)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 15
               Buffers: shared hit=15 read=1
 Planning Time: 6468.356 ms
 Execution Time: 20024.170 ms
