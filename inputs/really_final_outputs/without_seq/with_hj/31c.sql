                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1517520.56..1517520.56 rows=1 width=128) (actual time=109264.224..109264.224 rows=1 loops=1)
   Buffers: shared hit=10084939 read=746531
   ->  Hash Join  (cost=806464.23..1517520.56 rows=1 width=80) (actual time=51510.778..109260.220 rows=2825 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=10084939 read=746531
         ->  Hash Join  (cost=757363.71..1468420.05 rows=1 width=69) (actual time=45933.351..103680.422 rows=2825 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=6146338 read=675845
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=65.773..57978.356 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=757363.70..757363.70 rows=1 width=85) (actual time=45324.470..45324.470 rows=2840 loops=1)
                     Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 264kB
                     Buffers: shared hit=4294581 read=324159
                     ->  Hash Join  (cost=139756.84..757363.70 rows=1 width=85) (actual time=30739.628..45322.800 rows=2840 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=4294581 read=324159
                           ->  Hash Join  (cost=6.14..617612.80 rows=1674 width=46) (actual time=1894.803..16604.409 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1883.166..16520.890 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.583..11.583 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=11.565..11.568 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=139750.70..139750.70 rows=1 width=39) (actual time=28681.677..28681.677 rows=1547 loops=1)
                                 Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 123kB
                                 Buffers: shared hit=4206999 read=121728
                                 ->  Hash Join  (cost=79786.59..139750.70 rows=1 width=39) (actual time=27435.556..28680.818 rows=1547 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=4206999 read=121728
                                       ->  Hash Join  (cost=4597.22..64561.28 rows=333 width=4) (actual time=12247.176..13491.252 rows=1814 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=1681912 read=29760
                                             ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=40.224..12306.655 rows=2609129 loops=1)
                                                   Buffers: shared hit=1450198 read=25920
                                             ->  Hash  (cost=4597.20..4597.20 rows=30 width=4) (actual time=704.230..704.230 rows=10 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=278.168..704.201 rows=10 loops=1)
                                                         Filter: (name ~~ 'Lionsgate%'::text)
                                                         Rows Removed by Filter: 234987
                                                         Buffers: shared hit=231714 read=3840
                                       ->  Hash  (cost=75189.38..75189.38 rows=6 width=35) (actual time=15188.246..15188.246 rows=63701 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 4772kB
                                             Buffers: shared hit=2525087 read=91968
                                             ->  Hash Join  (cost=35534.76..75189.38 rows=6 width=35) (actual time=12353.304..15155.897 rows=63701 loops=1)
                                                   Hash Cond: (mk.movie_id = t.id)
                                                   Buffers: shared hit=2525087 read=91968
                                                   ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=121.588..2873.021 rows=76714 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=21650 read=36834
                                                         ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=25.241..1971.017 rows=4523930 loops=1)
                                                               Buffers: shared hit=21636 read=36817
                                                         ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=95.850..95.850 rows=7 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=14 read=17
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=46.876..95.815 rows=7 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                     Buffers: shared hit=14 read=17
                                                   ->  Hash  (cost=35490.03..35490.03 rows=12213 width=31) (actual time=12231.564..12231.564 rows=459925 loops=1)
                                                         Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                                         Buffers: shared hit=2503437 read=55134
                                                         ->  Hash Join  (cost=12152.70..35490.03 rows=12213 width=31) (actual time=1529.290..12039.909 rows=459925 loops=1)
                                                               Hash Cond: (t.id = mi_idx.movie_id)
                                                               Buffers: shared hit=2503437 read=55134
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=35.319..9515.912 rows=2528312 loops=1)
                                                                     Buffers: shared hit=2489870 read=42908
                                                               ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1471.093..1471.093 rows=459925 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                                     Buffers: shared hit=13567 read=12226
                                                                     ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=37.434..1300.560 rows=459925 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=13567 read=12226
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=37.336..889.041 rows=1380035 loops=1)
                                                                                 Buffers: shared hit=13565 read=12226
                                                                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=2
                                                                                 ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.032..0.034 rows=1 loops=1)
                                                                                       Index Cond: ((info)::text = 'votes'::text)
                                                                                       Buffers: shared hit=2
         ->  Hash  (cost=48488.80..48488.80 rows=4167491 width=19) (actual time=5567.673..5567.673 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=67.477..4120.885 rows=4167491 loops=1)
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 14095.241 ms
 Execution Time: 109269.678 ms
(95 rows)

