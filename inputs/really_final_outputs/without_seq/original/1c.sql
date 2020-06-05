                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13029.24..13029.24 rows=1 width=68) (actual time=6303.834..6303.834 rows=1 loops=1)
   Buffers: shared hit=14213 read=13053
   ->  Nested Loop  (cost=6.17..13029.24 rows=4 width=45) (actual time=2709.556..6303.787 rows=3 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=14213 read=13053
         ->  Nested Loop  (cost=6.16..13026.41 rows=26 width=32) (actual time=1323.744..6016.451 rows=23 loops=1)
               Buffers: shared hit=14141 read=13033
               ->  Nested Loop  (cost=6.15..13025.86 rows=103 width=36) (actual time=1323.710..6016.106 rows=23 loops=1)
                     Buffers: shared hit=14095 read=13033
                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=743.081..2781.578 rows=250 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=13575 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.026..2354.629 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.053..0.054 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'top 250 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=12.933..12.934 rows=0 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=520 read=812
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.01 rows=1 width=4) (actual time=0.010..0.010 rows=1 loops=23)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Buffers: shared hit=46
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=12.490..12.490 rows=0 loops=23)
               Index Cond: (id = mi_idx.movie_id)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1
               Buffers: shared hit=72 read=20
 Planning Time: 2292.170 ms
 Execution Time: 6327.031 ms
(36 rows)

