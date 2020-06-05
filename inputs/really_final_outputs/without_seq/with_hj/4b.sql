                                                                                            QUERY PLAN                                                                                            
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=76675.00..76675.00 rows=1 width=64) (actual time=15100.521..15100.521 rows=1 loops=1)
   Buffers: shared hit=2656245 read=93391
   ->  Hash Join  (cost=37020.15..76675.00 rows=1 width=23) (actual time=13128.824..15100.470 rows=6 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=2656245 read=93391
         ->  Hash Join  (cost=1591.27..41245.85 rows=2259 width=4) (actual time=407.890..3162.456 rows=12951 loops=1)
               Hash Cond: (mk.keyword_id = k.id)
               Buffers: shared hit=152810 read=38255
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.324..1980.077 rows=4523930 loops=1)
                     Buffers: shared hit=21636 read=36817
               ->  Hash  (cost=1591.24..1591.24 rows=67 width=4) (actual time=373.102..373.102 rows=30 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 10kB
                     Buffers: shared hit=131171 read=1438
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.666..373.040 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131171 read=1438
         ->  Hash  (cost=35428.88..35428.88 rows=11 width=31) (actual time=11935.509..11935.509 rows=72 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 13kB
               Buffers: shared hit=2503435 read=55136
               ->  Hash Join  (cost=12144.93..35428.88 rows=11 width=31) (actual time=2608.856..11935.361 rows=72 loops=1)
                     Hash Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2503435 read=55136
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=103.574..10117.440 rows=391666 loops=1)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 2136646
                           Buffers: shared hit=2489870 read=42908
                     ->  Hash  (cost=12144.91..12144.91 rows=69 width=10) (actual time=1761.410..1761.410 rows=305 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 20kB
                           Buffers: shared hit=13565 read=12228
                           ->  Hash Join  (cost=6.14..12144.91 rows=69 width=10) (actual time=91.486..1760.986 rows=305 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=13565 read=12228
                                 ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=7778 width=14) (actual time=34.288..1757.703 rows=7793 loops=1)
                                       Filter: (info > '9.0'::text)
                                       Rows Removed by Filter: 1372242
                                       Buffers: shared hit=13565 read=12226
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.239..0.240 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.232..0.233 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared read=2
 Planning Time: 2065.030 ms
 Execution Time: 15125.887 ms
(45 rows)

