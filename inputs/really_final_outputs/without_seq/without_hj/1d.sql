                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13641.25..13641.25 rows=1 width=68) (actual time=2803.442..2803.442 rows=1 loops=1)
   Buffers: shared hit=13595 read=12270
   ->  Nested Loop  (cost=0.05..13640.77 rows=2063 width=45) (actual time=1225.420..2803.350 rows=4 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=13595 read=12270
         ->  Nested Loop  (cost=0.04..13229.41 rows=3775 width=32) (actual time=1178.857..2656.609 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=13584 read=12261
               ->  Nested Loop  (cost=0.03..13219.90 rows=15098 width=36) (actual time=804.005..2656.360 rows=100 loops=1)
                     Buffers: shared hit=13583 read=12260
                     ->  Nested Loop  (cost=0.02..12346.83 rows=12213 width=4) (actual time=766.272..2297.015 rows=10 loops=1)
                           Join Filter: (it.id = mi_idx.info_type_id)
                           Rows Removed by Join Filter: 1380025
                           Buffers: shared hit=13572 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.027..1423.121 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Materialize  (cost=0.00..6.13 rows=1 width=4) (actual time=0.000..0.000 rows=1 loops=1380035)
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.037 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=33.788..35.920 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=11 read=39
               ->  Materialize  (cost=0.00..6.12 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=100)
                     Buffers: shared hit=1 read=1
                     ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.045..0.046 rows=1 loops=1)
                           Index Cond: ((kind)::text = 'production companies'::text)
                           Buffers: shared hit=1 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=29.340..29.340 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2000)
               Rows Removed by Filter: 0
               Buffers: shared hit=11 read=9
 Planning Time: 2213.775 ms
 Execution Time: 2823.259 ms
(39 rows)

