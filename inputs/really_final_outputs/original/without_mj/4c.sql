                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1550.89..1550.89 rows=1 width=64) (actual time=17412.305..17412.305 rows=1 loops=1)
   Buffers: shared hit=67082 read=38036
   ->  Nested Loop  (cost=49.55..1550.89 rows=26 width=23) (actual time=188.471..17393.984 rows=4700 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=67082 read=38036
         ->  Hash Join  (cost=49.53..1549.30 rows=37 width=14) (actual time=153.856..6603.281 rows=8092 loops=1)
               Hash Cond: (mi_idx.info_type_id = it.id)
               Buffers: shared hit=42111 read=30605
               ->  Nested Loop  (cost=49.48..1548.91 rows=4212 width=18) (actual time=151.005..6589.652 rows=14901 loops=1)
                     Buffers: shared hit=42108 read=30604
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=109.539..2822.172 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=23.170..1635.149 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=85.832..85.832 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=24.066..85.795 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=2 width=14) (actual time=0.284..0.289 rows=1 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '2.0'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=42108 read=5201
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=2.785..2.785 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.768..2.772 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.332..1.332 rows=1 loops=8092)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 0
               Buffers: shared hit=24971 read=7431
 Planning Time: 1978.044 ms
 Execution Time: 17416.283 ms
(41 rows)

