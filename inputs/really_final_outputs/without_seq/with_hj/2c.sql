                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=127635.18..127635.18 rows=1 width=32) (actual time=26167.527..26167.527 rows=1 loops=1)
   Buffers: shared hit=4193421 read=109489
   ->  Hash Join  (cost=67671.11..127635.18 rows=1 width=17) (actual time=26167.522..26167.522 rows=0 loops=1)
         Hash Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4193421 read=109489
         ->  Hash Join  (cost=44257.95..104222.02 rows=1 width=8) (actual time=15507.817..15507.817 rows=0 loops=1)
               Hash Cond: (mc.movie_id = mk.movie_id)
               Buffers: shared hit=1703548 read=66581
               ->  Hash Join  (cost=4597.21..64561.28 rows=11 width=4) (actual time=12304.323..12711.832 rows=2 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1681912 read=29760
                     ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=41.115..11535.110 rows=2609129 loops=1)
                           Buffers: shared hit=1450198 read=25920
                     ->  Hash  (cost=4597.20..4597.20 rows=1 width=4) (actual time=699.908..699.909 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1 width=4) (actual time=317.450..699.898 rows=1 loops=1)
                                 Filter: ((country_code)::text = '[sm]'::text)
                                 Rows Removed by Filter: 234996
                                 Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=39660.73..39660.73 rows=34 width=4) (actual time=2795.960..2795.960 rows=41840 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1983kB
                     Buffers: shared hit=21636 read=36821
                     ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=74.203..2780.038 rows=41840 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=21636 read=36821
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=27.338..1925.713 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.658..46.659 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.643..46.646 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10634.056..10634.056 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=32.196..9690.103 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 2257.306 ms
 Execution Time: 26220.850 ms
(41 rows)

