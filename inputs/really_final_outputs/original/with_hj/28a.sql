                                                                                                                  QUERY PLAN                                                                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17100.52..17100.52 rows=1 width=96) (actual time=13425.160..13425.160 rows=1 loops=1)
   Buffers: shared hit=13 read=253325
   ->  Hash Join  (cost=5154.20..17100.52 rows=1 width=42) (actual time=12127.490..13423.593 rows=4803 loops=1)
         Hash Cond: (mi.info_type_id = it1.id)
         Buffers: shared hit=13 read=253325
         ->  Hash Join  (cost=5154.15..17100.47 rows=1 width=46) (actual time=4990.485..13401.199 rows=5295 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=10 read=253324
               ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=37.724..8385.757 rows=716210 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14119510
                     Buffers: shared read=161892
               ->  Hash  (cost=5154.15..5154.15 rows=1 width=62) (actual time=4930.698..4930.698 rows=4410 loops=1)
                     Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 463kB
                     Buffers: shared hit=10 read=91432
                     ->  Hash Join  (cost=3493.01..5154.15 rows=1 width=62) (actual time=3141.751..4927.604 rows=4410 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=10 read=91432
                           ->  Hash Join  (cost=3346.07..5007.21 rows=1 width=47) (actual time=3000.665..4782.955 rows=4535 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=10 read=88438
                                 ->  Hash Join  (cost=3346.04..5007.18 rows=1 width=51) (actual time=2981.146..4761.248 rows=4703 loops=1)
                                       Hash Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=10 read=88437
                                       ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=25) (actual time=20.384..1548.320 rows=1381453 loops=1)
                                             Filter: (production_year > 2000)
                                             Rows Removed by Filter: 1146859
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=3346.04..3346.04 rows=1 width=26) (actual time=2897.304..2897.304 rows=9535 loops=1)
                                             Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 650kB
                                             Buffers: shared hit=10 read=52439
                                             ->  Hash Join  (cost=2721.86..3346.04 rows=1 width=26) (actual time=2314.895..2893.756 rows=9535 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=10 read=52439
                                                   ->  Hash Join  (cost=2721.81..3345.99 rows=6 width=30) (actual time=2314.782..2888.133 rows=29576 loops=1)
                                                         Hash Cond: (mi_idx.movie_id = mk.movie_id)
                                                         Buffers: shared hit=9 read=52439
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=23.534..461.562 rows=1343555 loops=1)
                                                               Filter: (info < '8.5'::text)
                                                               Rows Removed by Filter: 36480
                                                               Buffers: shared read=8453
                                                         ->  Hash  (cost=2721.81..2721.81 rows=2 width=16) (actual time=2250.376..2250.376 rows=9908 loops=1)
                                                               Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 593kB
                                                               Buffers: shared hit=9 read=43986
                                                               ->  Hash Join  (cost=1272.65..2721.81 rows=2 width=16) (actual time=1125.732..2247.187 rows=9908 loops=1)
                                                                     Hash Cond: (cc.subject_id = cct1.id)
                                                                     Buffers: shared hit=9 read=43986
                                                                     ->  Hash Join  (cost=1272.62..2721.78 rows=9 width=20) (actual time=1119.072..2234.962 rows=33990 loops=1)
                                                                           Hash Cond: (mc.company_type_id = ct.id)
                                                                           Buffers: shared hit=9 read=43985
                                                                           ->  Hash Join  (cost=1272.59..2721.75 rows=9 width=24) (actual time=1118.910..2225.812 rows=33990 loops=1)
                                                                                 Hash Cond: (cc.status_id = cct2.id)
                                                                                 Buffers: shared hit=9 read=43984
                                                                                 ->  Hash Join  (cost=1272.56..2721.71 rows=12 width=28) (actual time=1118.827..2212.804 rows=73412 loops=1)
                                                                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                       Buffers: shared hit=8 read=43984
                                                                                       ->  Hash Join  (cost=1220.46..2669.61 rows=41 width=16) (actual time=1017.139..2102.831 rows=86022 loops=1)
                                                                                             Hash Cond: (mk.movie_id = mc.movie_id)
                                                                                             Buffers: shared hit=8 read=43253
                                                                                             ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=87.600..1145.708 rows=37091 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=8 read=24464
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=23.936..495.690 rows=4523930 loops=1)
                                                                                                         Buffers: shared read=24454
                                                                                                   ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.480..63.480 rows=3 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=8 read=10
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.540..63.458 rows=3 loops=1)
                                                                                                               Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                               Buffers: shared hit=8 read=10
                                                                                             ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=927.432..927.432 rows=303271 loops=1)
                                                                                                   Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                                                                                   Buffers: shared read=18789
                                                                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=26.352..829.499 rows=303271 loops=1)
                                                                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                         Rows Removed by Filter: 2305858
                                                                                                         Buffers: shared read=18789
                                                                                       ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=81.201..81.201 rows=135086 loops=1)
                                                                                             Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                             Buffers: shared read=731
                                                                                             ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=7.122..40.601 rows=135086 loops=1)
                                                                                                   Buffers: shared read=731
                                                                                 ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.020..0.020 rows=3 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=1
                                                                                       ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.009..0.012 rows=3 loops=1)
                                                                                             Filter: ((kind)::text <> 'complete+verified'::text)
                                                                                             Rows Removed by Filter: 1
                                                                                             Buffers: shared hit=1
                                                                           ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.127..0.127 rows=4 loops=1)
                                                                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                 Buffers: shared read=1
                                                                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.115..0.118 rows=4 loops=1)
                                                                                       Buffers: shared read=1
                                                                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=6.532..6.532 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared read=1
                                                                           ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=6.510..6.514 rows=1 loops=1)
                                                                                 Filter: ((kind)::text = 'crew'::text)
                                                                                 Rows Removed by Filter: 3
                                                                                 Buffers: shared read=1
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.068 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.060 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=19.497..19.497 rows=2 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=19.477..19.484 rows=2 loops=1)
                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                             Rows Removed by Filter: 5
                                             Buffers: shared read=1
                           ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=140.043..140.043 rows=126230 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=4.652..93.517 rows=126230 loops=1)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 108767
                                       Buffers: shared read=2994
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=21.105..21.105 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=21.047..21.084 rows=1 loops=1)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
 Planning Time: 14284.955 ms
 Execution Time: 13445.703 ms
(131 rows)

