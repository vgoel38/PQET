                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=818600.31..818600.31 rows=1 width=96) (actual time=74267.721..74267.721 rows=1 loops=1)
   Buffers: shared hit=8301864 read=502101
   ->  Hash Join  (cost=111769.02..818600.31 rows=1 width=48) (actual time=26965.859..74267.689 rows=6 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=8301864 read=502101
         ->  Hash Join  (cost=72108.28..778939.51 rows=539 width=40) (actual time=23771.552..71073.433 rows=61 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=8280225 read=465280
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=19) (actual time=14225.589..61527.150 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=77.682..47642.989 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=19) (actual time=4092.451..4092.451 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=534.232..4092.435 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=23238.35..23238.35 rows=391667 width=21) (actual time=9543.510..9543.510 rows=391666 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                     Buffers: shared hit=2489870 read=42908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=89.763..9368.723 rows=391666 loops=1)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 2136646
                           Buffers: shared hit=2489870 read=42908
         ->  Hash  (cost=39660.73..39660.73 rows=34 width=20) (actual time=3194.153..3194.153 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=21636 read=36821
               ->  Hash Join  (cost=6.15..39660.73 rows=34 width=20) (actual time=155.890..3194.105 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=21636 read=36821
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.265..2354.900 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.879..44.879 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.857..44.860 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2403.296 ms
 Execution Time: 74288.562 ms
(43 rows)

