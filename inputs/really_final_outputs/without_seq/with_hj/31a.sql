                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1515174.39..1515174.39 rows=1 width=128) (actual time=110619.862..110619.862 rows=1 loops=1)
   Buffers: shared hit=10084939 read=746531
   ->  Hash Join  (cost=804118.05..1515174.39 rows=1 width=80) (actual time=52441.719..110617.544 rows=1273 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=10084939 read=746531
         ->  Hash Join  (cost=755050.37..1466106.71 rows=1 width=69) (actual time=47491.527..105665.927 rows=1556 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=6146338 read=675845
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=66.343..58339.839 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=755050.35..755050.35 rows=1 width=85) (actual time=46955.282..46955.282 rows=1524 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 143kB
                     Buffers: shared hit=4294581 read=324159
                     ->  Hash Join  (cost=139756.84..755050.35 rows=1 width=85) (actual time=31102.770..46953.987 rows=1524 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=4294581 read=324159
                           ->  Hash Join  (cost=6.14..615299.58 rows=650 width=46) (actual time=2144.808..18176.764 rows=72258 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=2133.192..18129.611 rows=73047 loops=1)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 14762673
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.544..11.544 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=11.519..11.522 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=139750.70..139750.70 rows=1 width=39) (actual time=28756.949..28756.949 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=4206999 read=121728
                                 ->  Hash Join  (cost=79786.59..139750.70 rows=1 width=39) (actual time=27446.516..28756.199 rows=1547 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=4206999 read=121728
                                       ->  Hash Join  (cost=4597.22..64561.28 rows=333 width=4) (actual time=12858.959..14167.582 rows=1814 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=1681912 read=29760
                                             ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=40.218..12241.411 rows=2609129 loops=1)
                                                   Buffers: shared hit=1450198 read=25920
                                             ->  Hash  (cost=4597.20..4597.20 rows=30 width=4) (actual time=1453.985..1453.985 rows=10 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=952.947..1453.945 rows=10 loops=1)
                                                         Filter: (name ~~ 'Lionsgate%'::text)
                                                         Rows Removed by Filter: 234987
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=75189.38..75189.38 rows=6 width=35) (actual time=14587.454..14587.454 rows=63701 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4772kB
                                             Buffers: shared hit=2525087 read=91968
                                             ->  Hash Join  (cost=35534.76..75189.38 rows=6 width=35) (actual time=11852.112..14555.039 rows=63701 loops=1)
                                                   Hash Cond: (mk.movie_id = t.id)
                                                   Buffers: shared hit=2525087 read=91968
                                                   ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=126.428..2781.222 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=21650 read=36834
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=30.078..1896.777 rows=4523930 loops=1)
                                                               Buffers: shared hit=21636 read=36817
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=95.865..95.865 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=46.871..95.827 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=11725.528..11725.528 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                                         Buffers: shared hit=2503437 read=55134
                                                         ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1537.619..11523.939 rows=459925 loops=1)
                                                               Hash Cond: (t.id = mi_idx.movie_id)
                                                               Buffers: shared hit=2503437 read=55134
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=35.321..9036.166 rows=2528312 loops=1)
                                                                     Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1483.910..1483.910 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=37.416..1303.284 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.319..904.373 rows=1380035 loops=1)
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'votes'::text)
                                                                                       Buffers: shared hit=2
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=4945.320..4945.320 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=28.986..4324.591 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 14088.603 ms
 Execution Time: 110623.077 ms
(97 rows)

