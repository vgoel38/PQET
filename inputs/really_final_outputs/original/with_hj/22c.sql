                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16933.39..16933.39 rows=1 width=96) (actual time=13684.184..13684.185 rows=1 loops=1)
   Buffers: shared hit=12 read=252593
   ->  Hash Join  (cost=5010.65..16933.39 rows=1 width=42) (actual time=12150.922..13655.493 rows=21489 loops=1)
         Hash Cond: (t.kind_id = kt.id)
         Buffers: shared hit=12 read=252593
         ->  Hash Join  (cost=5010.62..16933.36 rows=1 width=46) (actual time=12086.182..13628.561 rows=23197 loops=1)
               Hash Cond: (mc.company_type_id = ct.id)
               Buffers: shared hit=9 read=252592
               ->  Hash Join  (cost=5010.59..16933.32 rows=1 width=50) (actual time=12079.077..13615.575 rows=23197 loops=1)
                     Hash Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=9 read=252591
                     ->  Hash Join  (cost=4863.65..16786.39 rows=1 width=35) (actual time=11921.998..13449.140 rows=25309 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=9 read=249597
                           ->  Hash Join  (cost=0.05..11922.05 rows=6329 width=4) (actual time=7108.284..8539.758 rows=614251 loops=1)
                                 Hash Cond: (mi.info_type_id = it.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=16.522..8358.070 rows=716210 loops=1)
                                       Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                       Rows Removed by Filter: 14119510
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.849..20.850 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.800..20.838 rows=1 loops=1)
                                             Filter: ((info)::text = 'countries'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=4863.60..4863.60 rows=1 width=51) (actual time=4813.605..4813.605 rows=27833 loops=1)
                                 Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2464kB
                                 Buffers: shared hit=9 read=87704
                                 ->  Hash Join  (cost=3245.38..4863.60 rows=1 width=51) (actual time=2906.248..4794.505 rows=27833 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=9 read=87704
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=22.443..1601.664 rows=1012920 loops=1)
                                             Filter: (production_year > 2005)
                                             Rows Removed by Filter: 1515392
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3245.38..3245.38 rows=1 width=26) (actual time=2872.872..2872.872 rows=83144 loops=1)
                                             Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5571kB
                                             Buffers: shared hit=9 read=51706
                                             ->  Hash Join  (cost=1796.72..3245.38 rows=1 width=26) (actual time=1731.934..2846.196 rows=83144 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=9 read=51706
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=67.997..1151.867 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=8 read=24464
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.332..487.638 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.501..63.501 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.548..63.479 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1771.96..1771.96 rows=1575 width=22) (actual time=1663.894..1663.894 rows=204359 loops=1)
                                                         Buckets: 262144 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 12426kB
                                                         Buffers: shared hit=1 read=27242
                                                         ->  Hash Join  (cost=580.27..1771.96 rows=1575 width=22) (actual time=716.286..1601.841 rows=204359 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=27242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=20.080..792.979 rows=303271 loops=1)
                                                                     Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                     Rows Removed by Filter: 2305858
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=696.031..696.031 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=27.153..581.491 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=27.042..360.645 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.068 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.060 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                     ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=156.056..156.056 rows=126230 loops=1)
                           Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                           Buffers: shared read=2994
                           ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=20.270..111.226 rows=126230 loops=1)
                                 Filter: ((country_code)::text <> '[us]'::text)
                                 Rows Removed by Filter: 108767
                                 Buffers: shared read=2994
               ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=7.063..7.063 rows=4 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=7.045..7.050 rows=4 loops=1)
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=21.195..21.196 rows=2 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=21.169..21.177 rows=2 loops=1)
                     Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                     Rows Removed by Filter: 5
                     Buffers: shared read=1
 Planning Time: 8461.280 ms
 Execution Time: 13685.217 ms
(103 rows)

