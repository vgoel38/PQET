                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=882235.94..882235.94 rows=1 width=64) (actual time=78503.071..78503.071 rows=1 loops=1)
   Buffers: shared hit=7517342 read=495865
   ->  Hash Join  (cost=175056.57..882235.93 rows=65 width=15) (actual time=23421.483..78420.238 rows=258289 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=7517342 read=495865
         ->  Hash Join  (cost=48862.88..755693.82 rows=2991663 width=19) (actual time=6082.490..60160.785 rows=3118033 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=5790358 read=422372
               ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=51.858..44808.248 rows=36244344 loops=1)
                     Buffers: shared hit=1851757 read=351686
               ->  Hash  (cost=48812.37..48812.37 rows=343991 width=19) (actual time=4131.662..4131.662 rows=343399 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 21878kB
                     Buffers: shared hit=3938598 read=70686
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=343991 width=19) (actual time=162.164..4014.335 rows=343399 loops=1)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 3824092
                           Buffers: shared hit=3938598 read=70686
         ->  Hash  (cost=126193.68..126193.68 rows=68 width=12) (actual time=17338.855..17338.855 rows=68316 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3960kB
               Buffers: shared hit=1726984 read=73493
               ->  Hash Join  (cost=66138.44..126193.68 rows=68 width=12) (actual time=5144.923..17311.202 rows=68316 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=1726984 read=73493
                     ->  Hash Join  (cost=61528.79..121584.01 rows=190 width=16) (actual time=4399.132..16519.795 rows=148552 loops=1)
                           Hash Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=1495270 read=69653
                           ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=15.535..11521.505 rows=2609129 loops=1)
                                 Buffers: shared hit=1450198 read=25920
                           ->  Hash  (cost=61528.77..61528.77 rows=34 width=8) (actual time=4348.170..4348.170 rows=41840 loops=1)
                                 Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2147kB
                                 Buffers: shared hit=45072 read=43733
                                 ->  Hash Join  (cost=21874.18..61528.77 rows=34 width=8) (actual time=1370.773..4332.978 rows=41840 loops=1)
                                       Hash Cond: (mk.movie_id = t.id)
                                       Buffers: shared hit=45072 read=43733
                                       ->  Hash Join  (cost=6.15..39660.73 rows=34 width=4) (actual time=78.547..3011.122 rows=41840 loops=1)
                                             Hash Cond: (mk.keyword_id = k.id)
                                             Buffers: shared hit=21636 read=36821
                                             ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=31.713..2144.740 rows=4523930 loops=1)
                                                   Buffers: shared hit=21636 read=36817
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=46.642..46.642 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=4
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=46.627..46.630 rows=1 loops=1)
                                                         Index Cond: (keyword = 'character-name-in-title'::text)
                                                         Buffers: shared read=4
                                       ->  Hash  (cost=21496.93..21496.93 rows=2528312 width=4) (actual time=1278.021..1278.021 rows=2528312 loops=1)
                                             Buckets: 4194304  Batches: 1  Memory Usage: 121654kB
                                             Buffers: shared hit=23436 read=6912
                                             ->  Index Only Scan using title_idx_id on title t  (cost=0.01..21496.93 rows=2528312 width=4) (actual time=20.654..535.619 rows=2528312 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared hit=23436 read=6912
                     ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=744.908..744.908 rows=84843 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                           Buffers: shared hit=231714 read=3840
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=64.254..720.394 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231714 read=3840
 Planning Time: 4951.663 ms
 Execution Time: 78545.279 ms
(60 rows)

