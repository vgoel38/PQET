                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13419.06..13419.06 rows=1 width=96) (actual time=13150.394..13150.395 rows=1 loops=1)
   Buffers: shared hit=28 read=252577
   ->  Hash Join  (cost=4955.45..13419.06 rows=1 width=42) (actual time=11874.056..13149.453 rows=2851 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=28 read=252577
         ->  Hash Join  (cost=4955.42..13419.03 rows=1 width=46) (actual time=11869.121..13148.694 rows=3027 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=24 read=252577
               ->  Hash Join  (cost=4955.39..13419.00 rows=1 width=50) (actual time=11869.102..13147.931 rows=3027 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=23 read=252577
                     ->  Hash Join  (cost=4808.45..13272.06 rows=1 width=35) (actual time=11720.634..12998.069 rows=3451 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=21 read=249585
                           ->  Hash Join  (cost=0.05..8462.97 rows=5947 width=4) (actual time=7067.770..8333.120 rows=588764 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=671970 width=8) (actual time=13.451..8184.682 rows=669336 loops=1)
                                       Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14166384
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.024..0.061 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=4808.41..4808.41 rows=1 width=51) (actual time=4595.842..4595.842 rows=3634 loops=1)
                                 Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 322kB
                                 Buffers: shared hit=18 read=87695
                                 ->  Hash Join  (cost=3231.04..4808.41 rows=1 width=51) (actual time=2922.846..4592.854 rows=3634 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=18 read=87695
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=662066 width=25) (actual time=21.671..1629.287 rows=662065 loops=1)
                                             Filter: (production_year > 2008)
                                             Rows Removed by Filter: 1866247
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=3231.04..3231.04 rows=1 width=26) (actual time=2749.252..2749.252 rows=52686 loops=1)
                                             Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 3394kB
                                             Buffers: shared hit=17 read=51698
                                             ->  Hash Join  (cost=1782.38..3231.04 rows=1 width=26) (actual time=1615.966..2731.836 rows=52686 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=17 read=51698
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=59.710..1164.326 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=11 read=24461
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.032..496.892 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=59.528..59.528 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=34.580..59.506 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1757.65..1757.65 rows=1375 width=22) (actual time=1544.958..1544.958 rows=135012 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 8905kB
                                                         Buffers: shared hit=6 read=27237
                                                         ->  Hash Join  (cost=565.97..1757.65 rows=1375 width=22) (actual time=625.848..1503.180 rows=135012 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=6 read=27237
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.024..781.861 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=564.45..564.45 rows=10379 width=10) (actual time=625.678..625.678 rows=324117 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 16757kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..564.45 rows=10379 width=10) (actual time=0.110..541.114 rows=324117 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it2.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1172842 width=14) (actual time=0.015..357.142 rows=1172832 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207203
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.061..0.062 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.049..0.055 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=148.155..148.155 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared hit=2 read=2992
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=12.794..101.482 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared hit=2 read=2992
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.006..0.006 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.003..0.004 rows=4 loops=1)
                           Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.017..0.017 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.009..0.011 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared hit=1
 Planning Time: 9456.298 ms
 Execution Time: 13151.582 ms
(103 rows)

