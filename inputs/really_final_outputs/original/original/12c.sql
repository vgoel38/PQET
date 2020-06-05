                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1292.03..1292.03 rows=1 width=96) (actual time=156575.305..156575.305 rows=1 loops=1)
   Buffers: shared hit=1933301 read=135051
   ->  Nested Loop  (cost=0.10..1292.03 rows=1 width=42) (actual time=400.124..156550.526 rows=4711 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Buffers: shared hit=1933301 read=135051
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.018..0.034 rows=1 loops=1)
               Filter: ((info)::text = 'genres'::text)
               Rows Removed by Filter: 112
               Buffers: shared hit=1
         ->  Nested Loop  (cost=0.10..1291.98 rows=47 width=46) (actual time=400.100..156545.862 rows=4711 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=1933300 read=135051
               ->  Nested Loop  (cost=0.09..1253.06 rows=153 width=54) (actual time=23.539..69767.370 rows=42332 loops=1)
                     Join Filter: (mi_idx.movie_id = t.id)
                     Buffers: shared hit=1451523 read=67963
                     ->  Nested Loop  (cost=0.07..1229.18 rows=372 width=33) (actual time=18.080..20652.349 rows=91314 loops=1)
                           Buffers: shared hit=1117147 read=36716
                           ->  Nested Loop  (cost=0.06..1210.83 rows=1030 width=18) (actual time=13.193..4846.378 rows=154495 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 228521
                                 Buffers: shared hit=500926 read=32882
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.009 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.06..1210.20 rows=4120 width=22) (actual time=0.219..4702.340 rows=383016 loops=1)
                                       Buffers: shared hit=500925 read=32882
                                       ->  Hash Join  (cost=0.05..483.66 rows=1708 width=10) (actual time=0.194..911.378 rows=121572 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=6 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=0.064..765.054 rows=192967 loops=1)
                                                   Filter: (info > '7.0'::text)
                                                   Rows Removed by Filter: 1187068
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.067..0.068 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.045..0.051 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.43 rows=2 width=12) (actual time=0.023..0.029 rows=3 loops=121572)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=500919 read=24431
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.101..0.101 rows=1 loops=154495)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=616221 read=3834
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.537..0.537 rows=0 loops=91314)
                           Index Cond: (id = mc.movie_id)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=334376 read=31247
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=2.041..2.049 rows=0 loops=42332)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 29
                     Buffers: shared hit=481777 read=67088
 Planning Time: 4716.745 ms
 Execution Time: 156576.095 ms
(61 rows)

