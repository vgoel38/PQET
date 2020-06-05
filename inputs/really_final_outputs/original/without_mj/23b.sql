                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.82..516.82 rows=1 width=64) (actual time=19826.054..19826.054 rows=1 loops=1)
   Buffers: shared hit=4935 read=3272
   ->  Nested Loop  (cost=0.09..516.82 rows=1 width=27) (actual time=4676.179..19825.994 rows=16 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Buffers: shared hit=4935 read=3272
         ->  Nested Loop  (cost=0.09..516.77 rows=1 width=31) (actual time=4673.379..19823.006 rows=16 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 16
               Buffers: shared hit=4920 read=3271
               ->  Nested Loop  (cost=0.09..516.74 rows=1 width=35) (actual time=4654.447..19803.962 rows=16 loops=1)
                     Buffers: shared hit=4905 read=3270
                     ->  Nested Loop  (cost=0.08..516.72 rows=1 width=39) (actual time=4601.279..19750.602 rows=16 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=4845 read=3266
                           ->  Nested Loop  (cost=0.07..516.69 rows=1 width=47) (actual time=4559.346..19708.464 rows=16 loops=1)
                                 Join Filter: (t.id = mi.movie_id)
                                 Buffers: shared hit=4785 read=3262
                                 ->  Nested Loop  (cost=0.05..516.54 rows=1 width=39) (actual time=1045.614..13651.902 rows=60 loops=1)
                                       Join Filter: (t.kind_id = kt.id)
                                       Rows Removed by Join Filter: 1
                                       Buffers: shared hit=4289 read=2137
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=14) (actual time=49.843..49.851 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared read=1
                                       ->  Nested Loop  (cost=0.05..516.51 rows=5 width=33) (actual time=995.762..13601.932 rows=61 loops=1)
                                             Buffers: shared hit=4289 read=2136
                                             ->  Nested Loop  (cost=0.04..516.08 rows=10 width=8) (actual time=316.723..7710.333 rows=318 loops=1)
                                                   Join Filter: (cc.status_id = cct.id)
                                                   Rows Removed by Join Filter: 312
                                                   Buffers: shared hit=3454 read=1699
                                                   ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.134..0.137 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'complete+verified'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..516.04 rows=41 width=12) (actual time=162.991..7709.257 rows=630 loops=1)
                                                         Buffers: shared hit=3454 read=1698
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=75.893..5528.348 rows=1133 loops=1)
                                                               Buffers: shared hit=48 read=1069
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=22.976..112.853 rows=4 loops=1)
                                                                     Index Cond: (keyword = ANY ('{nerd,loner,alienation,dignity}'::text[]))
                                                                     Buffers: shared hit=8 read=11
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=40.584..1353.225 rows=283 loops=4)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=40 read=1058
                                                         ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=8) (actual time=1.354..1.918 rows=1 loops=1133)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Buffers: shared hit=3406 read=629
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=18.523..18.523 rows=0 loops=318)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2000)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=835 read=437
                                 ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=99.661..100.936 rows=0 loops=60)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                       Rows Removed by Filter: 214
                                       Buffers: shared hit=496 read=1125
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.628..2.629 rows=1 loops=16)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=60 read=4
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=3.332..3.332 rows=1 loops=16)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text = '[us]'::text)
                           Buffers: shared hit=60 read=4
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=1.184..1.185 rows=2 loops=16)
                     Buffers: shared hit=15 read=1
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.183..0.183 rows=1 loops=16)
               Filter: ((info)::text = 'release dates'::text)
               Rows Removed by Filter: 15
               Buffers: shared hit=15 read=1
 Planning Time: 7815.889 ms
 Execution Time: 19826.541 ms
(73 rows)

