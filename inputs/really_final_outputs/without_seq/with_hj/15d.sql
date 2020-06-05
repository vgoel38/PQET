                                                                                                    QUERY PLAN                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=715941.78..715941.78 rows=1 width=64) (actual time=37941.438..37941.438 rows=1 loops=1)
   Buffers: shared hit=3185572 read=319590
   ->  Hash Join  (cost=100652.40..715941.72 rows=414 width=38) (actual time=30350.060..37919.914 rows=11347 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=3185572 read=319590
         ->  Hash Join  (cost=99115.57..714404.85 rows=414 width=42) (actual time=30253.749..37817.207 rows=11347 loops=1)
               Hash Cond: (t.id = mk.movie_id)
               Buffers: shared hit=3185569 read=319100
               ->  Hash Join  (cost=59165.74..674454.34 rows=30 width=54) (actual time=26998.730..34558.106 rows=875 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=3163933 read=282283
                     ->  Hash Join  (cost=59159.61..674448.22 rows=30 width=58) (actual time=26978.672..34537.398 rows=875 loops=1)
                           Hash Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=3163933 read=282281
                           ->  Hash Join  (cost=31421.54..646710.11 rows=27 width=50) (actual time=23971.152..31570.967 rows=584 loops=1)
                                 Hash Cond: (t.id = at.movie_id)
                                 Buffers: shared hit=2932219 read=252521
                                 ->  Hash Join  (cost=23501.21..638789.52 rows=68 width=25) (actual time=22470.270..30063.692 rows=10662 loops=1)
                                       Hash Cond: (mi.movie_id = t.id)
                                       Buffers: shared hit=2577452 read=245339
                                       ->  Hash Join  (cost=6.14..615294.44 rows=98 width=4) (actual time=11813.366..19394.795 rows=10679 loops=1)
                                             Hash Cond: (mi.info_type_id = it.id)
                                             Buffers: shared hit=87582 read=202431
                                             ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..615287.40 rows=11124 width=8) (actual time=4018.019..19349.396 rows=10810 loops=1)
                                                   Filter: (note ~~ '%internet%'::text)
                                                   Rows Removed by Filter: 14824910
                                                   Buffers: shared hit=87582 read=202429
                                             ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=38.364..38.364 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared read=2
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=38.343..38.347 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'release dates'::text)
                                                         Buffers: shared read=2
                                       ->  Hash  (cost=23238.35..23238.35 rows=1749033 width=21) (actual time=10642.751..10642.751 rows=1749032 loops=1)
                                             Buckets: 2097152  Batches: 1  Memory Usage: 110019kB
                                             Buffers: shared hit=2489870 read=42908
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=66.815..9983.127 rows=1749032 loops=1)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 779280
                                                   Buffers: shared hit=2489870 read=42908
                                 ->  Hash  (cost=7867.28..7867.28 rows=361472 width=25) (actual time=1499.255..1499.255 rows=361472 loops=1)
                                       Buckets: 524288  Batches: 1  Memory Usage: 25054kB
                                       Buffers: shared hit=354767 read=7182
                                       ->  Index Scan using movie_id_aka_title on aka_title at  (cost=0.01..7867.28 rows=361472 width=25) (actual time=35.855..1379.906 rows=361472 loops=1)
                                             Buffers: shared hit=354767 read=7182
                           ->  Hash  (cost=27599.80..27599.80 rows=941996 width=8) (actual time=2957.744..2957.744 rows=1153798 loops=1)
                                 Buckets: 2097152 (originally 1048576)  Batches: 1 (originally 1)  Memory Usage: 61455kB
                                 Buffers: shared hit=231714 read=29760
                                 ->  Hash Join  (cost=4609.67..27599.80 rows=941996 width=8) (actual time=764.459..2555.518 rows=1153798 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=231714 read=29760
                                       ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=38.765..1023.800 rows=2609129 loops=1)
                                             Buffers: shared read=25920
                                       ->  Hash  (cost=4597.20..4597.20 rows=84843 width=4) (actual time=724.684..724.685 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 4007kB
                                             Buffers: shared hit=231714 read=3840
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=45.594..700.091 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=231714 read=3840
                     ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=20.033..20.033 rows=4 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=20.014..20.019 rows=4 loops=1)
                                 Heap Fetches: 0
                                 Buffers: shared read=2
               ->  Hash  (cost=39285.80..39285.80 rows=4523930 width=8) (actual time=3235.398..3235.398 rows=4523930 loops=1)
                     Buckets: 8388608  Batches: 1  Memory Usage: 242253kB
                     Buffers: shared hit=21636 read=36817
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=35.067..2078.607 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=94.263..94.263 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=20.220..64.350 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8641.425 ms
 Execution Time: 38016.919 ms
(79 rows)

