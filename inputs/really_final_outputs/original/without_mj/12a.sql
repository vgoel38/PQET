                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1201.38..1201.38 rows=1 width=96) (actual time=89666.655..89666.656 rows=1 loops=1)
   Buffers: shared hit=293356 read=41931
   ->  Nested Loop  (cost=0.05..1201.38 rows=1 width=42) (actual time=4475.562..89664.320 rows=397 loops=1)
         Join Filter: (mi.info_type_id = it.id)
         Buffers: shared hit=293356 read=41931
         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=39.551..39.591 rows=1 loops=1)
               Filter: ((info)::text = 'genres'::text)
               Rows Removed by Filter: 112
               Buffers: shared read=1
         ->  Nested Loop  (cost=0.05..1201.33 rows=5 width=46) (actual time=4436.002..89624.133 rows=397 loops=1)
               Join Filter: (t.id = mi.movie_id)
               Buffers: shared hit=293356 read=41930
               ->  Nested Loop  (cost=0.04..1196.77 rows=18 width=54) (actual time=529.630..52227.497 rows=5674 loops=1)
                     Join Filter: (mi_idx.movie_id = t.id)
                     Buffers: shared hit=225461 read=30185
                     ->  Nested Loop  (cost=0.03..1190.22 rows=102 width=33) (actual time=172.805..29015.522 rows=19791 loops=1)
                           Buffers: shared hit=155836 read=20574
                           ->  Nested Loop  (cost=0.01..1185.19 rows=282 width=18) (actual time=62.816..11063.560 rows=24233 loops=1)
                                 Join Filter: (mc.company_type_id = ct.id)
                                 Rows Removed by Join Filter: 40474
                                 Buffers: shared hit=61513 read=17573
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=5.593..5.596 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.01..1185.00 rows=1129 width=22) (actual time=51.398..11026.743 rows=64707 loops=1)
                                       Buffers: shared hit=61513 read=17572
                                       ->  Nested Loop  (cost=0.00..475.52 rows=468 width=10) (actual time=11.961..840.501 rows=15849 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 37013
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.061 rows=1 loops=1)
                                                   Filter: ((info)::text = 'rating'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=1
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=52860 width=14) (actual time=11.902..816.783 rows=52862 loops=1)
                                                   Filter: (info > '8.0'::text)
                                                   Rows Removed by Filter: 1327173
                                                   Buffers: shared read=8453
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..1.52 rows=2 width=12) (actual time=0.515..0.638 rows=4 loops=15849)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=61512 read=9119
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.739..0.739 rows=1 loops=24233)
                                 Index Cond: (id = mc.company_id)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=94323 read=3001
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=21) (actual time=1.171..1.171 rows=0 loops=19791)
                           Index Cond: (id = mc.movie_id)
                           Filter: ((production_year >= 2005) AND (production_year <= 2008))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=69625 read=9611
               ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.25 rows=1 width=8) (actual time=6.583..6.589 rows=0 loops=5674)
                     Index Cond: (movie_id = mc.movie_id)
                     Filter: (info = ANY ('{Drama,Horror}'::text[]))
                     Rows Removed by Filter: 28
                     Buffers: shared hit=67895 read=11745
 Planning Time: 4590.777 ms
 Execution Time: 89720.920 ms
(59 rows)

