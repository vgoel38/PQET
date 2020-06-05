                                                                                                             QUERY PLAN                                                                                                              
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1452926.41..1452926.41 rows=1 width=128) (actual time=98243.280..98243.280 rows=1 loops=1)
   Buffers: shared hit=8403027 read=716771
   ->  Hash Join  (cost=741870.08..1452926.41 rows=1 width=80) (actual time=37826.269..98187.944 rows=26153 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=8403027 read=716771
         ->  Hash Join  (cost=692802.39..1403858.73 rows=1 width=69) (actual time=32647.546..92979.164 rows=42900 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=4464426 read=646085
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=66.500..59901.131 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=692802.37..692802.37 rows=1 width=81) (actual time=32485.891..32485.891 rows=63386 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5544kB
                     Buffers: shared hit=2612669 read=294399
                     ->  Hash Join  (cost=75195.52..692802.37 rows=1 width=81) (actual time=16857.553..32451.605 rows=63386 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2612669 read=294399
                           ->  Hash Join  (cost=6.14..617612.80 rows=1674 width=46) (actual time=1869.815..17380.120 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1858.188..17297.030 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.559..11.559 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.540..11.543 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=75189.38..75189.38 rows=6 width=35) (actual time=14987.682..14987.682 rows=63701 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4772kB
                                 Buffers: shared hit=2525087 read=91968
                                 ->  Hash Join  (cost=35534.76..75189.38 rows=6 width=35) (actual time=12212.998..14955.206 rows=63701 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=2525087 read=91968
                                       ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=119.522..2811.166 rows=76714 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21650 read=36834
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.802..1933.090 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=79.216..79.216 rows=7 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=14 read=17
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.548..79.162 rows=7 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                         Buffers: shared hit=14 read=17
                                       ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=12093.300..12093.300 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                             Buffers: shared hit=2503437 read=55134
                                             ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1520.902..11902.874 rows=459925 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=2503437 read=55134
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=35.276..9435.953 rows=2528312 loops=1)
                                                         Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1458.500..1458.500 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                         Buffers: shared hit=13567 read=12226
                                                         ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=37.468..1285.006 rows=459925 loops=1)
                                                               Hash Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=13567 read=12226
                                                               ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.362..879.529 rows=1380035 loops=1)
                                                                     Buffers: shared hit=13565 read=12226
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.048..0.049 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.035 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'votes'::text)
                                                                           Buffers: shared hit=2
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=5173.944..5173.944 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=74.445..4565.685 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 9210.394 ms
 Execution Time: 98246.534 ms
(79 rows)

