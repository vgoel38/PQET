                                                                                                       QUERY PLAN                                                                                                       
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.80..517.80 rows=1 width=96) (actual time=167312.490..167312.490 rows=1 loops=1)
   Buffers: shared hit=1630542 read=81133
   ->  Nested Loop  (cost=0.09..517.80 rows=1 width=42) (actual time=2390.838..167257.231 rows=21489 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 3725
         Buffers: shared hit=1630542 read=81133
         ->  Nested Loop  (cost=0.09..517.76 rows=1 width=46) (actual time=567.951..167154.497 rows=23197 loops=1)
               Join Filter: (mi.info_type_id = it1.id)
               Rows Removed by Join Filter: 3340
               Buffers: shared hit=1607346 read=81132
               ->  Nested Loop  (cost=0.09..517.72 rows=1 width=50) (actual time=567.921..166865.367 rows=26537 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=1580809 read=81132
                     ->  Nested Loop  (cost=0.08..517.56 rows=1 width=62) (actual time=503.459..76685.661 rows=25486 loops=1)
                           Buffers: shared hit=994340 read=54286
                           ->  Nested Loop  (cost=0.07..517.52 rows=1 width=37) (actual time=302.212..37177.675 rows=77414 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 17
                                 Buffers: shared hit=693800 read=44931
                                 ->  Nested Loop  (cost=0.07..517.49 rows=1 width=41) (actual time=277.650..36852.089 rows=77414 loops=1)
                                       Buffers: shared hit=616387 read=44930
                                       ->  Nested Loop  (cost=0.05..517.39 rows=1 width=26) (actual time=213.484..30912.105 rows=83144 loops=1)
                                             Buffers: shared hit=284512 read=43760
                                             ->  Nested Loop  (cost=0.04..517.30 rows=3 width=14) (actual time=164.675..18936.176 rows=31800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 62852
                                                   Buffers: shared hit=145679 read=25413
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=63.349..63.352 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=101.311..18826.596 rows=94652 loops=1)
                                                         Buffers: shared hit=145679 read=25412
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=65.075..10924.270 rows=37091 loops=1)
                                                               Buffers: shared hit=10141 read=16301
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=20.088..80.648 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.163..3606.073 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10133 read=16291
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.205..0.210 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135538 read=9111
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.312..0.374 rows=3 loops=31800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=138833 read=18347
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.070..0.070 rows=1 loops=83144)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=331875 read=1170
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=77414)
                                       Buffers: shared hit=77413 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.509..0.509 rows=0 loops=77414)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=300540 read=9355
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.160..3.536 rows=1 loops=25486)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 169
                           Buffers: shared hit=586469 read=26846
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.005..0.008 rows=1 loops=26537)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 20
                     Buffers: shared hit=26537
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=23197)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=23196 read=1
 Planning Time: 8445.596 ms
 Execution Time: 167312.981 ms
(78 rows)

