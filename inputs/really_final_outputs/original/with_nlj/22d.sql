 Aggregate  (cost=517.74..517.74 rows=1 width=96) (actual time=229738.552..229738.553 rows=1 loops=1)
   Buffers: shared hit=742442 read=98126
   ->  Nested Loop  (cost=0.09..517.74 rows=1 width=42) (actual time=1624.477..229673.419 rows=46281 loops=1)
         Join Filter: (t.kind_id = kt.id)
         Rows Removed by Join Filter: 8485
         Buffers: shared hit=742442 read=98126
         ->  Nested Loop  (cost=0.09..517.71 rows=1 width=46) (actual time=343.915..229456.344 rows=49908 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 5427
               Buffers: shared hit=692535 read=98125
               ->  Nested Loop  (cost=0.09..517.68 rows=1 width=50) (actual time=320.003..229240.695 rows=49908 loops=1)
                     Buffers: shared hit=642628 read=98124
                     ->  Nested Loop  (cost=0.08..517.66 rows=1 width=35) (actual time=270.681..208135.775 rows=71768 loops=1)
                           Join Filter: (t.id = mc.movie_id)
                           Buffers: shared hit=358416 read=94814
                           ->  Nested Loop  (cost=0.07..517.63 rows=1 width=43) (actual time=234.118..191667.283 rows=5131 loops=1)
                                 Join Filter: (mi.info_type_id = it1.id)
                                 Rows Removed by Join Filter: 700
                                 Buffers: shared hit=339072 read=88495
                                 ->  Nested Loop  (cost=0.07..517.58 rows=1 width=47) (actual time=234.089..191565.049 rows=5831 loops=1)
                                       Join Filter: (t.id = mi.movie_id)
                                       Buffers: shared hit=333241 read=88495
                                       ->  Nested Loop  (cost=0.05..517.42 rows=1 width=39) (actual time=151.216..67479.044 rows=7271 loops=1)
                                             Buffers: shared hit=257475 read=40956
                                             ->  Nested Loop  (cost=0.04..517.30 rows=3 width=14) (actual time=123.049..18821.736 rows=31800 loops=1)
                                                   Join Filter: (mi_idx.info_type_id = it2.id)
                                                   Rows Removed by Join Filter: 62852
                                                   Buffers: shared hit=145679 read=25413
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=13.411..13.420 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared read=1
                                                   ->  Nested Loop  (cost=0.04..517.19 rows=395 width=18) (actual time=109.622..18755.229 rows=94652 loops=1)
                                                         Buffers: shared hit=145679 read=25412
                                                         ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.385..10328.548 rows=37091 loops=1)
                                                               Buffers: shared hit=10141 read=16301
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.395..106.510 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.174..3397.010 rows=12364 loops=3)
                                                                     Index Cond: (keyword_id = k.id)
                                                                     Buffers: shared hit=10133 read=16291
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.216..0.224 rows=3 loops=37091)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=135538 read=9111
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=1.528..1.528 rows=0 loops=31800)
                                                   Index Cond: (id = mk.movie_id)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=111796 read=15543
                                       ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=15.073..17.062 rows=1 loops=7271)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                             Rows Removed by Filter: 63
                                             Buffers: shared hit=75766 read=47539
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.012 rows=1 loops=5831)
                                       Filter: ((info)::text = 'countries'::text)
                                       Rows Removed by Filter: 20
                                       Buffers: shared hit=5831
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=12) (actual time=2.483..3.194 rows=14 loops=5131)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=19344 read=6319
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.292..0.292 rows=1 loops=71768)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=284212 read=3310
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.002..0.002 rows=1 loops=49908)
                     Buffers: shared hit=49907 read=1
         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.002..0.002 rows=1 loops=49908)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=49907 read=1
 Planning Time: 8583.155 ms
 Execution Time: 229809.813 ms
