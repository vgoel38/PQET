                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1413228.86..1413228.86 rows=1 width=96) (actual time=93512.375..93512.375 rows=1 loops=1)
   Buffers: shared hit=8381377 read=679937
   ->  Hash Join  (cost=702172.52..1413228.86 rows=5 width=65) (actual time=35018.427..93452.474 rows=28073 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=8381377 read=679937
         ->  Hash Join  (cost=653104.84..1364161.18 rows=13 width=69) (actual time=30263.027..88652.235 rows=54155 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=4442776 read=609251
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=65.414..57906.978 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=653104.82..653104.82 rows=13 width=77) (actual time=30072.408..30072.408 rows=102516 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8671kB
                     Buffers: shared hit=2591019 read=257565
                     ->  Hash Join  (cost=35497.96..653104.82 rows=13 width=77) (actual time=13773.479..30018.996 rows=102516 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2591019 read=257565
                           ->  Hash Join  (cost=6.14..617612.80 rows=1674 width=46) (actual time=1878.120..18016.911 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1866.495..17935.974 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.575..11.575 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.557..11.560 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=11895.192..11895.192 rows=459925 loops=1)
                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                 Buffers: shared hit=2503437 read=55134
                                 ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1540.469..11713.013 rows=459925 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=2503437 read=55134
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=38.177..9226.400 rows=2528312 loops=1)
                                             Buffers: shared hit=2489870 read=42908
                                       ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1480.524..1480.524 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=13567 read=12226
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=37.408..1308.039 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.308..893.811 rows=1380035 loops=1)
                                                         Buffers: shared hit=13565 read=12226
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.035 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'votes'::text)
                                                               Buffers: shared hit=2
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=4) (actual time=4750.566..4750.566 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 77542kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=4) (actual time=24.967..4222.489 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 5076.692 ms
 Execution Time: 93518.156 ms
(62 rows)

