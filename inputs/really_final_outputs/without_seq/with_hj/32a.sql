                                                                                           QUERY PLAN                                                                                            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=86777.20..86777.20 rows=1 width=96) (actual time=14006.377..14006.378 rows=1 loops=1)
   Buffers: shared hit=2511585 read=79977
   ->  Hash Join  (cost=47121.86..86777.20 rows=2 width=46) (actual time=14006.370..14006.370 rows=0 loops=1)
         Hash Cond: (ml.linked_movie_id = t2.id)
         Buffers: shared hit=2511585 read=79977
         ->  Hash Join  (cost=23708.70..63364.04 rows=2 width=33) (actual time=3310.980..3310.980 rows=0 loops=1)
               Hash Cond: (mk.movie_id = t1.id)
               Buffers: shared hit=21712 read=37069
               ->  Hash Join  (cost=295.54..39950.88 rows=2 width=24) (actual time=3310.978..3310.978 rows=0 loops=1)
                     Hash Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=21712 read=37069
                     ->  Hash Join  (cost=286.35..39941.69 rows=2 width=16) (actual time=3306.574..3306.574 rows=0 loops=1)
                           Hash Cond: (mk.movie_id = ml.movie_id)
                           Buffers: shared hit=21712 read=37067
                           ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=3025.225..3185.914 rows=1 loops=1)
                                 Hash Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=21636 read=36821
                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=33.915..2289.076 rows=4523930 loops=1)
                                       Buffers: shared hit=21636 read=36817
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=40.078..40.078 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=40.062..40.065 rows=1 loops=1)
                                             Index Cond: (keyword = '10,000-mile-club'::text)
                                             Buffers: shared read=4
                           ->  Hash  (cost=275.80..275.80 rows=29997 width=12) (actual time=120.549..120.549 rows=29997 loops=1)
                                 Buckets: 32768  Batches: 1  Memory Usage: 1545kB
                                 Buffers: shared hit=76 read=246
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=33.254..100.461 rows=29997 loops=1)
                                       Buffers: shared hit=76 read=246
                     ->  Hash  (cost=9.19..9.19 rows=18 width=16) (actual time=4.388..4.388 rows=18 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=16) (actual time=4.348..4.365 rows=18 loops=1)
                                 Buffers: shared read=2
               ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (never executed)
                     ->  Index Scan using title_idx_id on title t1  (cost=0.01..23042.05 rows=2528312 width=21) (never executed)
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10669.595..10669.595 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t2  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=32.016..9692.496 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 1267.814 ms
 Execution Time: 14024.725 ms
(44 rows)

