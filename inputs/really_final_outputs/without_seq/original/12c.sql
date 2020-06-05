                                                                                                   QUERY PLAN                                                                                                    
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13002.52..13002.52 rows=1 width=96) (actual time=150307.528..150307.528 rows=1 loops=1)
   Buffers: shared hit=1956288 read=138822
   ->  Nested Loop  (cost=0.08..13002.52 rows=1 width=42) (actual time=434.402..150276.623 rows=4711 loops=1)
         Buffers: shared hit=1956288 read=138822
         ->  Nested Loop  (cost=0.07..13002.29 rows=47 width=46) (actual time=434.368..150232.125 rows=4711 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=1946866 read=138822
               ->  Nested Loop  (cost=0.06..12963.38 rows=153 width=54) (actual time=24.707..69584.022 rows=42332 loops=1)
                     Join Filter: (mi_idx.movie_id = t.id)
                     Buffers: shared hit=1465089 read=71734
                     ->  Nested Loop  (cost=0.05..12939.50 rows=372 width=33) (actual time=19.258..22889.216 rows=91314 loops=1)
                           Buffers: shared hit=1130713 read=40487
                           ->  Nested Loop  (cost=0.04..12921.15 rows=1030 width=18) (actual time=14.355..6502.603 rows=154495 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 228521
                                 Buffers: shared hit=514492 read=36653
                                 ->  Nested Loop  (cost=0.03..12914.10 rows=4120 width=22) (actual time=0.190..6126.256 rows=383016 loops=1)
                                       Buffers: shared hit=514491 read=36652
                                       ->  Nested Loop  (cost=0.02..12187.57 rows=1708 width=10) (actual time=0.165..3189.873 rows=121572 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 71395
                                             Buffers: shared hit=13572 read=12221
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=192955 width=14) (actual time=0.117..2987.001 rows=192967 loops=1)
                                                   Filter: (info > '7.0'::text)
                                                   Rows Removed by Filter: 1187068
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=192967)
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.036 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=1 read=1
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.43 rows=2 width=12) (actual time=0.015..0.022 rows=3 loops=121572)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=500919 read=24431
                                 ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=383016)
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.105..0.105 rows=1 loops=154495)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=616221 read=3834
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.510..0.510 rows=0 loops=91314)
                           Index Cond: (id = mc.movie_id)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=334376 read=31247
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=1.898..1.904 rows=0 loops=42332)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 29
                     Buffers: shared hit=481777 read=67088
         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=4711)
               Index Cond: (id = mi.info_type_id)
               Filter: ((info)::text = 'genres'::text)
               Buffers: shared hit=9422
 Planning Time: 5257.384 ms
 Execution Time: 150308.329 ms
(60 rows)

