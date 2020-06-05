                                                                                           QUERY PLAN                                                                                            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=86777.20..86777.20 rows=1 width=96) (actual time=16707.218..16707.218 rows=1 loops=1)
   Buffers: shared hit=5044363 read=79977
   ->  Hash Join  (cost=47121.86..86777.20 rows=2 width=46) (actual time=14029.993..16686.460 rows=4388 loops=1)
         Hash Cond: (ml.linked_movie_id = t2.id)
         Buffers: shared hit=5044363 read=79977
         ->  Hash Join  (cost=23708.70..63364.04 rows=2 width=33) (actual time=2807.238..5460.001 rows=4388 loops=1)
               Hash Cond: (mk.movie_id = t1.id)
               Buffers: shared hit=2554490 read=37069
               ->  Hash Join  (cost=295.54..39950.88 rows=2 width=24) (actual time=210.983..2861.471 rows=4388 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=21712 read=37069
                     ->  Hash Join  (cost=286.35..39941.69 rows=2 width=16) (actual time=205.769..2854.144 rows=4388 loops=1)
                           Hash Cond: (mk.movie_id = ml.movie_id)
                           Buffers: shared hit=21712 read=37067
                           ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=80.762..2716.082 rows=41840 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21636 read=36821
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=33.908..1873.959 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.648..46.648 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.633..46.636 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                           ->  Hash  (cost=275.80..275.80 rows=29997 width=12) (actual time=123.737..123.738 rows=29997 loops=1)
                                 Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                 Buffers: shared hit=76 read=246
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=18.624..101.355 rows=29997 loops=1)
                                       Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=18 width=16) (actual time=5.197..5.197 rows=18 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=16) (actual time=5.147..5.168 rows=18 loops=1)
                                 Buffers: shared read=2
               ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=2583.234..2583.234 rows=2528312 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
                     Buffers: shared hit=2532778
                     ->  Index Scan using title_idx_id on title t1  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.023..1711.298 rows=2528312 loops=1)
                           Buffers: shared hit=2532778
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=11212.556..11212.556 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t2  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=42.478..10182.966 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 1161.322 ms
 Execution Time: 16714.977 ms
(47 rows)

