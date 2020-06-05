                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=498750.62..498750.62 rows=1 width=64) (actual time=53871.733..53871.734 rows=1 loops=1)
   Buffers: shared hit=8405230 read=508902
   ->  Hash Join  (cost=179938.11..498750.62 rows=1 width=33) (actual time=40572.145..53871.691 rows=62 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=8405230 read=508902
         ->  Hash Join  (cost=156524.95..475337.46 rows=1 width=24) (actual time=29728.557..43028.070 rows=62 loops=1)
               Hash Cond: (n1.id = an1.person_id)
               Buffers: shared hit=5915357 read=465994
               ->  Hash Join  (cost=113901.33..432713.84 rows=1 width=16) (actual time=28096.818..41396.310 rows=38 loops=1)
                     Hash Cond: (ci.movie_id = mc.movie_id)
                     Buffers: shared hit=5620512 read=452134
                     ->  Hash Join  (cost=49145.25..367957.73 rows=40 width=12) (actual time=14033.982..28203.091 rows=394 loops=1)
                           Hash Cond: (ci.role_id = rt.id)
                           Buffers: shared hit=3938600 read=422374
                           ->  Hash Join  (cost=49139.13..367951.57 rows=485 width=16) (actual time=5116.000..28185.805 rows=938 loops=1)
                                 Hash Cond: (ci.person_id = n1.id)
                                 Buffers: shared hit=3938600 read=422372
                                 ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..318804.85 rows=93269 width=12) (actual time=49.049..23942.032 rows=93095 loops=1)
                                       Filter: (note = '(voice: English version)'::text)
                                       Rows Removed by Filter: 36151249
                                       Buffers: shared hit=2 read=351686
                                 ->  Hash  (cost=49135.93..49135.93 rows=21680 width=4) (actual time=4221.070..4221.070 rows=20911 loops=1)
                                       Buckets: 32768  Batches: 1  Memory Usage: 992kB
                                       Buffers: shared hit=3938598 read=70686
                                       ->  Index Scan using name_pkey on name n1  (cost=0.01..49135.93 rows=21680 width=4) (actual time=30.452..4212.946 rows=20911 loops=1)
                                             Filter: ((name ~~ '%Yo%'::text) AND (name !~~ '%Yu%'::text))
                                             Rows Removed by Filter: 4146580
                                             Buffers: shared hit=3938598 read=70686
                           ->  Hash  (cost=6.12..6.12 rows=1 width=4) (actual time=17.093..17.093 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=2
                                 ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=17.078..17.081 rows=1 loops=1)
                                       Index Cond: ((role)::text = 'actress'::text)
                                       Buffers: shared read=2
                     ->  Hash  (cost=64756.01..64756.01 rows=458 width=4) (actual time=13193.001..13193.001 rows=48328 loops=1)
                           Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2212kB
                           Buffers: shared hit=1681912 read=29760
                           ->  Hash Join  (cost=4598.20..64756.01 rows=458 width=4) (actual time=11115.154..13176.772 rows=48328 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=1681912 read=29760
                                 ->  Index Scan using company_id_movie_companies on movie_companies mc  (cost=0.01..60156.52 rows=15927 width=8) (actual time=899.612..12384.678 rows=48897 loops=1)
                                       Filter: ((note ~~ '%(Japan)%'::text) AND (note !~~ '%(USA)%'::text))
                                       Rows Removed by Filter: 2560232
                                       Buffers: shared hit=1450198 read=25920
                                 ->  Hash  (cost=4597.20..4597.20 rows=6752 width=4) (actual time=772.060..772.060 rows=6752 loops=1)
                                       Buckets: 8192  Batches: 1  Memory Usage: 302kB
                                       Buffers: shared hit=231714 read=3840
                                       ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=6752 width=4) (actual time=179.856..769.459 rows=6752 loops=1)
                                             Filter: ((country_code)::text = '[jp]'::text)
                                             Rows Removed by Filter: 228245
                                             Buffers: shared hit=231714 read=3840
               ->  Hash  (cost=42491.32..42491.32 rows=901343 width=20) (actual time=1629.187..1629.187 rows=901343 loops=1)
                     Buckets: 1048576  Batches: 1  Memory Usage: 55915kB
                     Buffers: shared hit=294845 read=13860
                     ->  Index Scan using person_id_aka_name on aka_name an1  (cost=0.01..42491.32 rows=901343 width=20) (actual time=39.811..1230.776 rows=901343 loops=1)
                           Buffers: shared hit=294845 read=13860
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=10834.000..10834.000 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489870 read=42908
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=26.002..9801.802 rows=2528312 loops=1)
                     Buffers: shared hit=2489870 read=42908
 Planning Time: 4011.754 ms
 Execution Time: 53877.457 ms
(63 rows)

