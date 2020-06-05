                                                                                QUERY PLAN                                                                                 
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1550.89..1550.89 rows=1 width=64) (actual time=17166.199..17166.200 rows=1 loops=1)
   Buffers: shared hit=67094 read=38024
   ->  Nested Loop  (cost=49.55..1550.89 rows=26 width=23) (actual time=99.366..17147.540 rows=4700 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=67094 read=38024
         ->  Hash Join  (cost=49.53..1549.30 rows=37 width=14) (actual time=78.706..6235.106 rows=8092 loops=1)
               Hash Cond: (mi_idx.info_type_id = it.id)
               Buffers: shared hit=42121 read=30595
               ->  Nested Loop  (cost=49.48..1548.91 rows=4212 width=18) (actual time=78.557..6223.980 rows=14901 loops=1)
                     Buffers: shared hit=42117 read=30595
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=78.417..2605.135 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5 read=25398
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..1409.888 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=78.175..78.175 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2 read=947
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=18.277..78.133 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared hit=2 read=947
                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..0.02 rows=2 width=14) (actual time=0.276..0.278 rows=1 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '2.0'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=42112 read=5197
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.088..0.088 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.075..0.081 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.347..1.347 rows=1 loops=8092)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 0
               Buffers: shared hit=24973 read=7429
 Planning Time: 2372.291 ms
 Execution Time: 17173.356 ms
(41 rows)

