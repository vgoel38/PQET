                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=406290.08..406290.08 rows=1 width=64) (actual time=46321.413..46321.413 rows=1 loops=1)
   Buffers: shared hit=5821853 read=471976
   ->  Hash Join  (cost=87342.35..406290.06 rows=100 width=33) (actual time=46321.407..46321.407 rows=0 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=5821853 read=471976
         ->  Hash Join  (cost=87336.23..406283.92 rows=100 width=37) (actual time=46316.504..46316.504 rows=0 loops=1)
               Hash Cond: (ci.person_role_id = chn.id)
               Buffers: shared hit=5821850 read=471974
               ->  Hash Join  (cost=50880.38..369828.05 rows=205 width=25) (actual time=34818.466..34818.466 rows=0 loops=1)
                     Hash Cond: (ci.movie_id = t.id)
                     Buffers: shared hit=2721586 read=424356
                     ->  Hash Join  (cost=6.14..318939.94 rows=119151 width=8) (actual time=1845.053..22740.879 rows=13 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=2 read=351688
                           ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=1429807 width=12) (actual time=1825.685..22477.139 rows=1435439 loops=1)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34808905
                                 Buffers: shared hit=2 read=351686
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=19.334..19.334 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=19.304..19.308 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'actor'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=50873.89..50873.89 rows=2341 width=29) (actual time=12077.511..12077.511 rows=1259 loops=1)
                           Buckets: 4096  Batches: 1  Memory Usage: 108kB
                           Buffers: shared hit=2721584 read=72668
                           ->  Hash Join  (cost=27589.78..50873.89 rows=2341 width=29) (actual time=3223.857..12076.664 rows=1259 loops=1)
                                 Hash Cond: (t.id = mc.movie_id)
                                 Buffers: shared hit=2721584 read=72668
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=71.081..9526.958 rows=391666 loops=1)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 2136646
                                       Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=27587.55..27587.55 rows=15111 width=8) (actual time=2461.191..2461.191 rows=8790 loops=1)
                                       Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                       Buffers: shared hit=231714 read=29760
                                       ->  Hash Join  (cost=4597.41..27587.55 rows=15111 width=8) (actual time=722.658..2456.751 rows=8790 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=231714 read=29760
                                             ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=31.395..1231.702 rows=2609129 loops=1)
                                                   Buffers: shared read=25920
                                             ->  Hash  (cost=4597.20..4597.20 rows=1361 width=4) (actual time=690.596..690.596 rows=1361 loops=1)
                                                   Buckets: 2048  Batches: 1  Memory Usage: 64kB
                                                   Buffers: shared hit=231714 read=3840
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=1361 width=4) (actual time=191.537..690.041 rows=1361 loops=1)
                                                         Filter: ((country_code)::text = '[ru]'::text)
                                                         Rows Removed by Filter: 233636
                                                         Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11473.158..11473.158 rows=3140339 loops=1)
                     Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                     Buffers: shared hit=3100264 read=47618
                     ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=29.018..10313.585 rows=3140339 loops=1)
                           Buffers: shared hit=3100264 read=47618
         ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=4.842..4.842 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=2
               ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=4.816..4.821 rows=4 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=2
 Planning Time: 2285.765 ms
 Execution Time: 46345.758 ms
(62 rows)

