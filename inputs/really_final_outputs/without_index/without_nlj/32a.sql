                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=4239.60..4239.60 rows=1 width=96) (actual time=381.813..381.813 rows=1 loops=1)
   Buffers: shared hit=315 read=964
   ->  Hash Join  (cost=2641.19..4239.60 rows=3 width=46) (actual time=381.798..381.798 rows=0 loops=1)
         Hash Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=315 read=964
         ->  Hash Join  (cost=2641.15..4239.56 rows=3 width=38) (actual time=381.700..381.700 rows=0 loops=1)
               Hash Cond: (t.id = ml.linked_movie_id)
               Buffers: shared hit=311 read=964
               ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=23.935..23.935 rows=1 loops=1)
                     Buffers: shared read=1
               ->  Hash  (cost=2641.15..2641.15 rows=3 width=25) (actual time=357.732..357.732 rows=0 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 8kB
                     Buffers: shared hit=311 read=963
                     ->  Hash Join  (cost=1042.74..2641.15 rows=3 width=25) (actual time=357.731..357.731 rows=0 loops=1)
                           Hash Cond: (t.id = mk.movie_id)
                           Buffers: shared hit=311 read=963
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=0.010..0.010 rows=1 loops=1)
                                 Buffers: shared hit=1
                           ->  Hash  (cost=1042.74..1042.74 rows=3 width=16) (actual time=357.678..357.678 rows=0 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 8kB
                                 Buffers: shared hit=310 read=963
                                 ->  Hash Join  (cost=82.61..1042.74 rows=3 width=16) (actual time=357.678..357.678 rows=0 loops=1)
                                       Hash Cond: (mk.keyword_id = k.id)
                                       Buffers: shared hit=310 read=963
                                       ->  Merge Join  (cost=76.48..1009.40 rows=333800 width=20) (actual time=48.587..295.885 rows=288192 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=310 read=959
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39286.64 rows=4523930 width=8) (actual time=0.032..123.985 rows=97855 loops=1)
                                                   Buffers: shared hit=304 read=798
                                             ->  Sort  (cost=76.46..78.79 rows=29997 width=12) (actual time=48.548..68.701 rows=301429 loops=1)
                                                   Sort Key: ml.movie_id
                                                   Sort Method: quicksort  Memory: 2175kB
                                                   Buffers: shared hit=6 read=161
                                                   ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=12) (actual time=0.017..26.438 rows=29997 loops=1)
                                                         Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=23.919..23.919 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=4
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.905..23.908 rows=1 loops=1)
                                                   Index Cond: (keyword = '10,000-mile-club'::text)
                                                   Buffers: shared read=4
         ->  Hash  (cost=0.03..0.03 rows=18 width=16) (actual time=0.048..0.048 rows=18 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.011..0.023 rows=18 loops=1)
                     Buffers: shared hit=1
 Planning Time: 1239.542 ms
 Execution Time: 405.767 ms
(48 rows)

