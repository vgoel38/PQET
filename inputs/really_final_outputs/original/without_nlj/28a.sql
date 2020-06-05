                                                                                                                  QUERY PLAN                                                                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17100.04..17100.04 rows=1 width=96) (actual time=13230.437..13230.437 rows=1 loops=1)
   Buffers: shared hit=33 read=253305
   ->  Hash Join  (cost=5153.71..17100.04 rows=1 width=42) (actual time=11920.180..13228.824 rows=4803 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=33 read=253305
         ->  Hash Join  (cost=5153.68..17100.01 rows=1 width=46) (actual time=11920.138..13227.632 rows=4803 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=29 read=253305
               ->  Hash Join  (cost=5006.74..16953.07 rows=1 width=31) (actual time=11768.014..13073.478 rows=4955 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=27 read=250313
                     ->  Hash Join  (cost=3810.82..15757.14 rows=1 width=43) (actual time=10858.951..12163.280 rows=432 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=24 read=231527
                           ->  Hash Join  (cost=3810.77..15757.09 rows=1 width=47) (actual time=3718.535..12163.019 rows=481 loops=1)
                                 Hash Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=23 read=231527
                                 ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=14.389..8421.122 rows=716210 loops=1)
                                       Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14119510
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=3810.77..3810.77 rows=1 width=39) (actual time=3655.117..3655.117 rows=473 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 40kB
                                       Buffers: shared hit=21 read=69637
                                       ->  Hash Join  (cost=3186.59..3810.77 rows=1 width=39) (actual time=3083.162..3654.825 rows=473 loops=1)
                                             Hash Cond: (t.kind_id = kt.id)
                                             Buffers: shared hit=21 read=69637
                                             ->  Hash Join  (cost=3186.56..3810.74 rows=1 width=43) (actual time=3083.101..3654.531 rows=525 loops=1)
                                                   Hash Cond: (cc.status_id = cct.id)
                                                   Buffers: shared hit=20 read=69637
                                                   ->  Hash Join  (cost=3186.53..3810.70 rows=1 width=47) (actual time=3083.049..3654.241 rows=596 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=19 read=69637
                                                         ->  Hash Join  (cost=3186.48..3810.66 rows=3 width=51) (actual time=3082.954..3653.738 rows=1864 loops=1)
                                                               Hash Cond: (mi_idx.movie_id = t.id)
                                                               Buffers: shared hit=18 read=69637
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.014..444.281 rows=1343555 loops=1)
                                                                     Filter: (info < '8.5'::text)
                                                                     Rows Removed by Filter: 36480
                                                                     Buffers: shared hit=2 read=8451
                                                               ->  Hash  (cost=3186.48..3186.48 rows=5 width=37) (actual time=3024.286..3024.286 rows=680 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 54kB
                                                                     Buffers: shared hit=16 read=61186
                                                                     ->  Hash Join  (cost=1525.33..3186.48 rows=5 width=37) (actual time=1363.578..3023.473 rows=680 loops=1)
                                                                           Hash Cond: (t.id = mk.movie_id)
                                                                           Buffers: shared hit=16 read=61186
                                                                           ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=7.780..1388.569 rows=1381453 loops=1)
                                                                                 Filter: (production_year > 2000)
                                                                                 Rows Removed by Filter: 1146859
                                                                                 Buffers: shared hit=2 read=35996
                                                                           ->  Hash  (cost=1525.33..1525.33 rows=10 width=12) (actual time=1302.981..1302.981 rows=6216 loops=1)
                                                                                 Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 332kB
                                                                                 Buffers: shared hit=14 read=25190
                                                                                 ->  Hash Join  (cost=76.66..1525.33 rows=10 width=12) (actual time=170.420..1300.721 rows=6216 loops=1)
                                                                                       Hash Cond: (cc.subject_id = cct.id)
                                                                                       Buffers: shared hit=14 read=25190
                                                                                       ->  Hash Join  (cost=76.63..1525.30 rows=41 width=16) (actual time=166.866..1296.840 rows=20024 loops=1)
                                                                                             Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                             Buffers: shared hit=13 read=25190
                                                                                             ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=59.577..1201.667 rows=37091 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=11 read=24461
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.011..525.835 rows=4523930 loops=1)
                                                                                                         Buffers: shared hit=3 read=24451
                                                                                                   ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=59.413..59.413 rows=3 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=8 read=10
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=34.473..59.391 rows=3 loops=1)
                                                                                                               Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                               Buffers: shared hit=8 read=10
                                                                                             ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=78.744..78.744 rows=135086 loops=1)
                                                                                                   Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                   Buffers: shared hit=2 read=729
                                                                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=3.530..37.316 rows=135086 loops=1)
                                                                                                         Buffers: shared hit=2 read=729
                                                                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.017..0.019 rows=1 loops=1)
                                                                                                   Filter: ((kind)::text = 'crew'::text)
                                                                                                   Rows Removed by Filter: 3
                                                                                                   Buffers: shared hit=1
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.055..0.056 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.041..0.045 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.021..0.021 rows=3 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.008..0.011 rows=3 loops=1)
                                                               Filter: ((kind)::text <> 'complete+verified'::text)
                                                               Rows Removed by Filter: 1
                                                               Buffers: shared hit=1
                                             ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.032..0.032 rows=2 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.012..0.017 rows=2 loops=1)
                                                         Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                         Rows Removed by Filter: 5
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.031 rows=1 loops=1)
                                       Filter: ((info)::text = 'countries'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=908.432..908.432 rows=303271 loops=1)
                           Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                           Buffers: shared hit=3 read=18786
                           ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.012..812.080 rows=303271 loops=1)
                                 Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                 Rows Removed by Filter: 2305858
                                 Buffers: shared hit=3 read=18786
               ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=151.807..151.807 rows=126230 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                     Buffers: shared hit=2 read=2992
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=16.439..106.551 rows=126230 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 108767
                           Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.016..0.016 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.005..0.006 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 15135.359 ms
 Execution Time: 13231.609 ms
(131 rows)

