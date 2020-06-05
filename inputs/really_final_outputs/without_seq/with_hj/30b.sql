                                                                                                                   QUERY PLAN                                                                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1454509.31..1454509.31 rows=1 width=128) (actual time=97523.121..97523.121 rows=1 loops=1)
   Buffers: shared hit=8489948 read=717877
   ->  Hash Join  (cost=743452.97..1454509.31 rows=1 width=80) (actual time=74391.969..97523.027 rows=28 loops=1)
         Hash Cond: (cc.status_id = cct2.id)
         Buffers: shared hit=8489948 read=717877
         ->  Hash Join  (cost=743446.84..1454503.18 rows=1 width=84) (actual time=43771.953..97522.838 rows=108 loops=1)
               Hash Cond: (cc.subject_id = cct1.id)
               Buffers: shared hit=8489945 read=717875
               ->  Hash Join  (cost=743437.66..1454494.00 rows=1 width=88) (actual time=43771.916..97522.705 rows=108 loops=1)
                     Hash Cond: (t.id = cc.movie_id)
                     Buffers: shared hit=8489944 read=717874
                     ->  Hash Join  (cost=740134.32..1451190.66 rows=1 width=100) (actual time=43375.232..97125.894 rows=108 loops=1)
                           Hash Cond: (ci.person_id = n.id)
                           Buffers: shared hit=8403024 read=716771
                           ->  Hash Join  (cost=691066.64..1402122.98 rows=1 width=89) (actual time=38509.558..92260.095 rows=108 loops=1)
                                 Hash Cond: (ci.movie_id = t.id)
                                 Buffers: shared hit=4464426 read=646085
                                 ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=135.901..57888.627 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851757 read=351686
                                 ->  Hash  (cost=691066.62..691066.62 rows=1 width=81) (actual time=34056.438..34056.438 rows=65 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 13kB
                                       Buffers: shared hit=2612669 read=294399
                                       ->  Hash Join  (cost=75770.69..691066.62 rows=1 width=81) (actual time=17495.071..34056.385 rows=65 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=2612669 read=294399
                                             ->  Hash Join  (cost=75764.56..691060.50 rows=1 width=85) (actual time=17475.189..34036.452 rows=195 loops=1)
                                                   Hash Cond: (t.id = mi_idx.movie_id)
                                                   Buffers: shared hit=2612669 read=294397
                                                   ->  Hash Join  (cost=63531.00..678826.94 rows=1 width=71) (actual time=15844.162..32405.353 rows=65 loops=1)
                                                         Hash Cond: (mi.info_type_id = it1.id)
                                                         Buffers: shared hit=2599104 read=282171
                                                         ->  Hash Join  (cost=63524.88..678820.81 rows=1 width=75) (actual time=15844.124..32405.286 rows=65 loops=1)
                                                               Hash Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=2599102 read=282171
                                                               ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=2082.143..19386.803 rows=73047 loops=1)
                                                                     Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                                     Rows Removed by Filter: 14762673
                                                                     Buffers: shared hit=87582 read=202429
                                                               ->  Hash  (cost=63524.86..63524.86 rows=1 width=25) (actual time=13000.605..13000.605 rows=49 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 11kB
                                                                     Buffers: shared hit=2511520 read=79742
                                                                     ->  Hash Join  (cost=23870.26..63524.86 rows=1 width=25) (actual time=11138.599..13000.562 rows=49 loops=1)
                                                                           Hash Cond: (mk.movie_id = t.id)
                                                                           Buffers: shared hit=2511520 read=79742
                                                                           ->  Hash Join  (cost=42.94..39697.53 rows=236 width=4) (actual time=122.744..2820.656 rows=76714 loops=1)
                                                                                 Hash Cond: (mk.keyword_id = k.id)
                                                                                 Buffers: shared hit=21650 read=36834
                                                                                 ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.746..1935.683 rows=4523930 loops=1)
                                                                                       Buffers: shared hit=21636 read=36817
                                                                                 ->  Hash  (cost=42.93..42.93 rows=7 width=4) (actual time=87.514..87.514 rows=7 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=14 read=17
                                                                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=38.527..87.472 rows=7 loops=1)
                                                                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                                             Buffers: shared hit=14 read=17
                                                                           ->  Hash  (cost=23827.24..23827.24 rows=516 width=21) (actual time=10166.216..10166.216 rows=533 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 43kB
                                                                                 Buffers: shared hit=2489870 read=42908
                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=516 width=21) (actual time=603.712..10165.553 rows=533 loops=1)
                                                                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                                                                       Rows Removed by Filter: 2527779
                                                                                       Buffers: shared hit=2489870 read=42908
                                                         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=2
                                                               ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'genres'::text)
                                                                     Buffers: shared hit=2
                                                   ->  Hash  (cost=12031.00..12031.00 rows=1380035 width=14) (actual time=1616.446..1616.446 rows=1380035 loops=1)
                                                         Buckets: 2097152  Batches: 1  Memory Usage: 79357kB
                                                         Buffers: shared hit=13565 read=12226
                                                         ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=102.938..1108.258 rows=1380035 loops=1)
                                                               Buffers: shared hit=13565 read=12226
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=19.848..19.848 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=19.832..19.835 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared read=2
                           ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=4860.144..4860.144 rows=1739579 loops=1)
                                 Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
                                 Buffers: shared hit=3938598 read=70686
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=71.715..4264.751 rows=1739579 loops=1)
                                       Filter: ((gender)::text = 'm'::text)
                                       Rows Removed by Filter: 2427912
                                       Buffers: shared hit=3938598 read=70686
                     ->  Hash  (cost=3283.51..3283.51 rows=135086 width=12) (actual time=396.004..396.004 rows=135086 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                           Buffers: shared hit=86920 read=1103
                           ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=43.796..335.605 rows=135086 loops=1)
                                 Buffers: shared hit=86920 read=1103
               ->  Hash  (cost=9.19..9.19 rows=2 width=4) (actual time=0.020..0.020 rows=2 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1 read=1
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..9.19 rows=2 width=4) (actual time=0.016..0.018 rows=2 loops=1)
                           Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                           Rows Removed by Filter: 2
                           Buffers: shared hit=1 read=1
         ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=0.093..0.093 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.089..0.089 rows=1 loops=1)
                     Index Cond: ((kind)::text = 'complete+verified'::text)
                     Buffers: shared read=2
 Planning Time: 14706.748 ms
 Execution Time: 97527.280 ms
(108 rows)

