                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=33.76..33.76 rows=1 width=64) (actual time=5001.784..5001.784 rows=1 loops=1)
   Buffers: shared hit=4941 read=1524
   ->  Nested Loop  (cost=0.10..33.76 rows=4 width=59) (actual time=4296.967..5001.671 rows=37 loops=1)
         Buffers: shared hit=4941 read=1524
         ->  Nested Loop  (cost=0.09..33.71 rows=4 width=63) (actual time=4273.101..4947.615 rows=37 loops=1)
               Buffers: shared hit=4851 read=1502
               ->  Nested Loop  (cost=0.08..33.51 rows=4 width=67) (actual time=4273.068..4947.330 rows=37 loops=1)
                     Join Filter: (t.id = mi.movie_id)
                     Buffers: shared hit=4777 read=1502
                     ->  Nested Loop  (cost=0.07..32.90 rows=4 width=37) (actual time=186.768..3131.053 rows=292 loops=1)
                           Buffers: shared hit=801 read=1297
                           ->  Nested Loop  (cost=0.06..32.73 rows=1 width=29) (actual time=155.688..2487.777 rows=26 loops=1)
                                 Buffers: shared hit=755 read=1242
                                 ->  Nested Loop  (cost=0.04..32.35 rows=1 width=8) (actual time=129.801..1625.900 rows=27 loops=1)
                                       Buffers: shared hit=704 read=1185
                                       ->  Nested Loop  (cost=0.04..32.34 rows=1 width=12) (actual time=122.541..1618.449 rows=27 loops=1)
                                             Buffers: shared hit=677 read=1184
                                             ->  Nested Loop  (cost=0.03..32.15 rows=1 width=8) (actual time=61.288..1316.974 rows=278 loops=1)
                                                   Buffers: shared hit=3 read=1022
                                                   ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=57.794..57.798 rows=1 loops=1)
                                                         Index Cond: (name = 'YouTube'::text)
                                                         Filter: ((country_code)::text = '[us]'::text)
                                                         Buffers: shared read=4
                                                   ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..26.02 rows=1 width=12) (actual time=3.485..1258.764 rows=278 loops=1)
                                                         Index Cond: (company_id = cn.id)
                                                         Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                         Rows Removed by Filter: 1180
                                                         Buffers: shared hit=3 read=1018
                                             ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..0.19 rows=2 width=4) (actual time=1.080..1.080 rows=0 loops=278)
                                                   Index Cond: (movie_id = mc.movie_id)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=674 read=162
                                       ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.272..0.272 rows=1 loops=27)
                                             Index Cond: (id = mc.company_type_id)
                                             Heap Fetches: 0
                                             Buffers: shared hit=27 read=1
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.38 rows=1 width=21) (actual time=31.917..31.917 rows=1 loops=27)
                                       Index Cond: (id = at.movie_id)
                                       Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                       Rows Removed by Filter: 0
                                       Buffers: shared hit=51 read=57
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..0.17 rows=11 width=8) (actual time=24.711..24.725 rows=11 loops=26)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=46 read=55
                     ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.15 rows=1 width=50) (actual time=5.854..6.218 rows=0 loops=292)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 29
                           Buffers: shared hit=3976 read=205
               ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..0.04 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=37)
                     Index Cond: (id = mi.info_type_id)
                     Filter: ((info)::text = 'release dates'::text)
                     Buffers: shared hit=74
         ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..0.01 rows=1 width=4) (actual time=1.459..1.459 rows=1 loops=37)
               Index Cond: (id = mk.keyword_id)
               Heap Fetches: 0
               Buffers: shared hit=90 read=22
 Planning Time: 9172.821 ms
 Execution Time: 5002.284 ms
(59 rows)

