                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=16821.27..16821.27 rows=1 width=96) (actual time=14770.582..14770.582 rows=1 loops=1)
   Buffers: shared hit=12 read=252593
   ->  Hash Join  (cost=4898.54..16821.27 rows=1 width=42) (actual time=13149.116..14732.619 rows=46281 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=12 read=252593
         ->  Hash Join  (cost=4898.51..16821.24 rows=1 width=46) (actual time=13091.668..14663.421 rows=46281 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=9 read=252592
               ->  Hash Join  (cost=0.05..11922.05 rows=6329 width=4) (actual time=7256.675..8748.126 rows=614251 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=32.032..8564.227 rows=716210 loops=1)
                           Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                           Rows Removed by Filter: 14119510
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=20.760..20.760 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=20.705..20.742 rows=1 loops=1)
                                 Filter: ((info)::text = 'countries'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=4898.46..4898.46 rows=1 width=62) (actual time=5806.160..5806.160 rows=56448 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 5700kB
                     Buffers: shared hit=9 read=90699
                     ->  Hash Join  (cost=3280.23..4898.46 rows=1 width=62) (actual time=3887.496..5772.337 rows=56448 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=9 read=90699
                           ->  Hash Join  (cost=3280.20..4898.42 rows=2 width=66) (actual time=3870.670..5734.109 rows=61121 loops=1)
                                 Hash Cond: (t.id = mk.movie_id)
                                 Buffers: shared hit=9 read=90698
                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=20.393..1539.897 rows=1012920 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1515392
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=3280.20..3280.20 rows=5 width=41) (actual time=3842.594..3842.594 rows=196248 loops=1)
                                       Buckets: 262144 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 16176kB
                                       Buffers: shared hit=9 read=54700
                                       ->  Hash Join  (cost=1831.54..3280.20 rows=5 width=41) (actual time=2574.698..3779.771 rows=196248 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=9 read=54700
                                             ->  Hash Join  (cost=1684.61..3133.27 rows=8 width=26) (actual time=2431.073..3536.045 rows=314519 loops=1)
                                                   Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                   Buffers: shared hit=9 read=51706
                                                   ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=74.353..1096.443 rows=37091 loops=1)
                                                         Hash Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=8 read=24464
                                                         ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=2.368..448.659 rows=4523930 loops=1)
                                                               Buffers: shared read=24454
                                                         ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=71.828..71.828 rows=3 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=8 read=10
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=46.887..71.807 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                     Buffers: shared hit=8 read=10
                                                   ->  Hash  (cost=1655.86..1655.86 rows=28683 width=22) (actual time=2356.441..2356.441 rows=1330927 loops=1)
                                                         Buckets: 2097152 (originally 32768)  Batches: 1 (originally 1)  Memory Usage: 83971kB
                                                         Buffers: shared hit=1 read=27242
                                                         ->  Hash Join  (cost=580.27..1655.86 rows=28683 width=22) (actual time=714.304..1959.617 rows=1330927 loops=1)
                                                               Hash Cond: (mc.movie_id = mi_idx.movie_id)
                                                               Buffers: shared hit=1 read=27242
                                                               ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=19.823..339.987 rows=2609129 loops=1)
                                                                     Buffers: shared read=18789
                                                               ->  Hash  (cost=578.52..578.52 rows=11890 width=10) (actual time=694.321..694.321 rows=454230 loops=1)
                                                                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 21840kB
                                                                     Buffers: shared hit=1 read=8453
                                                                     ->  Hash Join  (cost=0.05..578.52 rows=11890 width=10) (actual time=27.192..581.091 rows=454230 loops=1)
                                                                           Hash Cond: (mi_idx.info_type_id = it.id)
                                                                           Buffers: shared hit=1 read=8453
                                                                           ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=27.081..360.836 rows=1343555 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 36480
                                                                                 Buffers: shared read=8453
                                                                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.068 rows=1 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared hit=1
                                                                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.053..0.060 rows=1 loops=1)
                                                                                       Filter: ((info)::text = 'rating'::text)
                                                                                       Rows Removed by Filter: 112
                                                                                       Buffers: shared hit=1
                                             ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=142.619..142.619 rows=126230 loops=1)
                                                   Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                                   Buffers: shared read=2994
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=6.987..96.748 rows=126230 loops=1)
                                                         Filter: ((country_code)::text <> '[us]'::text)
                                                         Rows Removed by Filter: 108767
                                                         Buffers: shared read=2994
                           ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=10.752..10.752 rows=2 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=10.732..10.740 rows=2 loops=1)
                                       Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                       Rows Removed by Filter: 5
                                       Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=57.418..57.418 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=57.398..57.403 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 8640.454 ms
 Execution Time: 14772.111 ms
(101 rows)

