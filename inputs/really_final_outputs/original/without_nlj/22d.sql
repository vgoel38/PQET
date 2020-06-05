                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16821.27..16821.27 rows=1 width=96) (actual time=14366.192..14366.192 rows=1 loops=1)
   Buffers: shared hit=28 read=252577
   ->  Hash Join  (cost=4898.54..16821.27 rows=1 width=42) (actual time=12880.471..14327.445 rows=46281 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=28 read=252577
         ->  Hash Join  (cost=4898.51..16821.24 rows=1 width=46) (actual time=12880.433..14316.437 rows=46281 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=24 read=252577
               ->  Hash Join  (cost=0.05..11922.05 rows=6329 width=4) (actual time=7151.554..8508.522 rows=614251 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=26.534..8355.440 rows=716210 loops=1)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14119510
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.069 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.054 rows=1 loops=1)
                                 Filter: ((info)::text = 'countries'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=4898.46..4898.46 rows=1 width=62) (actual time=5706.037..5706.037 rows=56448 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5700kB
                     Buffers: shared hit=21 read=90687
                     ->  Hash Join  (cost=3280.23..4898.46 rows=1 width=62) (actual time=4004.550..5675.619 rows=56448 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=21 read=90687
                           ->  Hash Join  (cost=3280.20..4898.42 rows=2 width=66) (actual time=3997.882..5650.236 rows=61121 loops=1)
                                 Hash Cond: (t.id = mk.movie_id)
                                 Buffers: shared hit=20 read=90687
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=22.481..1375.475 rows=1012920 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=3280.20..3280.20 rows=5 width=41) (actual time=3953.457..3953.457 rows=196248 loops=1)
                                       Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 16176kB
                                       Buffers: shared hit=19 read=54690
                                       ->  Hash Join  (cost=1831.54..3280.20 rows=5 width=41) (actual time=2466.753..3885.309 rows=196248 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=19 read=54690
                                             ->  Hash Join  (cost=1684.61..3133.27 rows=8 width=26) (actual time=2322.994..3634.627 rows=314519 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=17 read=51698
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=57.574..1281.033 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=11 read=24461
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.007..575.801 rows=4523930 loops=1)
                                                               Buffers: shared hit=3 read=24451
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=57.426..57.426 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=32.466..57.407 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1655.86..1655.86 rows=28683 width=22) (actual time=2265.245..2265.245 rows=1330927 loops=1)
                                                         Buckets: 2097152 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 83971kB
                                                         Buffers: shared hit=6 read=27237
                                                         ->  Hash Join  (cost=580.27..1655.86 rows=28683 width=22) (actual time=638.228..1871.047 rows=1330927 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=6 read=27237
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.007..314.194 rows=2609129 loops=1)
                                                                     Buffers: shared hit=3 read=18786
                                                               ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=638.173..638.173 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=3 read=8451
                                                                     ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=0.038..531.613 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=3 read=8451
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=0.007..327.870 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared hit=2 read=8451
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                             ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=143.188..143.188 rows=126230 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=7.421..103.509 rows=126230 loops=1)
                                                         Filter: ((country_code)::text <> '[us]'::text)
                                                         Rows Removed by Filter: 108767
                                                         Buffers: shared hit=2 read=2992
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.013..0.013 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.008..0.009 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                       Rows Removed by Filter: 5
                                       Buffers: shared hit=1
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.013..0.013 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.005..0.006 rows=4 loops=1)
                     Buffers: shared hit=1
 Planning Time: 9361.645 ms
 Execution Time: 14367.560 ms
(101 rows)

