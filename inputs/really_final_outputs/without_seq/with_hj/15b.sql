                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=707643.36..707643.36 rows=1 width=64) (actual time=34008.859..34008.859 rows=1 loops=1)
   Buffers: shared hit=2599091 read=309563
   ->  Hash Join  (cost=91204.11..707643.35 rows=4 width=59) (actual time=28886.373..34008.822 rows=37 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2599091 read=309563
         ->  Hash Join  (cost=89667.27..706106.52 rows=4 width=63) (actual time=28720.467..33842.885 rows=37 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2599088 read=309073
               ->  Hash Join  (cost=6.14..616445.39 rows=2 width=46) (actual time=12119.825..19393.682 rows=1771 loops=1)
                     Hash Cond: (mi.info_type_id = it1.id)
                     Buffers: shared hit=87582 read=202431
                     ->  Index Scan using info_type_id_movie_info on movie_info mi  (cost=0.01..616439.24 rows=260 width=50) (actual time=12089.659..19361.866 rows=1771 loops=1)
                           Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                           Rows Removed by Filter: 14833949
                           Buffers: shared hit=87582 read=202429
                     ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=30.110..30.110 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=2
                           ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=30.091..30.094 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'release dates'::text)
                                 Buffers: shared read=2
               ->  Hash  (cost=89661.13..89661.13 rows=4 width=37) (actual time=14448.306..14448.306 rows=292 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 28kB
                     Buffers: shared hit=2511506 read=106642
                     ->  Hash Join  (cost=49848.49..89661.13 rows=4 width=37) (actual time=11859.571..14448.172 rows=292 loops=1)
                           Hash Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=2511506 read=106642
                           ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=39.797..2088.340 rows=4523930 loops=1)
                                 Buffers: shared hit=21636 read=36817
                           ->  Hash  (cost=49848.48..49848.48 rows=1 width=29) (actual time=11620.987..11620.987 rows=26 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 10kB
                                 Buffers: shared hit=2489870 read=69825
                                 ->  Hash Join  (cost=26330.43..49848.48 rows=1 width=29) (actual time=3571.463..11620.924 rows=26 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=2489870 read=69825
                                       ->  Hash Join  (cost=26324.30..49842.35 rows=1 width=33) (actual time=3550.940..11600.338 rows=26 loops=1)
                                             Hash Cond: (t.id = at.movie_id)
                                             Buffers: shared hit=2489870 read=69823
                                             ->  Hash Join  (cost=23190.16..46708.20 rows=1 width=29) (actual time=2628.027..11429.095 rows=254 loops=1)
                                                   Hash Cond: (t.id = mc.movie_id)
                                                   Buffers: shared hit=2489870 read=68832
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=716259 width=21) (actual time=50.908..9428.995 rows=716259 loops=1)
                                                         Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                                         Rows Removed by Filter: 1812053
                                                         Buffers: shared hit=2489870 read=42908
                                                   ->  Hash  (cost=23190.14..23190.14 rows=1 width=8) (actual time=1897.371..1897.371 rows=278 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 19kB
                                                         Buffers: shared read=25924
                                                         ->  Hash Join  (cost=6.15..23190.14 rows=1 width=8) (actual time=105.841..1897.098 rows=278 loops=1)
                                                               Hash Cond: (mc.company_id = cn.id)
                                                               Buffers: shared read=25924
                                                               ->  Index Scan using company_type_id_movie_companies on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=32.845..1828.738 rows=61664 loops=1)
                                                                     Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                                     Rows Removed by Filter: 2547465
                                                                     Buffers: shared read=25920
                                                               ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=56.401..56.401 rows=1 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared read=4
                                                                     ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=56.386..56.389 rows=1 loops=1)
                                                                           Index Cond: (name = 'YouTube'::text)
                                                                           Filter: ((country_code)::text = '[us]'::text)
                                                                           Buffers: shared read=4
                                             ->  Hash  (cost=3081.09..3081.09 rows=361472 width=4) (actual time=166.774..166.774 rows=361472 loops=1)
                                                   Buckets: 524288  Batches: 1  Memory Usage: 16804kB
                                                   Buffers: shared read=991
                                                   ->  Index Only Scan using movie_id_aka_title on aka_title at  (cost=0.01..3081.09 rows=361472 width=4) (actual time=22.655..81.280 rows=361472 loops=1)
                                                         Heap Fetches: 0
                                                         Buffers: shared read=991
                                       ->  Hash  (cost=6.13..6.13 rows=4 width=4) (actual time=20.490..20.491 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=2
                                             ->  Index Only Scan using company_type_pkey on company_type ct  (cost=0.00..6.13 rows=4 width=4) (actual time=20.464..20.470 rows=4 loops=1)
                                                   Heap Fetches: 0
                                                   Buffers: shared read=2
         ->  Hash  (cost=1517.14..1517.14 rows=134170 width=4) (actual time=164.950..164.950 rows=134170 loops=1)
               Buckets: 262144  Batches: 1  Memory Usage: 6765kB
               Buffers: shared read=490
               ->  Index Only Scan using keyword_pkey on keyword k  (cost=0.01..1517.14 rows=134170 width=4) (actual time=96.577..137.733 rows=134170 loops=1)
                     Heap Fetches: 0
                     Buffers: shared read=490
 Planning Time: 8464.060 ms
 Execution Time: 34010.194 ms
(82 rows)

