                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.68..516.68 rows=1 width=96) (actual time=157429.767..157429.768 rows=1 loops=1)
   Buffers: shared hit=1124912 read=62240
   ->  Nested Loop  (cost=0.13..516.68 rows=1 width=42) (actual time=3862.551..157408.316 rows=8373 loops=1)
         Buffers: shared hit=1124912 read=62240
         ->  Nested Loop  (cost=0.13..516.68 rows=1 width=46) (actual time=3862.503..157362.398 rows=8668 loops=1)
               Join Filter: (mi.movie_id = t.id)
               Buffers: shared hit=1107576 read=62240
               ->  Nested Loop  (cost=0.11..516.63 rows=1 width=45) (actual time=274.217..140778.001 rows=22138 loops=1)
                     Buffers: shared hit=1021135 read=60090
                     ->  Nested Loop  (cost=0.11..516.63 rows=2 width=49) (actual time=274.179..140627.997 rows=26920 loops=1)
                           Buffers: shared hit=967295 read=60090
                           ->  Nested Loop  (cost=0.10..516.47 rows=1 width=41) (actual time=188.144..46680.538 rows=22516 loops=1)
                                 Buffers: shared hit=403760 read=31989
                                 ->  Nested Loop  (cost=0.08..516.37 rows=1 width=26) (actual time=165.441..41110.800 rows=23844 loops=1)
                                       Buffers: shared hit=309237 read=30960
                                       ->  Nested Loop  (cost=0.08..516.37 rows=1 width=30) (actual time=144.227..40980.143 rows=23844 loops=1)
                                             Buffers: shared hit=285393 read=30959
                                             ->  Nested Loop  (cost=0.07..516.34 rows=1 width=18) (actual time=123.459..22673.571 rows=6409 loops=1)
                                                   Buffers: shared hit=261662 read=22186
                                                   ->  Nested Loop  (cost=0.06..516.31 rows=6 width=22) (actual time=123.406..22562.004 rows=19025 loops=1)
                                                         Buffers: shared hit=223612 read=22186
                                                         ->  Nested Loop  (cost=0.05..516.26 rows=2 width=8) (actual time=111.931..11437.908 rows=6704 loops=1)
                                                               Buffers: shared hit=201666 read=17344
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=10 width=12) (actual time=111.914..11385.915 rows=10536 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=111.888..11274.574 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=56.723..9999.782 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=33.481..97.954 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.755..3292.648 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.025..0.033 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=20024)
                                                                           Index Cond: (id = cc.status_id)
                                                                           Filter: ((kind)::text = 'complete'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=10536)
                                                                     Index Cond: (id = cc.subject_id)
                                                                     Filter: ((kind)::text = 'cast'::text)
                                                                     Rows Removed by Filter: 0
                                                                     Buffers: shared hit=21072
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=1.631..1.656 rows=3 loops=6704)
                                                               Index Cond: (movie_id = mk.movie_id)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=21946 read=4842
                                                   ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=19025)
                                                         Index Cond: (id = mi_idx.info_type_id)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=38050
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=2.382..2.852 rows=4 loops=6409)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 8
                                                   Buffers: shared hit=23731 read=8773
                                       ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=23844)
                                             Index Cond: (id = mc.company_type_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=23844 read=1
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.232..0.232 rows=1 loops=23844)
                                       Index Cond: (id = mc.company_id)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=94523 read=1029
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.569..4.171 rows=1 loops=22516)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                 Rows Removed by Filter: 199
                                 Buffers: shared hit=563535 read=28101
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=26920)
                           Index Cond: (id = mi.info_type_id)
                           Filter: ((info)::text = 'countries'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=53840
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.748..0.748 rows=0 loops=22138)
                     Index Cond: (id = mk.movie_id)
                     Filter: (production_year > 2005)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=86441 read=2150
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=8668)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=17336
 Planning Time: 15086.141 ms
 Execution Time: 157447.602 ms
(94 rows)

