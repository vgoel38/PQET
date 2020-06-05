                                                                                                     QUERY PLAN                                                                                                     
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1406892.54..1406892.54 rows=1 width=96) (actual time=93703.930..93703.930 rows=1 loops=1)
   Buffers: shared hit=8381377 read=679937
   ->  Hash Join  (cost=700008.69..1406892.54 rows=2 width=65) (actual time=34305.462..93686.356 rows=410 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=8381377 read=679937
         ->  Hash Join  (cost=49136.60..756020.16 rows=2543 width=4) (actual time=4479.809..63854.819 rows=6719 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=5790358 read=422372
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..706690.26 rows=2371250 width=8) (actual time=66.290..58964.991 rows=2379271 loops=1)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 33865073
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=49135.93..49135.93 rows=4470 width=4) (actual time=4272.972..4272.973 rows=9062 loops=1)
                     Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 447kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=4470 width=4) (actual time=70.462..4269.180 rows=9062 loops=1)
                           Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
                           Rows Removed by Filter: 4158429
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=650871.94..650871.94 rows=1025 width=77) (actual time=29825.634..29825.634 rows=45431 loops=1)
               Buckets: 65536 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 4005kB
               Buffers: shared hit=2591019 read=257565
               ->  Hash Join  (cost=35497.96..650871.94 rows=1025 width=77) (actual time=29544.336..29804.332 rows=45431 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=2591019 read=257565
                     ->  Hash Join  (cost=6.14..615364.78 rows=131290 width=46) (actual time=17788.994..18001.304 rows=121863 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=87582 read=202431
                           ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=101.370..14731.243 rows=14835720 loops=1)
                                 Buffers: shared hit=87582 read=202429
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=21.424..21.424 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=21.407..21.410 rows=1 loops=1)
                                       Index Cond: ((info)::text = 'budget'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=11755.170..11755.170 rows=459925 loops=1)
                           Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                           Buffers: shared hit=2503437 read=55134
                           ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1673.292..11564.021 rows=459925 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=2503437 read=55134
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=46.026..8979.264 rows=2528312 loops=1)
                                       Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1604.974..1604.974 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                       Buffers: shared hit=13567 read=12226
                                       ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=45.755..1421.168 rows=459925 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=13567 read=12226
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=45.641..1006.755 rows=1380035 loops=1)
                                                   Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.054..0.054 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=2
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared hit=2
 Planning Time: 5106.523 ms
 Execution Time: 93709.154 ms
(60 rows)

