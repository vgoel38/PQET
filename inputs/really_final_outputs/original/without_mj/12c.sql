                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1292.03..1292.03 rows=1 width=96) (actual time=145080.037..145080.037 rows=1 loops=1)
   Buffers: shared hit=1933275 read=135077
   ->  Nested Loop  (cost=0.10..1292.03 rows=1 width=42) (actual time=584.053..145055.524 rows=4711 loops=1)
         Join Filter: (mi.info_type_id = it1.id)
         Buffers: shared hit=1933275 read=135077
         ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=26.123..26.166 rows=1 loops=1)
               Filter: ((info)::text = 'genres'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.10..1291.98 rows=47 width=46) (actual time=557.925..145024.603 rows=4711 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=1933275 read=135076
               ->  Nested Loop  (cost=0.09..1253.06 rows=153 width=54) (actual time=164.783..67688.302 rows=42332 loops=1)
                     Join Filter: (mi_idx.movie_id = t.id)
                     Buffers: shared hit=1451501 read=67985
                     ->  Nested Loop  (cost=0.07..1229.18 rows=372 width=33) (actual time=117.658..20815.034 rows=91314 loops=1)
                           Buffers: shared hit=1117129 read=36734
                           ->  Nested Loop  (cost=0.06..1210.83 rows=1030 width=18) (actual time=62.755..5004.801 rows=154495 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 228521
                                 Buffers: shared hit=500915 read=32893
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=5.527..5.530 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.06..1210.20 rows=4120 width=22) (actual time=51.403..4850.782 rows=383016 loops=1)
                                       Buffers: shared hit=500915 read=32892
                                       ->  Hash Join  (cost=0.05..483.66 rows=1708 width=10) (actual time=12.181..957.374 rows=121572 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=4 read=8453
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=192955 width=14) (actual time=12.026..808.053 rows=192967 loops=1)
                                                   Filter: (info > '7.0'::text)
                                                   Rows Removed by Filter: 1187068
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.073..0.074 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.059 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.43 rows=2 width=12) (actual time=0.024..0.029 rows=3 loops=121572)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=500911 read=24439
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.101..0.101 rows=1 loops=154495)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=616214 read=3841
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=0.512..0.512 rows=0 loops=91314)
                           Index Cond: (id = mc.movie_id)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=334372 read=31251
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=1.819..1.826 rows=0 loops=42332)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                     Rows Removed by Filter: 29
                     Buffers: shared hit=481774 read=67091
 Planning Time: 4633.110 ms
 Execution Time: 145080.477 ms
(61 rows)

