                                                                                         QUERY PLAN                                                                                          
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=165052.60..165052.60 rows=1 width=64) (actual time=144754.654..144754.654 rows=1 loops=1)
   Buffers: shared hit=5843431 read=80792
   ->  Hash Join  (cost=28022.87..164769.84 rows=1820954 width=33) (actual time=12209.200..144569.943 rows=323005 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=5843431 read=80792
         ->  Nested Loop  (cost=4609.71..141208.23 rows=1820954 width=24) (actual time=950.012..133088.162 rows=323005 loops=1)
               Join Filter: (an1.person_id = n1.id)
               Buffers: shared hit=3353557 read=37888
               ->  Nested Loop  (cost=4609.70..113959.60 rows=1820954 width=32) (actual time=928.597..128244.208 rows=323005 loops=1)
                     Buffers: shared hit=2383544 read=36193
                     ->  Hash Join  (cost=4609.69..82794.24 rows=2094450 width=12) (actual time=928.577..123074.391 rows=285538 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1344515 read=30657
                           ->  Nested Loop  (cost=0.04..77711.66 rows=5801180 width=16) (actual time=106.096..121829.968 rows=794591 loops=1)
                                 Buffers: shared hit=1112792 read=26823
                                 ->  Nested Loop  (cost=0.02..29219.82 rows=3020362 width=8) (actual time=49.370..328.398 rows=276403 loops=1)
                                       Buffers: shared hit=1 read=2337
                                       ->  Index Scan using role_type_role_key on role_type rt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.033..0.034 rows=1 loops=1)
                                             Index Cond: ((role)::text = 'costume designer'::text)
                                             Buffers: shared hit=1 read=1
                                       ->  Index Scan using role_id_cast_info on cast_info ci  (cost=0.02..28985.88 rows=3294940 width=12) (actual time=49.297..224.759 rows=276403 loops=1)
                                             Index Cond: (role_id = rt.id)
                                             Buffers: shared read=2336
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.372..0.438 rows=3 loops=276403)
                                       Index Cond: (movie_id = ci.movie_id)
                                       Buffers: shared hit=1112791 read=24486
                           ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=821.384..821.384 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                 Buffers: shared hit=231720 read=3834
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.032..796.540 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=231720 read=3834
                     ->  Index Scan using person_id_aka_name on aka_name an1  (cost=0.01..0.01 rows=2 width=20) (actual time=0.015..0.017 rows=1 loops=285538)
                           Index Cond: (person_id = ci.person_id)
                           Buffers: shared hit=1039029 read=5536
               ->  Index Only Scan using name_pkey on name n1  (cost=0.01..0.01 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=323005)
                     Index Cond: (id = ci.person_id)
                     Heap Fetches: 0
                     Buffers: shared hit=970013 read=1695
         ->  Hash  (cost=23042.05..23042.05 rows=2528312 width=21) (actual time=11233.229..11233.229 rows=2528312 loops=1)
               Buckets: 4194304  Batches: 1  Memory Usage: 168636kB
               Buffers: shared hit=2489874 read=42904
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.041..10240.355 rows=2528312 loops=1)
                     Buffers: shared hit=2489874 read=42904
 Planning Time: 4511.248 ms
 Execution Time: 144777.467 ms
(47 rows)

