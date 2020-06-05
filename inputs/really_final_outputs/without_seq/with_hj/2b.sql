                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=127638.55..127638.55 rows=1 width=32) (actual time=27088.842..27088.842 rows=1 loops=1)
   Buffers: shared hit=4193421 read=109489
   ->  Hash Join  (cost=67671.45..127638.54 rows=2 width=17) (actual time=18669.025..27075.619 rows=5228 loops=1)
         Hash Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4193421 read=109489
         ->  Hash Join  (cost=44258.29..104225.39 rows=2 width=8) (actual time=7746.215..16148.550 rows=5228 loops=1)
               Hash Cond: (mc.movie_id = mk.movie_id)
               Buffers: shared hit=1703548 read=66581
               ->  Hash Join  (cost=4597.56..64561.62 rows=25981 width=4) (actual time=4655.752..13038.313 rows=56410 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681912 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=36.318..11847.593 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=2340 width=4) (actual time=694.041..694.042 rows=2340 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 115kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=2340 width=4) (actual time=63.398..693.079 rows=2340 loops=1)
                                 Filter: ((country_code)::text = '[nl]'::text)
                                 Rows Removed by Filter: 232657
                                 Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=39660.73..39660.73 rows=34 width=4) (actual time=3090.338..3090.338 rows=41840 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                     Buffers: shared hit=21636 read=36821
                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=76.729..3073.880 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21636 read=36821
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=29.879..2188.704 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.650..46.650 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.631..46.634 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10898.516..10898.516 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=25.208..9877.957 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 2077.251 ms
 Execution Time: 27122.215 ms
(41 rows)

