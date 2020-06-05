                                                                                 QUERY PLAN                                                                                 
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1550.00..1550.00 rows=1 width=64) (actual time=17013.275..17013.275 rows=1 loops=1)
   Buffers: shared hit=59400 read=36627
   ->  Nested Loop  (cost=49.55..1550.00 rows=9 width=23) (actual time=1757.675..17001.974 rows=740 loops=1)
         Join Filter: (mi_idx.movie_id = t.id)
         Buffers: shared hit=59400 read=36627
         ->  Hash Join  (cost=49.53..1549.01 rows=23 width=14) (actual time=153.781..6598.704 rows=5820 loops=1)
               Hash Cond: (mi_idx.info_type_id = it.id)
               Buffers: shared hit=42111 read=30605
               ->  Nested Loop  (cost=49.48..1548.75 rows=2569 width=18) (actual time=150.900..6587.272 rows=8429 loops=1)
                     Buffers: shared hit=42108 read=30604
                     ->  Hash Join  (cost=49.47..1498.11 rows=2259 width=4) (actual time=106.415..2909.076 rows=12951 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared read=25403
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=23.121..1651.115 rows=4523930 loops=1)
                                 Buffers: shared read=24454
                           ->  Hash  (cost=49.46..49.46 rows=67 width=4) (actual time=83.046..83.047 rows=30 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared read=949
                                 ->  Seq Scan on keyword k  (cost=0.00..49.46 rows=67 width=4) (actual time=24.107..82.994 rows=30 loops=1)
                                       Filter: (keyword ~~ '%sequel%'::text)
                                       Rows Removed by Filter: 134140
                                       Buffers: shared read=949
                     ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..0.02 rows=1 width=14) (actual time=0.278..0.283 rows=1 loops=12951)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (info > '5.0'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=42108 read=5201
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=2.815..2.815 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.786..2.792 rows=1 loops=1)
                           Filter: ((info)::text = 'rating'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.786..1.786 rows=0 loops=5820)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 2005)
               Rows Removed by Filter: 1
               Buffers: shared hit=17289 read=6022
 Planning Time: 1976.312 ms
 Execution Time: 17019.003 ms
(41 rows)

