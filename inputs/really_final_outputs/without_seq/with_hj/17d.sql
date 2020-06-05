                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=879890.61..879890.61 rows=1 width=32) (actual time=78194.958..78194.959 rows=1 loops=1)
   Buffers: shared hit=7285628 read=492872
   ->  Hash Join  (cost=173055.21..879890.61 rows=2 width=15) (actual time=21101.824..78189.380 rows=11538 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=7285628 read=492872
         ->  Hash Join  (cost=170397.07..877232.47 rows=2 width=19) (actual time=20952.580..78029.171 rows=11538 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=7285625 read=492025
               ->  Hash Join  (cost=48813.03..755643.98 rows=38249 width=19) (actual time=4311.973..61719.756 rows=48290 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=144.261..47511.962 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=4398 width=19) (actual time=4068.120..4068.121 rows=5216 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 339kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=4398 width=19) (actual time=35.905..4065.430 rows=5216 loops=1)
                                 Filter: (name ~~ '%Bert%'::text)
                                 Rows Removed by Filter: 4162275
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=121584.01..121584.01 rows=190 width=16) (actual time=16277.412..16277.412 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=1495270 read=69653
                     ->  Hash Join  (cost=61528.79..121584.01 rows=190 width=16) (actual time=4008.046..16218.699 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=1495270 read=69653
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=31.591..11596.244 rows=2609129 loops=1)
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=61528.77..61528.77 rows=34 width=8) (actual time=3935.236..3935.236 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=45072 read=43733
                                 ->  Hash Join  (cost=21874.18..61528.77 rows=34 width=8) (actual time=1163.889..3920.365 rows=41840 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=45072 read=43733
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=79.751..2807.088 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.894..1963.592 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.669..46.669 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.643..46.647 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=21496.93..21496.93 rows=2528312 width=4) (actual time=1057.836..1057.836 rows=2528312 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                             Buffers: shared hit=23436 read=6912
                                             ->  Index Only Scan using title_idx_id on title t  (cost=0.01..21496.93 rows=2528312 width=4) (actual time=16.864..381.893 rows=2528312 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=23436 read=6912
         ->  Hash  (cost=2623.65..2623.65 rows=234997 width=4) (actual time=147.203..147.204 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared read=847
               ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..2623.65 rows=234997 width=4) (actual time=11.119..97.007 rows=234997 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=847
 Planning Time: 5000.924 ms
 Execution Time: 78229.297 ms
(59 rows)

