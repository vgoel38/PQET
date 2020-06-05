                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=879927.35..879927.35 rows=1 width=64) (actual time=77969.942..77969.942 rows=1 loops=1)
   Buffers: shared hit=7285628 read=492872
   ->  Hash Join  (cost=173059.86..879927.34 rows=19 width=15) (actual time=61219.749..77942.767 rows=52306 loops=1)
         Hash Cond: (mc.company_id = cn.id)
         Buffers: shared hit=7285628 read=492872
         ->  Hash Join  (cost=170401.72..877269.20 rows=19 width=19) (actual time=61032.724..77718.309 rows=52306 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=7285625 read=492025
               ->  Hash Join  (cost=48817.68..755648.63 rows=313707 width=19) (actual time=44169.543..60731.292 rows=268710 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=48.085..46419.866 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=36071 width=19) (actual time=4061.022..4061.022 rows=36174 loops=1)
                           Buckets: 65536  Batches: 1  Memory Usage: 2381kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=36071 width=19) (actual time=1791.706..4048.554 rows=36174 loops=1)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 4131317
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=121584.01..121584.01 rows=190 width=16) (actual time=16863.123..16863.123 rows=148552 loops=1)
                     Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 9012kB
                     Buffers: shared hit=1495270 read=69653
                     ->  Hash Join  (cost=61528.79..121584.01 rows=190 width=16) (actual time=4152.098..16799.670 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=1495270 read=69653
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=25.641..12008.383 rows=2609129 loops=1)
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=61528.77..61528.77 rows=34 width=8) (actual time=4094.651..4094.651 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=45072 read=43733
                                 ->  Hash Join  (cost=21874.18..61528.77 rows=34 width=8) (actual time=1160.601..4077.708 rows=41840 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=45072 read=43733
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=79.717..2967.083 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=32.882..2083.909 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.640..46.640 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.621..46.625 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=21496.93..21496.93 rows=2528312 width=4) (actual time=1053.909..1053.909 rows=2528312 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                             Buffers: shared hit=23436 read=6912
                                             ->  Index Only Scan using title_idx_id on title t  (cost=0.01..21496.93 rows=2528312 width=4) (actual time=16.209..378.598 rows=2528312 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=23436 read=6912
         ->  Hash  (cost=2623.65..2623.65 rows=234997 width=4) (actual time=184.996..184.996 rows=234997 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 10310kB
               Buffers: shared read=847
               ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..2623.65 rows=234997 width=4) (actual time=52.818..133.514 rows=234997 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=847
 Planning Time: 4963.033 ms
 Execution Time: 78008.894 ms
(59 rows)

