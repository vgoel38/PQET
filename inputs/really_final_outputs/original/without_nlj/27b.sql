                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=11903.19..11903.19 rows=1 width=96) (actual time=12959.432..12959.432 rows=1 loops=1)
   Buffers: shared hit=285 read=221125
   ->  Hash Join  (cost=11048.75..11903.19 rows=1 width=48) (actual time=12940.142..12942.537 rows=247 loops=1)
         Hash Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=285 read=221125
         ->  Merge Join  (cost=11042.61..11897.05 rows=2 width=52) (actual time=12891.759..12893.766 rows=1919 loops=1)
               Merge Cond: (mk.movie_id = ml.movie_id)
               Buffers: shared hit=282 read=221121
               ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.036..108.209 rows=69431 loops=1)
                     Buffers: shared hit=261 read=567
               ->  Materialize  (cost=11042.60..11042.60 rows=1 width=68) (actual time=12765.151..12765.618 rows=1911 loops=1)
                     Buffers: shared hit=21 read=220554
                     ->  Sort  (cost=11042.60..11042.60 rows=1 width=68) (actual time=12765.136..12765.188 rows=247 loops=1)
                           Sort Key: t.id
                           Sort Method: quicksort  Memory: 59kB
                           Buffers: shared hit=21 read=220554
                           ->  Hash Join  (cost=2619.39..11042.60 rows=1 width=68) (actual time=11449.773..12752.637 rows=247 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=17 read=220554
                                 ->  Hash Join  (cost=2619.36..11042.57 rows=1 width=72) (actual time=11449.711..12752.448 rows=247 loops=1)
                                       Hash Cond: (ml.link_type_id = lt.id)
                                       Buffers: shared hit=16 read=220554
                                       ->  Hash Join  (cost=2619.33..11042.53 rows=1 width=64) (actual time=11449.635..12752.225 rows=247 loops=1)
                                             Hash Cond: (t.id = ml.movie_id)
                                             Buffers: shared hit=15 read=220554
                                             ->  Hash Join  (cost=2607.74..11030.90 rows=2 width=56) (actual time=3099.837..12710.354 rows=293 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=13 read=220393
                                                   ->  Hash Join  (cost=2607.71..11030.87 rows=7 width=60) (actual time=3099.802..12710.126 rows=359 loops=1)
                                                         Hash Cond: (cc.subject_id = cct.id)
                                                         Buffers: shared hit=12 read=220393
                                                         ->  Hash Join  (cost=2607.67..11030.83 rows=14 width=64) (actual time=3099.774..12709.877 rows=359 loops=1)
                                                               Hash Cond: (mi.movie_id = t.id)
                                                               Buffers: shared hit=11 read=220393
                                                               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=4) (actual time=26.833..9637.781 rows=134239 loops=1)
                                                                     Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                     Rows Removed by Filter: 14701481
                                                                     Buffers: shared hit=2 read=161890
                                                               ->  Hash  (cost=2607.64..2607.64 rows=262 width=60) (actual time=3047.635..3047.635 rows=728 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 76kB
                                                                     Buffers: shared hit=9 read=58503
                                                                     ->  Hash Join  (cost=1731.31..2607.64 rows=262 width=60) (actual time=2154.909..3047.022 rows=728 loops=1)
                                                                           Hash Cond: (t.id = cc.movie_id)
                                                                           Buffers: shared hit=9 read=58503
                                                                           ->  Hash Join  (cost=1679.21..2554.57 rows=4903 width=48) (actual time=1879.808..2940.943 rows=3118 loops=1)
                                                                                 Hash Cond: (mc.company_id = cn.id)
                                                                                 Buffers: shared hit=7 read=57774
                                                                                 ->  Hash Join  (cost=1507.10..2380.55 rows=23436 width=33) (actual time=1720.840..2777.986 rows=21191 loops=1)
                                                                                       Hash Cond: (mc.movie_id = t.id)
                                                                                       Buffers: shared hit=5 read=54782
                                                                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=1271989 width=12) (actual time=0.023..838.465 rows=1271989 loops=1)
                                                                                             Filter: (note IS NULL)
                                                                                             Rows Removed by Filter: 1337140
                                                                                             Buffers: shared hit=3 read=18786
                                                                                       ->  Hash  (cost=1500.26..1500.26 rows=46583 width=21) (actual time=1713.804..1713.804 rows=46583 loops=1)
                                                                                             Buckets: 65536  Batches: 1  Memory Usage: 2991kB
                                                                                             Buffers: shared hit=2 read=35996
                                                                                             ->  Seq Scan on title t  (cost=0.00..1500.26 rows=46583 width=21) (actual time=6.358..1676.445 rows=46583 loops=1)
                                                                                                   Filter: (production_year = 1998)
                                                                                                   Rows Removed by Filter: 2481729
                                                                                                   Buffers: shared hit=2 read=35996
                                                                                 ->  Hash  (cost=164.90..164.90 rows=49161 width=23) (actual time=155.875..155.875 rows=48302 loops=1)
                                                                                       Buckets: 65536  Batches: 1  Memory Usage: 3137kB
                                                                                       Buffers: shared hit=2 read=2992
                                                                                       ->  Seq Scan on company_name cn  (cost=0.00..164.90 rows=49161 width=23) (actual time=20.473..137.037 rows=48302 loops=1)
                                                                                             Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                                                             Rows Removed by Filter: 186695
                                                                                             Buffers: shared hit=2 read=2992
                                                                           ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=102.455..102.455 rows=135086 loops=1)
                                                                                 Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                 Buffers: shared hit=2 read=729
                                                                                 ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=0.175..57.379 rows=135086 loops=1)
                                                                                       Buffers: shared hit=2 read=729
                                                         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.009..0.009 rows=2 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=2 width=4) (actual time=0.005..0.006 rows=2 loops=1)
                                                                     Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                     Rows Removed by Filter: 2
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.007..0.008 rows=1 loops=1)
                                                               Filter: ((kind)::text = 'complete'::text)
                                                               Rows Removed by Filter: 3
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=7.19..7.19 rows=29997 width=8) (actual time=41.390..41.390 rows=29997 loops=1)
                                                   Buckets: 32768  Batches: 1  Memory Usage: 1428kB
                                                   Buffers: shared hit=2 read=161
                                                   ->  Seq Scan on movie_link ml  (cost=0.00..7.19 rows=29997 width=8) (actual time=0.011..24.050 rows=29997 loops=1)
                                                         Buffers: shared hit=2 read=161
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=16) (actual time=0.033..0.033 rows=2 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.010..0.022 rows=2 loops=1)
                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                   Rows Removed by Filter: 16
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.020 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
         ->  Hash  (cost=6.13..6.13 rows=1 width=4) (actual time=47.986..47.986 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=47.971..47.974 rows=1 loops=1)
                     Index Cond: (keyword = 'sequel'::text)
                     Buffers: shared read=4
 Planning Time: 11439.400 ms
 Execution Time: 12960.652 ms
(114 rows)

