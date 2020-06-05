                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13225.17..13225.17 rows=1 width=68) (actual time=4664.806..4664.807 rows=1 loops=1)
   Buffers: shared hit=14210 read=13053
   ->  Nested Loop  (cost=0.05..13225.17 rows=4 width=45) (actual time=2274.789..4664.764 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=14210 read=13053
         ->  Nested Loop  (cost=0.04..13222.34 rows=26 width=32) (actual time=1226.315..4400.102 rows=23 loops=1)
               Buffers: shared hit=14138 read=13033
               ->  Nested Loop  (cost=0.03..13221.79 rows=103 width=36) (actual time=1226.295..4399.806 rows=23 loops=1)
                     Buffers: shared hit=14092 read=13033
                     ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=4) (actual time=683.189..2501.401 rows=250 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1379785
                           Buffers: shared hit=13572 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.007..1470.513 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.012..0.012 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'top 250 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=7.590..7.590 rows=0 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=520 read=812
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.01 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=23)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=46
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=11.504..11.504 rows=0 loops=23)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=72 read=20
 Planning Time: 2241.881 ms
 Execution Time: 4665.272 ms
(36 rows)

