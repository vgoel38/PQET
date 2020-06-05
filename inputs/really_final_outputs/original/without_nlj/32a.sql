                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4226.18..4226.18 rows=1 width=96) (actual time=357.069..357.069 rows=1 loops=1)
   Buffers: shared hit=317 read=962
   ->  Hash Join  (cost=2627.77..4226.17 rows=2 width=46) (actual time=357.050..357.050 rows=0 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=317 read=962
         ->  Hash Join  (cost=2627.73..4226.14 rows=2 width=38) (actual time=356.938..356.938 rows=0 loops=1)
               Hash Cond: (t2.id = ml.linked_movie_id)
               Buffers: shared hit=313 read=962
               ->  Seq Scan on title t2  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.478..21.478 rows=1 loops=1)
                     Buffers: shared read=1
               ->  Hash  (cost=2627.73..2627.73 rows=2 width=25) (actual time=335.428..335.428 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=313 read=961
                     ->  Hash Join  (cost=1029.32..2627.73 rows=2 width=25) (actual time=335.427..335.427 rows=0 loops=1)
                           Hash Cond: (t1.id = mk.movie_id)
                           Buffers: shared hit=313 read=961
                           ->  Seq Scan on title t1  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.010..0.010 rows=1 loops=1)
                                 Buffers: shared hit=1
                           ->  Hash  (cost=1029.32..1029.32 rows=2 width=16) (actual time=335.386..335.386 rows=0 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 8kB
                                 Buffers: shared hit=312 read=961
                                 ->  Hash Join  (cost=82.61..1029.32 rows=2 width=16) (actual time=335.385..335.386 rows=0 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=312 read=961
                                       ->  Merge Join  (cost=76.48..998.60 rows=301621 width=20) (actual time=54.887..273.682 rows=288192 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=312 read=957
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.032..97.788 rows=97855 loops=1)
                                                   Buffers: shared hit=304 read=798
                                             ->  Sort  (cost=76.46..78.79 rows=29997 width=12) (actual time=54.848..74.296 rows=301429 loops=1)
                                                   Sort Key: ml.movie_id
                                                   Sort Method: quicksort  Memory: 2175kB
                                                   Buffers: shared hit=8 read=159
                                                   ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.017..28.953 rows=29997 loops=1)
                                                         Buffers: shared hit=4 read=159
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=23.931..23.931 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.911..23.913 rows=1 loops=1)
                                                   Index Cond: (keyword = '10,000-mile-club'::text)
                                                   Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=18 width=16) (actual time=0.051..0.052 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.011..0.023 rows=18 loops=1)
                     Buffers: shared hit=1
 Planning Time: 1397.285 ms
 Execution Time: 367.081 ms
(48 rows)

