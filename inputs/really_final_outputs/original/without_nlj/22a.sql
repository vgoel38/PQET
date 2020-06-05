                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13418.72..13418.72 rows=1 width=96) (actual time=13102.002..13102.002 rows=1 loops=1)
   Buffers: shared hit=28 read=252577
   ->  Hash Join  (cost=4955.45..13418.72 rows=1 width=42) (actual time=11827.284..13101.049 rows=2851 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=28 read=252577
         ->  Hash Join  (cost=4955.42..13418.69 rows=1 width=46) (actual time=11821.187..13100.302 rows=3027 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=24 read=252577
               ->  Hash Join  (cost=4955.39..13418.66 rows=1 width=50) (actual time=11821.170..13099.540 rows=3027 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=23 read=252577
                     ->  Hash Join  (cost=4808.45..13271.72 rows=1 width=35) (actual time=11675.348..12952.326 rows=3451 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=21 read=249585
                           ->  Hash Join  (cost=0.05..8462.63 rows=5910 width=4) (actual time=7033.404..8295.622 rows=588764 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=667885 width=8) (actual time=12.769..8149.092 rows=669336 loops=1)
                                       Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14166384
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.023..0.024 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.020 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4808.41..4808.41 rows=1 width=51) (actual time=4588.449..4588.450 rows=3634 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 322kB
                                 Buffers: shared hit=18 read=87695
                                 ->  Hash Join  (cost=3231.04..4808.41 rows=1 width=51) (actual time=2940.863..4585.901 rows=3634 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=18 read=87695
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=662066 width=25) (actual time=22.718..1624.517 rows=662065 loops=1)
                                             Filter: (production_year > 2008)
                                             Rows Removed by Filter: 1866247
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3231.04..3231.04 rows=1 width=26) (actual time=2764.931..2764.931 rows=52686 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3394kB
                                             Buffers: shared hit=17 read=51698
                                             ->  Hash Join  (cost=1782.38..3231.04 rows=1 width=26) (actual time=1624.302..2747.519 rows=52686 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=17 read=51698
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=59.659..1172.328 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=11 read=24461
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.017..503.515 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=59.488..59.488 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=34.538..59.465 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1757.65..1757.65 rows=1375 width=22) (actual time=1552.635..1552.635 rows=135012 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 8905kB
                                                         Buffers: shared hit=6 read=27237
                                                         ->  Hash Join  (cost=565.97..1757.65 rows=1375 width=22) (actual time=627.356..1510.574 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=6 read=27237
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.018..786.679 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=627.239..627.239 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=0.067..543.723 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=0.011..359.278 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.036..0.036 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.029..0.032 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=145.509..145.509 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=10.097..100.419 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.004 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.016..0.016 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.008..0.010 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared hit=1
 Planning Time: 9150.538 ms
 Execution Time: 13102.689 ms
(103 rows)

