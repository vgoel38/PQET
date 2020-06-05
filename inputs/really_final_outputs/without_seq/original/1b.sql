                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13444.21..13444.21 rows=1 width=68) (actual time=2524.816..2524.816 rows=1 loops=1)
   Buffers: shared hit=13598 read=12270
   ->  Nested Loop  (cost=6.17..13443.96 rows=1069 width=45) (actual time=1225.463..2524.767 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=13598 read=12270
         ->  Nested Loop  (cost=6.16..13032.30 rows=3775 width=32) (actual time=1178.767..2377.874 rows=5 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 95
               Buffers: shared hit=13587 read=12261
               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=1 read=1
               ->  Nested Loop  (cost=6.15..13023.96 rows=15098 width=36) (actual time=870.708..2377.764 rows=100 loops=1)
                     Buffers: shared hit=13586 read=12260
                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=807.814..1963.771 rows=10 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=13575 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.024..1572.747 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.047 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.032 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'bottom 10 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=39.253..41.383 rows=10 loops=10)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=11 read=39
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=29.370..29.370 rows=1 loops=5)
               Index Cond: (id = mi_idx.movie_id)
               Filter: ((production_year >= 2005) AND (production_year <= 2010))
               Rows Removed by Filter: 0
               Buffers: shared hit=11 read=9
 Planning Time: 2343.604 ms
 Execution Time: 2546.672 ms
(37 rows)

