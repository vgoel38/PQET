                                                                                                             QUERY PLAN                                                                                                              
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1450597.28..1450597.28 rows=1 width=128) (actual time=98930.814..98930.814 rows=1 loops=1)
   Buffers: shared hit=8403023 read=716767
   ->  Hash Join  (cost=739540.94..1450597.28 rows=1 width=80) (actual time=40241.517..98897.621 rows=4407 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=8403023 read=716767
         ->  Hash Join  (cost=690473.26..1401529.59 rows=1 width=69) (actual time=35275.246..93923.344 rows=7112 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=4464422 read=646081
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=112.201..58378.823 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=690473.24..690473.24 rows=1 width=81) (actual time=35033.640..35033.640 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1025kB
                     Buffers: shared hit=2612665 read=294395
                     ->  Hash Join  (cost=75183.24..690473.24 rows=1 width=81) (actual time=17465.969..35024.789 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2612665 read=294395
                           ->  Hash Join  (cost=6.14..615296.10 rows=277 width=46) (actual time=2119.798..19680.612 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=31269 width=50) (actual time=2108.173..19651.692 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.566..11.567 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.534..11.538 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=75177.10..75177.10 rows=4 width=35) (actual time=15322.104..15322.104 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3909kB
                                 Buffers: shared hit=2525083 read=91964
                                 ->  Hash Join  (cost=35522.50..75177.10 rows=4 width=35) (actual time=12489.427..15296.043 rows=50760 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=2525083 read=91964
                                       ->  Hash Join  (cost=30.68..39685.26 rows=169 width=4) (actual time=110.645..2872.841 rows=62096 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21646 read=36830
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.802..1976.247 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=70.413..70.413 rows=5 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=38.541..70.377 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                       ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=12378.610..12378.610 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                             Buffers: shared hit=2503437 read=55134
                                             ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1454.786..12192.677 rows=459925 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=2503437 read=55134
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=35.753..9768.339 rows=2528312 loops=1)
                                                         Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1400.323..1400.323 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=13567 read=12226
                                                         ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=37.468..1239.347 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=13567 read=12226
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.364..847.124 rows=1380035 loops=1)
                                                                     Buffers: shared hit=13565 read=12226
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.036 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'votes'::text)
                                                                           Buffers: shared hit=2
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=4961.468..4961.468 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=66.003..4356.526 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 9077.026 ms
 Execution Time: 98934.022 ms
(79 rows)

