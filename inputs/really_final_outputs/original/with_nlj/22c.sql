 Aggregate  (cost=517.80..517.80 rows=1 width=96) (actual time=167421.443..167421.444 rows=1 loops=1)
   Buffers: shared hit=1630542 read=81133
   ->  Nested Loop  (cost=0.09..517.80 rows=1 width=42) (actual time=2365.997..167367.870 rows=21489 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 3725
         Buffers: shared hit=1630542 read=81133
         ->  Nested Loop  (cost=0.09..517.76 rows=1 width=46) (actual time=559.759..167264.841 rows=23197 loops=1)
               Join Filter: (mi.info_type_id = it1.id)
               Rows Removed by Join Filter: 3340
               Buffers: shared hit=1607346 read=81132
               ->  Nested Loop  (cost=0.09..517.72 rows=1 width=50) (actual time=559.729..166975.675 rows=26537 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=1580809 read=81132
                     ->  Nested Loop  (cost=0.08..517.56 rows=1 width=62) (actual time=461.928..76429.838 rows=25486 loops=1)
                           Buffers: shared hit=994340 read=54286
                           ->  Nested Loop  (cost=0.07..517.52 rows=1 width=37) (actual time=260.692..36981.437 rows=77414 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 17
                                 Buffers: shared hit=693800 read=44931
                                 ->  Nested Loop  (cost=0.07..517.49 rows=1 width=41) (actual time=236.147..36654.978 rows=77414 loops=1)
                                       Buffers: shared hit=616387 read=44930
                                       ->  Nested Loop  (cost=0.05..517.39 rows=1 width=26) (actual time=171.999..30782.459 rows=83144 loops=1)
                                             Buffers: shared hit=284512 read=43760
                                             ->  Nested Loop  (cost=0.04..517.30 rows=3 width=14) (actual time=123.154..18585.603 rows=31800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 62852
                                                   Buffers: shared hit=145679 read=25413
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.506..13.509 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=109.633..18525.793 rows=94652 loops=1)
                                                         Buffers: shared hit=145679 read=25412
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.392..10983.260 rows=37091 loops=1)
                                                               Buffers: shared hit=10141 read=16301
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.408..105.505 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.159..3617.192 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10133 read=16291
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.194..0.201 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135538 read=9111
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=0.324..0.381 rows=3 loops=31800)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 7
                                                   Buffers: shared hit=138833 read=18347
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.069..0.069 rows=1 loops=83144)
                                             Index Cond: (id = mc.company_id)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=331875 read=1170
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.001..0.001 rows=1 loops=77414)
                                       Buffers: shared hit=77413 read=1
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.508..0.508 rows=0 loops=77414)
                                 Index Cond: (id = mk.movie_id)
                                 Filter: (production_year > 2005)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=300540 read=9355
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.184..3.551 rows=1 loops=25486)
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
 Planning Time: 8717.734 ms
 Execution Time: 167432.951 ms
