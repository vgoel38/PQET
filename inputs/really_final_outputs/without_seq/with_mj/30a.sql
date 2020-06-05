                                                                                                                                 QUERY PLAN                                                                                                                                  
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1454837.46..1454837.46 rows=1 width=128) (actual time=193412.824..193412.824 rows=1 loops=1)
   Buffers: shared hit=16377534 read=600224
   ->  Merge Join  (cost=1454837.46..1454837.46 rows=1 width=80) (actual time=193412.269..193412.483 rows=757 loops=1)
         Merge Cond: (cct.id = cc.status_id)
         Buffers: shared hit=16377534 read=600224
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=4.614..4.614 rows=1 loops=1)
               Sort Key: cct.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=5 read=1
               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.058..0.059 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'complete+verified'::text)
                     Buffers: shared hit=1 read=1
         ->  Sort  (cost=1454831.33..1454831.33 rows=1 width=84) (actual time=193407.334..193407.451 rows=2492 loops=1)
               Sort Key: cc.status_id
               Sort Method: quicksort  Memory: 348kB
               Buffers: shared hit=16377529 read=600223
               ->  Merge Join  (cost=1454822.15..1454831.33 rows=1 width=84) (actual time=193405.843..193406.535 rows=2492 loops=1)
                     Merge Cond: (cct.id = cc.subject_id)
                     Buffers: shared hit=16377529 read=600223
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=2 width=4) (actual time=0.018..0.024 rows=2 loops=1)
                           Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                           Rows Removed by Filter: 2
                           Buffers: shared hit=2
                     ->  Sort  (cost=1454822.15..1454822.15 rows=1 width=88) (actual time=193405.819..193405.934 rows=2492 loops=1)
                           Sort Key: cc.subject_id
                           Sort Method: quicksort  Memory: 390kB
                           Buffers: shared hit=16377527 read=600223
                           ->  Merge Join  (cost=1451528.16..1454822.15 rows=1 width=88) (actual time=193283.371..193404.800 rows=2492 loops=1)
                                 Merge Cond: (t.id = cc.movie_id)
                                 Buffers: shared hit=16377527 read=600223
                                 ->  Sort  (cost=1451528.15..1451528.15 rows=1 width=100) (actual time=193135.420..193136.431 rows=6214 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 1066kB
                                       Buffers: shared hit=16291945 read=599133
                                       ->  Merge Join  (cost=1451528.15..1451528.15 rows=1 width=100) (actual time=193121.323..193132.483 rows=6214 loops=1)
                                             Merge Cond: (k.id = mk.keyword_id)
                                             Buffers: shared hit=16291945 read=599133
                                             ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=60.994..60.996 rows=7 loops=1)
                                                   Sort Key: k.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=14 read=17
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=28.667..60.953 rows=7 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                         Buffers: shared hit=14 read=17
                                             ->  Sort  (cost=1451485.22..1451485.22 rows=2 width=104) (actual time=193059.056..193063.410 rows=31432 loops=1)
                                                   Sort Key: mk.keyword_id
                                                   Sort Method: quicksort  Memory: 33804kB
                                                   Buffers: shared hit=16291931 read=599116
                                                   ->  Merge Join  (cost=1411848.20..1451485.22 rows=2 width=104) (actual time=189958.684..192926.470 rows=196564 loops=1)
                                                         Merge Cond: (t.id = mk.movie_id)
                                                         Buffers: shared hit=16291931 read=599116
                                                         ->  Sort  (cost=1411848.19..1411848.19 rows=1 width=96) (actual time=189782.011..189782.886 rows=6575 loops=1)
                                                               Sort Key: mi.movie_id
                                                               Sort Method: quicksort  Memory: 1114kB
                                                               Buffers: shared hit=16269201 read=562306
                                                               ->  Merge Join  (cost=1411848.17..1411848.19 rows=1 width=96) (actual time=189776.906..189779.199 rows=6575 loops=1)
                                                                     Merge Cond: (mi_idx.info_type_id = it.id)
                                                                     Buffers: shared hit=16269201 read=562306
                                                                     ->  Sort  (cost=1411842.05..1411842.05 rows=82 width=100) (actual time=189775.265..189776.284 rows=13151 loops=1)
                                                                           Sort Key: mi_idx.info_type_id
                                                                           Sort Method: quicksort  Memory: 3548kB
                                                                           Buffers: shared hit=16269199 read=562306
                                                                           ->  Merge Join  (cost=1411840.53..1411841.97 rows=82 width=100) (actual time=189760.461..189767.258 rows=19740 loops=1)
                                                                                 Merge Cond: (mi.info_type_id = it.id)
                                                                                 Buffers: shared hit=16269199 read=562306
                                                                                 ->  Sort  (cost=1411834.40..1411835.12 rows=9223 width=104) (actual time=189760.413..189761.360 rows=19740 loops=1)
                                                                                       Sort Key: mi.info_type_id
                                                                                       Sort Method: quicksort  Memory: 3551kB
                                                                                       Buffers: shared hit=16269198 read=562305
                                                                                       ->  Merge Join  (cost=760284.08..1411815.54 rows=9223 width=104) (actual time=68874.473..189724.653 rows=19740 loops=1)
                                                                                             Merge Cond: (t.id = mi_idx.movie_id)
                                                                                             Buffers: shared hit=16269198 read=562305
                                                                                             ->  Merge Join  (cost=760284.06..1400319.35 rows=16898 width=90) (actual time=68785.821..185560.260 rows=14057 loops=1)
                                                                                                   Merge Cond: (mi.movie_id = t.id)
                                                                                                   Buffers: shared hit=16255388 read=550085
                                                                                                   ->  Merge Join  (cost=760284.05..1376987.57 rows=30926 width=69) (actual time=66755.243..169607.240 rows=20103 loops=1)
                                                                                                         Merge Cond: (mi.movie_id = ci.movie_id)
                                                                                                         Buffers: shared hit=13767239 read=507223
                                                                                                         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..616648.54 rows=73417 width=50) (actual time=268.012..104103.655 rows=73047 loops=1)
                                                                                                               Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                                                                               Rows Removed by Filter: 14762673
                                                                                                               Buffers: shared hit=9072952 read=202423
                                                                                                         ->  Sort  (cost=760284.04..760324.41 rows=519996 width=19) (actual time=65096.719..65234.168 rows=561730 loops=1)
                                                                                                               Sort Key: ci.movie_id
                                                                                                               Sort Method: quicksort  Memory: 65537kB
                                                                                                               Buffers: shared hit=4694287 read=304800
                                                                                                               ->  Merge Join  (cost=0.06..758750.85 rows=519996 width=19) (actual time=38.381..64678.012 rows=558518 loops=1)
                                                                                                                     Merge Cond: (n.id = ci.person_id)
                                                                                                                     Buffers: shared hit=4694287 read=304800
                                                                                                                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.041..9554.986 rows=1739579 loops=1)
                                                                                                                           Filter: ((gender)::text = 'm'::text)
                                                                                                                           Rows Removed by Filter: 2427912
                                                                                                                           Buffers: shared hit=3938602 read=70682
                                                                                                                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=26.152..54388.259 rows=558519 loops=1)
                                                                                                                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                                                                                           Rows Removed by Filter: 17022207
                                                                                                                           Buffers: shared hit=755685 read=234118
                                                                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=4.220..15558.930 rows=1381106 loops=1)
                                                                                                         Filter: (production_year > 2000)
                                                                                                         Rows Removed by Filter: 1144687
                                                                                                         Buffers: shared hit=2488149 read=42862
                                                                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.024..3679.161 rows=1386732 loops=1)
                                                                                                   Buffers: shared hit=13810 read=12220
                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                                                       Sort Key: it.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'genres'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                                           Sort Key: it.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=2
                                                                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                                                                 Index Cond: ((info)::text = 'votes'::text)
                                                                                 Buffers: shared hit=2
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2382.987 rows=4596152 loops=1)
                                                               Buffers: shared hit=22730 read=36810
                                 ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.015..234.702 rows=134403 loops=1)
                                       Buffers: shared hit=85582 read=1090
 Planning Time: 15208.643 ms
 Execution Time: 193441.189 ms
(123 rows)

