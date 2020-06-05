                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=713457.34..713457.34 rows=1 width=64) (actual time=39008.276..39008.276 rows=1 loops=1)
   Buffers: shared hit=2830805 read=313399
   ->  Hash Join  (cost=95866.22..713457.34 rows=10 width=59) (actual time=31441.316..39006.932 rows=2271 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2830805 read=313399
         ->  Hash Join  (cost=94329.38..711920.50 rows=10 width=63) (actual time=31354.480..38918.648 rows=2271 loops=1)
               Hash Cond: (t.id = mk.movie_id)
               Buffers: shared hit=2830802 read=312909
               ->  Hash Join  (cost=54379.55..671970.66 rows=1 width=75) (actual time=27877.045..35440.308 rows=284 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2809166 read=276092
                     ->  Hash Join  (cost=54373.43..671964.53 rows=1 width=79) (actual time=27853.276..35416.302 rows=284 loops=1)
                           Hash Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=2809166 read=276090
                           ->  Hash Join  (cost=26635.36..644226.46 rows=1 width=71) (actual time=24786.763..32349.499 rows=120 loops=1)
                                 Hash Cond: (t.id = at.movie_id)
                                 Buffers: shared hit=2577452 read=246330
                                 ->  Hash Join  (cost=23501.21..641092.31 rows=2 width=67) (actual time=24580.792..32180.109 rows=1782 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=2577452 read=245339
                                       ->  Hash Join  (cost=6.14..617597.23 rows=3 width=46) (actual time=13420.957..21017.785 rows=1783 loops=1)
                                             Hash Cond: (mi.info_type_id = it1.id)
                                             Buffers: shared hit=87582 read=202431
                                             ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..617591.08 rows=328 width=50) (actual time=13390.875..20986.020 rows=1783 loops=1)
                                                   Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                   Rows Removed by Filter: 14833937
                                                   Buffers: shared hit=87582 read=202429
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=30.026..30.026 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=30.006..30.010 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'release dates'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=11142.782..11142.782 rows=1749032 loops=1)
                                             Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                             Buffers: shared hit=2489870 read=42908
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=37.968..10438.744 rows=1749032 loops=1)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 779280
                                                   Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=3081.09..3081.09 rows=361472 width=4) (actual time=163.994..163.994 rows=361472 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                       Buffers: shared read=991
                                       ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..3081.09 rows=361472 width=4) (actual time=22.978..80.262 rows=361472 loops=1)
                                             Heap Fetches: 0
                                             Buffers: shared read=991
                           ->  Hash  (cost=27599.80..27599.80 rows=941996 width=8) (actual time=3060.623..3060.623 rows=1153798 loops=1)
                                 Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                 Buffers: shared hit=231714 read=29760
                                 ->  Hash Join  (cost=4609.67..27599.80 rows=941996 width=8) (actual time=759.756..2643.848 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231714 read=29760
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=27.438..1088.701 rows=2609129 loops=1)
                                             Buffers: shared read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=731.290..731.290 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.580..705.540 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=23.750..23.750 rows=4 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=23.720..23.725 rows=4 loops=1)
                                 Heap Fetches: 0
                                 Buffers: shared read=2
               ->  Hash  (cost=39285.80..39285.80 rows=4523930 width=8) (actual time=3458.229..3458.229 rows=4523930 loops=1)
                     Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                     Buffers: shared hit=21636 read=36817
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=36.609..2256.494 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=84.810..84.810 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=11.899..55.271 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8483.149 ms
 Execution Time: 39033.478 ms
(80 rows)

