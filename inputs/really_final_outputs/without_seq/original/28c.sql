                                                                                                                QUERY PLAN                                                                                                                
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=516.96..516.96 rows=1 width=96) (actual time=87417.696..87417.697 rows=1 loops=1)
   Buffers: shared hit=756641 read=40524
   ->  Nested Loop  (cost=0.13..516.96 rows=1 width=42) (actual time=2454.226..87389.563 rows=8373 loops=1)
         Buffers: shared hit=756641 read=40524
         ->  Nested Loop  (cost=0.13..516.96 rows=1 width=46) (actual time=2444.908..87350.844 rows=8373 loops=1)
               Buffers: shared hit=748268 read=40523
               ->  Nested Loop  (cost=0.12..516.95 rows=1 width=50) (actual time=2444.865..87302.567 rows=9489 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=729290 read=40523
                     ->  Nested Loop  (cost=0.11..516.80 rows=1 width=66) (actual time=405.793..54031.539 rows=8156 loops=1)
                           Buffers: shared hit=519490 read=33637
                           ->  Nested Loop  (cost=0.10..516.79 rows=1 width=70) (actual time=405.704..53921.107 rows=24274 loops=1)
                                 Join Filter: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=470942 read=33637
                                 ->  Nested Loop  (cost=0.09..516.77 rows=1 width=56) (actual time=366.762..47225.211 rows=8286 loops=1)
                                       Buffers: shared hit=438006 read=32977
                                       ->  Nested Loop  (cost=0.09..516.76 rows=1 width=60) (actual time=366.704..47173.256 rows=9971 loops=1)
                                             Buffers: shared hit=418064 read=32977
                                             ->  Nested Loop  (cost=0.07..516.67 rows=1 width=45) (actual time=362.623..41339.234 rows=10440 loops=1)
                                                   Buffers: shared hit=377052 read=32165
                                                   ->  Nested Loop  (cost=0.07..516.66 rows=1 width=49) (actual time=362.587..41279.551 rows=10963 loops=1)
                                                         Buffers: shared hit=355126 read=32165
                                                         ->  Nested Loop  (cost=0.06..516.54 rows=3 width=24) (actual time=149.789..22394.238 rows=33990 loops=1)
                                                               Buffers: shared hit=223322 read=27929
                                                               ->  Nested Loop  (cost=0.04..516.22 rows=10 width=12) (actual time=117.468..9596.152 rows=10536 loops=1)
                                                                     Buffers: shared hit=180594 read=17344
                                                                     ->  Nested Loop  (cost=0.04..516.04 rows=41 width=16) (actual time=117.441..9490.140 rows=20024 loops=1)
                                                                           Buffers: shared hit=140546 read=17344
                                                                           ->  Nested Loop  (cost=0.03..514.14 rows=135 width=4) (actual time=62.279..8259.992 rows=37091 loops=1)
                                                                                 Buffers: shared hit=10145 read=16297
                                                                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=39.036..111.399 rows=3 loops=1)
                                                                                       Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                       Buffers: shared hit=8 read=10
                                                                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=22.756..2708.501 rows=12364 loops=3)
                                                                                       Index Cond: (keyword_id = k.id)
                                                                                       Buffers: shared hit=10137 read=16287
                                                                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.024..0.032 rows=1 loops=37091)
                                                                                 Index Cond: (movie_id = mk.movie_id)
                                                                                 Buffers: shared hit=130401 read=1047
                                                                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=20024)
                                                                           Index Cond: (id = cc.status_id)
                                                                           Filter: ((kind)::text = 'complete'::text)
                                                                           Rows Removed by Filter: 0
                                                                           Buffers: shared hit=40048
                                                               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.054..1.211 rows=3 loops=10536)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 8
                                                                     Buffers: shared hit=42728 read=10585
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=25) (actual time=0.554..0.554 rows=0 loops=33990)
                                                               Index Cond: (id = mk.movie_id)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=131804 read=4236
                                                   ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=10963)
                                                         Index Cond: (id = t.kind_id)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 0
                                                         Buffers: shared hit=21926
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.10 rows=1 width=23) (actual time=0.557..0.557 rows=1 loops=10440)
                                                   Index Cond: (id = mc.company_id)
                                                   Filter: ((country_code)::text <> '[us]'::text)
                                                   Rows Removed by Filter: 0
                                                   Buffers: shared hit=41012 read=812
                                       ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=9971)
                                             Index Cond: (id = cc.subject_id)
                                             Filter: ((kind)::text = 'cast'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=19942
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=3 width=14) (actual time=0.800..0.805 rows=3 loops=8286)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (info < '8.5'::text)
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=32936 read=660
                           ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=24274)
                                 Index Cond: (id = mi_idx.info_type_id)
                                 Filter: ((info)::text = 'rating'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=48548
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=8) (actual time=3.603..4.077 rows=1 loops=8156)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 206
                           Buffers: shared hit=209800 read=6886
               ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=9489)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=18978
         ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=8373)
               Index Cond: (id = mc.company_type_id)
               Heap Fetches: 0
               Buffers: shared hit=8373 read=1
 Planning Time: 14997.906 ms
 Execution Time: 87418.240 ms
(95 rows)

