                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=883391.66..883391.66 rows=1 width=32) (actual time=78834.050..78834.050 rows=1 loops=1)
   Buffers: shared hit=7517342 read=495865
   ->  Hash Join  (cost=175294.22..883391.60 rows=789 width=15) (actual time=22448.976..78009.818 rows=2832555 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=7517342 read=495865
         ->  Hash Join  (cost=126193.71..834291.02 rows=789 width=4) (actual time=16897.327..70961.109 rows=2832555 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=3578741 read=425179
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=49.880..40400.728 rows=36244344 loops=1)
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=126193.68..126193.68 rows=68 width=12) (actual time=16847.394..16847.394 rows=68316 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
                     Buffers: shared hit=1726984 read=73493
                     ->  Hash Join  (cost=66138.44..126193.68 rows=68 width=12) (actual time=4709.265..16819.643 rows=68316 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1726984 read=73493
                           ->  Hash Join  (cost=61528.79..121584.01 rows=190 width=16) (actual time=3977.841..16042.313 rows=148552 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=1495270 read=69653
                                 ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=19.231..11471.820 rows=2609129 loops=1)
                                       Buffers: shared hit=1450198 read=25920
                                 ->  Hash  (cost=61528.77..61528.77 rows=34 width=8) (actual time=3920.185..3920.185 rows=41840 loops=1)
                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                       Buffers: shared hit=45072 read=43733
                                       ->  Hash Join  (cost=21874.18..61528.77 rows=34 width=8) (actual time=1158.732..3905.103 rows=41840 loops=1)
                                             Hash Cond: (mk.movie_id = t.id)
                                             Buffers: shared hit=45072 read=43733
                                             ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.554..2796.449 rows=41840 loops=1)
                                                   Hash Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=21636 read=36821
                                                   ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.709..1961.597 rows=4523930 loops=1)
                                                         Buffers: shared hit=21636 read=36817
                                                   ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.645..46.646 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.630..46.633 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                                             ->  Hash  (cost=21496.93..21496.93 rows=2528312 width=4) (actual time=1054.333..1054.333 rows=2528312 loops=1)
                                                   Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                                   Buffers: shared hit=23436 read=6912
                                                   ->  Index Only Scan using title_idx_id on title t  (cost=0.01..21496.93 rows=2528312 width=4) (actual time=17.330..381.129 rows=2528312 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared hit=23436 read=6912
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=730.405..730.405 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=231714 read=3840
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=53.456..705.424 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231714 read=3840
         ->  Hash  (cost=48488.80..48488.80 rows=4167491 width=19) (actual time=5526.185..5526.185 rows=4167491 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 248744kB
               Buffers: shared hit=3938598 read=70686
               ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=24.465..4073.806 rows=4167491 loops=1)
                     Buffers: shared hit=3938598 read=70686
 Planning Time: 4994.889 ms
 Execution Time: 78861.516 ms
(58 rows)

