                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13033.17..13033.17 rows=1 width=68) (actual time=8797.593..8797.594 rows=1 loops=1)
   Buffers: shared hit=14742 read=13248
   ->  Nested Loop  (cost=6.17..13033.16 rows=42 width=45) (actual time=774.647..8796.768 rows=142 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=14742 read=13248
         ->  Nested Loop  (cost=6.16..13028.58 rows=42 width=32) (actual time=723.495..6929.866 rows=142 loops=1)
               Buffers: shared hit=14389 read=13033
               ->  Nested Loop  (cost=6.15..13027.75 rows=168 width=36) (actual time=723.475..6927.682 rows=147 loops=1)
                     Buffers: shared hit=14095 read=13033
                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=4) (actual time=668.112..3022.944 rows=250 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=13575 read=12221
                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.026..2572.473 rows=1380035 loops=1)
                                 Buffers: shared hit=13571 read=12220
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1 read=1
                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.039..0.041 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'top 250 rank'::text)
                                       Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.07 rows=1 width=32) (actual time=15.577..15.613 rows=1 loops=250)
                           Index Cond: (movie_id = mi_idx.movie_id)
                           Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                           Rows Removed by Filter: 33
                           Buffers: shared hit=520 read=812
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=147)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=294
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=13.141..13.141 rows=1 loops=142)
               Index Cond: (id = mi_idx.movie_id)
               Buffers: shared hit=353 read=215
 Planning Time: 2366.463 ms
 Execution Time: 8821.474 ms
(35 rows)

