                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=372366.37..372366.37 rows=1 width=64) (actual time=1121380.873..1121380.874 rows=1 loops=1)
   Buffers: shared hit=28311975 read=398867
   ->  Hash Join  (cost=64572.86..372314.69 rows=332865 width=33) (actual time=1067814.023..1121380.773 rows=10 loops=1)
         Hash Cond: (ci.role_id = rt.id)
         Buffers: shared hit=28311975 read=398867
         ->  Hash Join  (cost=64566.74..372278.54 rows=332865 width=37) (actual time=1067807.661..1121374.378 rows=10 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=28311971 read=398866
               ->  Hash Join  (cost=64560.61..372236.61 rows=332865 width=41) (actual time=1067807.325..1121374.011 rows=10 loops=1)
                     Hash Cond: (ci.person_role_id = chn.id)
                     Buffers: shared hit=28311970 read=398865
                     ->  Nested Loop  (cost=28104.76..335724.84 rows=685892 width=29) (actual time=11549.903..1110070.112 rows=782104 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=25211700 read=351253
                           ->  Hash Join  (cost=28104.74..51171.67 rows=651653 width=29) (actual time=11436.535..16002.359 rows=596250 loops=1)
                                 Hash Cond: (mc.movie_id = t.id)
                                 Buffers: shared hit=2721597 read=72655
                                 ->  Hash Join  (cost=4609.67..27599.80 rows=941996 width=8) (actual time=762.787..4277.370 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231723 read=29751
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=21.042..1614.613 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=25917
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=741.039..741.039 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.037..715.842 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231720 read=3834
                                 ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=10668.875..10668.876 rows=1749032 loops=1)
                                       Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                       Buffers: shared hit=2489874 read=42904
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.019..9993.058 rows=1749032 loops=1)
                                             Filter: (production_year > 1990)
                                             Rows Removed by Filter: 779280
                                             Buffers: shared hit=2489874 read=42904
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.44 rows=1 width=12) (actual time=1.294..1.833 rows=1 loops=596250)
                                 Index Cond: (movie_id = mc.movie_id)
                                 Filter: (note ~~ '%(producer)%'::text)
                                 Rows Removed by Filter: 34
                                 Buffers: shared hit=22490103 read=278598
                     ->  Hash  (cost=35994.91..35994.91 rows=3140339 width=20) (actual time=11089.067..11089.067 rows=3140339 loops=1)
                           Buckets: 4194304  Batches: 1  Memory Usage: 198030kB
                           Buffers: shared hit=3100270 read=47612
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=20) (actual time=0.040..9978.554 rows=3140339 loops=1)
                                 Buffers: shared hit=3100270 read=47612
               ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=0.296..0.296 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1 read=1
                     ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=0.277..0.280 rows=4 loops=1)
                           Heap Fetches: 0
                           Buffers: shared hit=1 read=1
         ->  Hash  (cost=6.13..6.13 rows=12 width=4) (actual time=6.297..6.297 rows=12 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1 read=1
               ->  Index Only Scan using role_type_pkey on role_type rt  (cost=0.00..6.13 rows=12 width=4) (actual time=6.256..6.265 rows=12 loops=1)
                     Heap Fetches: 0
                     Buffers: shared hit=1 read=1
 Planning Time: 2935.479 ms
 Execution Time: 1121424.725 ms
(60 rows)

