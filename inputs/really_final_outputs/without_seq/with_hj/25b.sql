                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1450649.27..1450649.27 rows=1 width=128) (actual time=98614.993..98614.993 rows=1 loops=1)
   Buffers: shared hit=8403023 read=716767
   ->  Hash Join  (cost=739636.46..1450649.27 rows=1 width=80) (actual time=46795.884..98614.953 rows=6 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=8403023 read=716767
         ->  Hash Join  (cost=690568.78..1401581.59 rows=1 width=69) (actual time=41954.543..93773.605 rows=6 loops=1)
               Hash Cond: (t.id = mi.movie_id)
               Buffers: shared hit=4464422 read=646081
               ->  Hash Join  (cost=23434.67..734447.48 rows=29 width=29) (actual time=11795.907..68351.662 rows=24 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=4341627 read=394594
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=72.429..57681.321 rows=1244716 loops=1)
                           Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                           Rows Removed by Filter: 34999628
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=23434.65..23434.65 rows=59 width=21) (actual time=10347.964..10347.964 rows=73 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 13kB
                           Buffers: shared hit=2489870 read=42908
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=59 width=21) (actual time=699.526..10347.796 rows=73 loops=1)
                                 Filter: ((production_year > 2010) AND (title ~~ 'Vampire%'::text))
                                 Rows Removed by Filter: 2528239
                                 Buffers: shared hit=2489870 read=42908
               ->  Hash  (cost=667134.11..667134.11 rows=1 width=60) (actual time=25421.832..25421.833 rows=11389 loops=1)
                     Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 768kB
                     Buffers: shared hit=122795 read=251487
                     ->  Hash Join  (cost=51844.11..667134.11 rows=1 width=60) (actual time=6600.761..25412.735 rows=11389 loops=1)
                           Hash Cond: (mi.movie_id = mi_idx.movie_id)
                           Buffers: shared hit=122795 read=251487
                           ->  Hash Join  (cost=6.14..615296.10 rows=277 width=46) (actual time=2312.299..21123.880 rows=30413 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=87582 read=202431
                                 ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=31269 width=50) (actual time=2300.684..21093.609 rows=30801 loops=1)
                                       Filter: (info = 'Horror'::text)
                                       Rows Removed by Filter: 14804919
                                       Buffers: shared hit=87582 read=202429
                                 ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=11.560..11.560 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=11.539..11.543 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'genres'::text)
                                             Buffers: shared read=2
                           ->  Hash  (cost=51837.97..51837.97 rows=4 width=14) (actual time=4265.296..4265.296 rows=50760 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2758kB
                                 Buffers: shared hit=35213 read=49056
                                 ->  Hash Join  (cost=12183.36..51837.97 rows=4 width=14) (actual time=1536.910..4241.434 rows=50760 loops=1)
                                       Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=35213 read=49056
                                       ->  Hash Join  (cost=30.68..39685.26 rows=169 width=4) (actual time=110.707..2775.681 rows=62096 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21646 read=36830
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.798..1915.403 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=30.66..30.66 rows=5 width=4) (actual time=70.412..70.412 rows=5 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=10 read=13
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..30.66 rows=5 width=4) (actual time=46.874..70.372 rows=5 loops=1)
                                                         Index Cond: (keyword = ANY ('{murder,blood,gore,death,female-nudity}'::text[]))
                                                         Buffers: shared hit=10 read=13
                                       ->  Hash  (cost=12150.89..12150.89 rows=12213 width=10) (actual time=1426.079..1426.079 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=13567 read=12226
                                             ->  Hash Join  (cost=6.14..12150.89 rows=12213 width=10) (actual time=48.375..1245.891 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=13567 read=12226
                                                   ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=48.274..850.791 rows=1380035 loops=1)
                                                         Buffers: shared hit=13565 read=12226
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=2
                                                         ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.038..0.040 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'votes'::text)
                                                               Buffers: shared hit=2
         ->  Hash  (cost=48812.37..48812.37 rows=1739438 width=19) (actual time=4836.542..4836.542 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 106207kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=51.301..4214.212 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 9075.080 ms
 Execution Time: 98617.708 ms
(81 rows)

