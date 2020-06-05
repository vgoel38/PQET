                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=517.93..517.94 rows=1 width=96) (actual time=53926.380..53926.380 rows=1 loops=1)
   Buffers: shared hit=489920 read=34361
   ->  Nested Loop  (cost=0.13..517.93 rows=1 width=42) (actual time=3752.550..53926.083 rows=148 loops=1)
         Buffers: shared hit=489920 read=34361
         ->  Nested Loop  (cost=0.13..517.93 rows=1 width=46) (actual time=3743.009..53915.971 rows=148 loops=1)
               Buffers: shared hit=489772 read=34360
               ->  Nested Loop  (cost=0.12..517.93 rows=1 width=50) (actual time=3742.962..53915.078 rows=149 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=489474 read=34360
                     ->  Nested Loop  (cost=0.11..517.77 rows=1 width=66) (actual time=562.498..46291.290 rows=1387 loops=1)
                           Buffers: shared hit=448286 read=33145
                           ->  Nested Loop  (cost=0.10..517.77 rows=1 width=70) (actual time=562.449..46281.934 rows=1652 loops=1)
                                 Join Filter: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=444982 read=33145
                                 ->  Nested Loop  (cost=0.09..517.74 rows=1 width=56) (actual time=517.620..43896.317 rows=1685 loops=1)
                                       Buffers: shared hit=438006 read=32977
                                       ->  Nested Loop  (cost=0.09..517.74 rows=1 width=60) (actual time=481.774..43848.532 rows=9971 loops=1)
                                             Buffers: shared hit=418064 read=32977
                                             ->  Nested Loop  (cost=0.07..517.64 rows=1 width=45) (actual time=477.718..39041.683 rows=10440 loops=1)
                                                   Buffers: shared hit=377052 read=32165
                                                   ->  Nested Loop  (cost=0.07..517.63 rows=4 width=49) (actual time=477.670..38984.693 rows=10963 loops=1)
                                                         Buffers: shared hit=355126 read=32165
                                                         ->  Nested Loop  (cost=0.06..517.20 rows=10 width=24) (actual time=148.177..22146.643 rows=33990 loops=1)
                                                               Buffers: shared hit=223322 read=27929
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=31 width=12) (actual time=115.889..9523.752 rows=10536 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=115.863..9422.096 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=60.700..8209.740 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=37.443..110.845 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.761..2692.130 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.024..0.031 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=20024)
                                                                           Index Cond: (id = cc.status_id)
                                                                           Filter: ((kind)::text <> 'complete+verified'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.028..1.195 rows=3 loops=10536)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 8
                                                                     Buffers: shared hit=42728 read=10585
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.494..0.494 rows=0 loops=33990)
                                                               Index Cond: (id = mk.movie_id)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=131804 read=4236
                                                   ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=10963)
                                                         Index Cond: (id = t.kind_id)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=21926
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.459..0.459 rows=1 loops=10440)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text <> '[us]'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=41012 read=812
                                       ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=0 loops=9971)
                                             Index Cond: (id = cc.subject_id)
                                             Filter: ((kind)::text = 'crew'::text)
                                             Rows Removed by Filter: 1
                                             Buffers: shared hit=19942
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=1.399..1.414 rows=1 loops=1685)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info > '6.5'::text)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=6976 read=168
                           ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=1652)
                                 Index Cond: (id = mi_idx.info_type_id)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=3304
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=8) (actual time=5.429..5.495 rows=0 loops=1387)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                           Rows Removed by Filter: 336
                           Buffers: shared hit=41188 read=1215
               ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=149)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=298
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.066..0.066 rows=1 loops=148)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
               Buffers: shared hit=148 read=1
 Planning Time: 15432.944 ms
 Execution Time: 53926.903 ms
(95 rows)

