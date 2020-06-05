 Aggregate  (cost=516.99..516.99 rows=1 width=96) (actual time=87541.363..87541.363 rows=1 loops=1)
   Buffers: shared hit=628106 read=40553
   ->  Nested Loop  (cost=0.11..516.99 rows=1 width=42) (actual time=2543.690..87514.932 rows=8373 loops=1)
         Join Filter: (mc.company_type_id = ct.id)
         Buffers: shared hit=628106 read=40553
         ->  Nested Loop  (cost=0.11..516.96 rows=1 width=46) (actual time=2539.201..87481.073 rows=8373 loops=1)
               Join Filter: (it1.id = mi.info_type_id)
               Rows Removed by Join Filter: 1116
               Buffers: shared hit=619734 read=40552
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=13.336..13.364 rows=1 loops=1)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
               ->  Nested Loop  (cost=0.11..516.91 rows=1 width=50) (actual time=2525.857..87462.054 rows=9489 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=619734 read=40551
                     ->  Nested Loop  (cost=0.09..516.75 rows=1 width=66) (actual time=495.070..54365.356 rows=8156 loops=1)
                           Join Filter: (it2.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 16118
                           Buffers: shared hit=409936 read=33663
                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.047..0.053 rows=1 loops=1)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
                           ->  Nested Loop  (cost=0.09..516.71 rows=1 width=70) (actual time=495.006..54354.876 rows=24274 loops=1)
                                 Join Filter: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=409935 read=33663
                                 ->  Nested Loop  (cost=0.08..516.68 rows=1 width=56) (actual time=447.685..47508.379 rows=8286 loops=1)
                                       Join Filter: (cc.subject_id = cct1.id)
                                       Rows Removed by Join Filter: 1685
                                       Buffers: shared hit=377002 read=33000
                                       ->  Nested Loop  (cost=0.08..516.65 rows=1 width=60) (actual time=447.657..47467.846 rows=9971 loops=1)
                                             Buffers: shared hit=367031 read=33000
                                             ->  Nested Loop  (cost=0.07..516.56 rows=1 width=45) (actual time=423.333..41690.348 rows=10440 loops=1)
                                                   Join Filter: (kt.id = t.kind_id)
                                                   Rows Removed by Join Filter: 1432
                                                   Buffers: shared hit=326023 read=32184
                                                   ->  Nested Loop  (cost=0.07..516.52 rows=1 width=49) (actual time=401.898..41617.302 rows=10963 loops=1)
                                                         Buffers: shared hit=315061 read=32183
                                                         ->  Nested Loop  (cost=0.05..516.40 rows=3 width=24) (actual time=189.090..22449.324 rows=33990 loops=1)
                                                               Buffers: shared hit=183260 read=27944
                                                               ->  Nested Loop  (cost=0.04..516.08 rows=10 width=12) (actual time=142.709..9401.852 rows=10536 loops=1)
                                                                     Join Filter: (cct2.id = cc.status_id)
                                                                     Rows Removed by Join Filter: 9488
                                                                     Buffers: shared hit=140536 read=17355
                                                                     ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=1 width=4) (actual time=0.119..0.121 rows=1 loops=1)
                                                                           Filter: ((kind)::text = 'complete'::text)
                                                                           Rows Removed by Filter: 3
                                                                           Buffers: shared read=1
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=142.583..9388.706 rows=20024 loops=1)
                                                                           Buffers: shared hit=140536 read=17354
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=73.252..8048.717 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10141 read=16301
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.262..90.682 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.163..2645.402 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10133 read=16291
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.026..0.035 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130395 read=1053
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.052..1.235 rows=3 loops=10536)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 8
                                                                     Buffers: shared hit=42724 read=10589
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.562..0.562 rows=0 loops=33990)
                                                               Index Cond: (id = mk.movie_id)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=131801 read=4239
                                                   ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.004..0.004 rows=1 loops=10963)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=10962 read=1
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.552..0.552 rows=1 loops=10440)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text <> '[us]'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=41008 read=816
                                       ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.001..0.002 rows=1 loops=9971)
                                             Filter: ((kind)::text = 'cast'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=9971
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.817..0.823 rows=3 loops=8286)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info < '8.5'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=32933 read=663
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.584..4.056 rows=1 loops=8156)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 206
                           Buffers: shared hit=209798 read=6888
         ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.002..0.002 rows=1 loops=8373)
               Buffers: shared hit=8372 read=1
 Planning Time: 14193.856 ms
 Execution Time: 87559.865 ms
