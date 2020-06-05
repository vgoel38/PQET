                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4226.18..4226.18 rows=1 width=96) (actual time=2709.431..2709.431 rows=1 loops=1)
   Buffers: shared hit=36315 read=36958
   ->  Hash Join  (cost=2627.77..4226.17 rows=2 width=46) (actual time=2096.872..2691.495 rows=4388 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=36315 read=36958
         ->  Hash Join  (cost=2627.73..4226.14 rows=2 width=38) (actual time=2096.752..2690.070 rows=4388 loops=1)
               Hash Cond: (t2.id = ml.linked_movie_id)
               Buffers: shared hit=36311 read=36958
               ->  Seq Scan on title t2  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.501..219.537 rows=2528312 loops=1)
                     Buffers: shared hit=35997 read=1
               ->  Hash  (cost=2627.73..2627.73 rows=2 width=25) (actual time=2075.166..2075.166 rows=4388 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 314kB
                     Buffers: shared hit=314 read=36957
                     ->  Hash Join  (cost=1029.32..2627.73 rows=2 width=25) (actual time=354.872..2072.955 rows=4388 loops=1)
                           Hash Cond: (t1.id = mk.movie_id)
                           Buffers: shared hit=314 read=36957
                           ->  Seq Scan on title t1  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.010..1183.960 rows=2528312 loops=1)
                                 Buffers: shared hit=2 read=35996
                           ->  Hash  (cost=1029.32..1029.32 rows=2 width=16) (actual time=354.658..354.658 rows=4388 loops=1)
                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 270kB
                                 Buffers: shared hit=312 read=961
                                 ->  Hash Join  (cost=82.61..1029.32 rows=2 width=16) (actual time=115.265..353.211 rows=4388 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=312 read=961
                                       ->  Merge Join  (cost=76.48..998.60 rows=301621 width=20) (actual time=61.886..280.538 rows=288192 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=312 read=957
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.033..94.749 rows=97855 loops=1)
                                                   Buffers: shared hit=304 read=798
                                             ->  Sort  (cost=76.46..78.79 rows=29997 width=12) (actual time=61.845..82.022 rows=301429 loops=1)
                                                   Sort Key: ml.movie_id
                                                   Sort Method: quicksort  Memory: 2175kB
                                                   Buffers: shared hit=8 read=159
                                                   ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.017..28.799 rows=29997 loops=1)
                                                         Buffers: shared hit=4 read=159
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=33.138..33.139 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=33.119..33.122 rows=1 loops=1)
                                                   Index Cond: (keyword = 'character-name-in-title'::text)
                                                   Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=18 width=16) (actual time=0.058..0.058 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.011..0.023 rows=18 loops=1)
                     Buffers: shared hit=1
 Planning Time: 1381.449 ms
 Execution Time: 2735.262 ms
(48 rows)

