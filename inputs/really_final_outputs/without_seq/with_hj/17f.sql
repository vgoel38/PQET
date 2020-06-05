                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=880499.95..880499.95 rows=1 width=32) (actual time=77606.122..77606.122 rows=1 loops=1)
   Buffers: shared hit=7285628 read=492872
   ->  Hash Join  (cost=173132.35..880499.93 rows=278 width=15) (actual time=20796.821..77305.801 rows=1113120 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=7285628 read=492872
         ->  Hash Join  (cost=48890.15..755721.10 rows=4607690 width=19) (actual time=4262.140..58776.352 rows=4857682 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=5790358 read=422372
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=51.849..43235.452 rows=36244344 loops=1)
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=48812.37..48812.37 rows=529807 width=19) (actual time=4202.348..4202.348 rows=536716 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 36076kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=529807 width=19) (actual time=49.938..3992.275 rows=536716 loops=1)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 3630775
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=124242.17..124242.17 rows=188 width=12) (actual time=16481.092..16481.092 rows=148552 loops=1)
               Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8432kB
               Buffers: shared hit=1495270 read=70500
               ->  Hash Join  (cost=64186.93..124242.17 rows=188 width=12) (actual time=4198.794..16420.781 rows=148552 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1495270 read=70500
                     ->  Hash Join  (cost=61528.79..121584.01 rows=190 width=16) (actual time=4024.943..16181.639 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=1495270 read=69653
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=40.163..11586.484 rows=2609129 loops=1)
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=61528.77..61528.77 rows=34 width=8) (actual time=3941.973..3941.973 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=45072 read=43733
                                 ->  Hash Join  (cost=21874.18..61528.77 rows=34 width=8) (actual time=1147.986..3925.906 rows=41840 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=45072 read=43733
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=79.714..2828.514 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.875..1988.107 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.647..46.647 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.632..46.635 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=21496.93..21496.93 rows=2528312 width=4) (actual time=1049.639..1049.639 rows=2528312 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                             Buffers: shared hit=23436 read=6912
                                             ->  Index Only Scan using title_idx_id on title t  (cost=0.01..21496.93 rows=2528312 width=4) (actual time=16.214..375.124 rows=2528312 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=23436 read=6912
                     ->  Hash  (cost=2623.65..2623.65 rows=234997 width=4) (actual time=173.197..173.197 rows=234997 loops=1)
                           Buckets: 262144  Batches: 1  Memory Usage: 10310kB
                           Buffers: shared read=847
                           ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..2623.65 rows=234997 width=4) (actual time=33.441..125.276 rows=234997 loops=1)
                                 Heap Fetches: 0
                                 Buffers: shared read=847
 Planning Time: 5203.795 ms
 Execution Time: 77630.065 ms
(59 rows)

