                                                                                                                     QUERY PLAN                                                                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17096.06..17096.06 rows=1 width=96) (actual time=13155.125..13155.126 rows=1 loops=1)
   Buffers: shared hit=33 read=253305
   ->  Hash Join  (cost=5149.37..17096.06 rows=1 width=42) (actual time=11858.308..13153.570 rows=4803 loops=1)
         Hash Cond: (mi.info_type_id = it1.id)
         Buffers: shared hit=33 read=253305
         ->  Hash Join  (cost=5149.32..17096.01 rows=1 width=46) (actual time=4757.633..13152.234 rows=5295 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=29 read=253305
               ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=718252 width=8) (actual time=23.804..8358.424 rows=716210 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14119510
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=5149.32..5149.32 rows=1 width=62) (actual time=4707.276..4707.276 rows=4410 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 470kB
                     Buffers: shared hit=27 read=91415
                     ->  Hash Join  (cost=3957.74..5149.32 rows=1 width=62) (actual time=3848.586..4705.259 rows=4410 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=27 read=91415
                           ->  Hash Join  (cost=3810.80..5002.38 rows=1 width=47) (actual time=3707.180..4561.459 rows=4535 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=25 read=88423
                                 ->  Hash Join  (cost=3810.77..5002.35 rows=1 width=51) (actual time=3707.154..4559.962 rows=4535 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=24 read=88423
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.008..863.251 rows=303271 loops=1)
                                             Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                             Rows Removed by Filter: 2305858
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=3810.77..3810.77 rows=1 width=39) (actual time=3653.032..3653.032 rows=473 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 40kB
                                             Buffers: shared hit=21 read=69637
                                             ->  Hash Join  (cost=3186.59..3810.77 rows=1 width=39) (actual time=3080.566..3652.737 rows=473 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=21 read=69637
                                                   ->  Hash Join  (cost=3186.54..3810.72 rows=1 width=43) (actual time=3080.531..3652.347 rows=1499 loops=1)
                                                         Hash Cond: (mi_idx.movie_id = t.id)
                                                         Buffers: shared hit=20 read=69637
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.008..448.664 rows=1343555 loops=1)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 36480
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=3186.54..3186.54 rows=1 width=29) (actual time=3025.015..3025.015 rows=549 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 41kB
                                                               Buffers: shared hit=18 read=61186
                                                               ->  Hash Join  (cost=1525.40..3186.54 rows=1 width=29) (actual time=1359.024..3024.379 rows=549 loops=1)
                                                                     Hash Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=18 read=61186
                                                                     ->  Hash Join  (cost=1525.37..3186.51 rows=4 width=33) (actual time=1359.004..3023.777 rows=609 loops=1)
                                                                           Hash Cond: (t.id = mk.movie_id)
                                                                           Buffers: shared hit=17 read=61186
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=6.436..1390.809 rows=1381453 loops=1)
                                                                                 Filter: (production_year > 2000)
                                                                                 Rows Removed by Filter: 1146859
                                                                                 Buffers: shared hit=2 read=35996
                                                                           ->  Hash  (cost=1525.37..1525.37 rows=8 width=8) (actual time=1304.931..1304.931 rows=3832 loops=1)
                                                                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 182kB
                                                                                 Buffers: shared hit=15 read=25190
                                                                                 ->  Hash Join  (cost=76.69..1525.37 rows=8 width=8) (actual time=178.761..1303.554 rows=3832 loops=1)
                                                                                       Hash Cond: (cc.status_id = cct2.id)
                                                                                       Buffers: shared hit=15 read=25190
                                                                                       ->  Hash Join  (cost=76.66..1525.33 rows=10 width=12) (actual time=178.697..1301.843 rows=6216 loops=1)
                                                                                             Hash Cond: (cc.subject_id = cct1.id)
                                                                                             Buffers: shared hit=14 read=25190
                                                                                             ->  Hash Join  (cost=76.63..1525.30 rows=41 width=16) (actual time=175.126..1298.179 rows=20024 loops=1)
                                                                                                   Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                                   Buffers: shared hit=13 read=25190
                                                                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=67.881..1200.659 rows=37091 loops=1)
                                                                                                         Hash Cond: (mk.keyword_id = k.id)
                                                                                                         Buffers: shared hit=11 read=24461
                                                                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.010..517.676 rows=4523930 loops=1)
                                                                                                               Buffers: shared hit=3 read=24451
                                                                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=67.704..67.704 rows=3 loops=1)
                                                                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                               Buffers: shared hit=8 read=10
                                                                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=42.752..67.679 rows=3 loops=1)
                                                                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                                     Buffers: shared hit=8 read=10
                                                                                                   ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=80.428..80.429 rows=135086 loops=1)
                                                                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                         Buffers: shared hit=2 read=729
                                                                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=2.976..38.312 rows=135086 loops=1)
                                                                                                               Buffers: shared hit=2 read=729
                                                                                             ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=1
                                                                                                   ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.010 rows=1 loops=1)
                                                                                                         Filter: ((kind)::text = 'crew'::text)
                                                                                                         Rows Removed by Filter: 3
                                                                                                         Buffers: shared hit=1
                                                                                       ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.028..0.029 rows=3 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.014..0.019 rows=3 loops=1)
                                                                                                   Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                                   Rows Removed by Filter: 1
                                                                                                   Buffers: shared hit=1
                                                                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.009..0.009 rows=2 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.005..0.007 rows=2 loops=1)
                                                                                 Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                                 Rows Removed by Filter: 5
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.017 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.009..0.009 rows=4 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.007 rows=4 loops=1)
                                             Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=140.394..140.394 rows=126230 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=4.963..94.963 rows=126230 loops=1)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 108767
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.020 rows=1 loops=1)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared hit=1
 Planning Time: 14769.584 ms
 Execution Time: 13155.918 ms
(131 rows)

