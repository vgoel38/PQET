                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=127649.25..127649.25 rows=1 width=32) (actual time=26711.017..26711.017 rows=1 loops=1)
   Buffers: shared hit=4193421 read=109489
   ->  Hash Join  (cost=67672.55..127649.25 rows=8 width=17) (actual time=22942.822..26695.048 rows=7834 loops=1)
         Hash Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4193421 read=109489
         ->  Hash Join  (cost=44259.39..104236.09 rows=8 width=8) (actual time=12007.579..15753.663 rows=7834 loops=1)
               Hash Cond: (mc.movie_id = mk.movie_id)
               Buffers: shared hit=1703548 read=66581
               ->  Hash Join  (cost=4598.65..64562.71 rows=108530 width=4) (actual time=9163.849..12864.213 rows=148132 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681912 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=42.020..11652.318 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=9775 width=4) (actual time=704.389..704.389 rows=9775 loops=1)
                           Buckets: 16384  Batches: 1  Memory Usage: 472kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=9775 width=4) (actual time=125.755..701.177 rows=9775 loops=1)
                                 Filter: ((country_code)::text = '[de]'::text)
                                 Rows Removed by Filter: 225222
                                 Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=39660.73..39660.73 rows=34 width=4) (actual time=2843.652..2843.652 rows=41840 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                     Buffers: shared hit=21636 read=36821
                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=82.398..2828.496 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21636 read=36821
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.515..1960.863 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.684..46.684 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.664..46.668 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10925.467..10925.467 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=32.858..9961.490 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 2121.743 ms
 Execution Time: 26715.120 ms
(41 rows)

