                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=409036.52..409036.52 rows=1 width=64) (actual time=44921.806..44921.806 rows=1 loops=1)
   Buffers: shared hit=5821853 read=471976
   ->  Hash Join  (cost=87415.51..409036.52 rows=4 width=33) (actual time=21125.890..44921.349 rows=104 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=5821853 read=471976
         ->  Hash Join  (cost=87409.38..409030.40 rows=4 width=37) (actual time=21120.986..44916.272 rows=104 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=5821850 read=471974
               ->  Hash Join  (cost=50953.53..372574.54 rows=8 width=25) (actual time=12028.783..35823.830 rows=112 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=2721586 read=424356
                     ->  Hash Join  (cost=6.14..321626.94 rows=1819 width=8) (actual time=92.769..24020.768 rows=25874 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=2 read=351688
                           ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..321618.85 rows=21830 width=12) (actual time=72.333..23983.773 rows=32288 loops=1)
                                 Filter: ((note ~~ '%(voice)%'::text) AND (note ~~ '%(uncredited)%'::text))
                                 Rows Removed by Filter: 36212056
                                 Buffers: shared hit=2 read=351686
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=20.388..20.389 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=20.367..20.370 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'actor'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=50946.50..50946.50 rows=6054 width=29) (actual time=11793.096..11793.096 rows=4539 loops=1)
                           Buckets: 8192  Batches: 1  Memory Usage: 339kB
                           Buffers: shared hit=2721584 read=72668
                           ->  Hash Join  (cost=27589.78..50946.50 rows=6054 width=29) (actual time=3054.221..11790.692 rows=4539 loops=1)
                                 Hash Cond: (t.id = mc.movie_id)
                                 Buffers: shared hit=2721584 read=72668
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=36.400..9182.733 rows=1012920 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=27587.55..27587.55 rows=15111 width=8) (actual time=2417.010..2417.010 rows=8790 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared hit=231714 read=29760
                                       ->  Hash Join  (cost=4597.41..27587.55 rows=15111 width=8) (actual time=729.198..2412.836 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=231714 read=29760
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=32.720..1192.074 rows=2609129 loops=1)
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=4597.20..4597.20 rows=1361 width=4) (actual time=695.801..695.801 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=34.010..695.236 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=9068.092..9068.092 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=3100264 read=47618
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=29.796..7981.959 rows=3140339 loops=1)
                           Buffers: shared hit=3100264 read=47618
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=4.838..4.838 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=4.810..4.814 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 2515.326 ms
 Execution Time: 44942.536 ms
(62 rows)

