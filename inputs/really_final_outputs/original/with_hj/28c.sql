                                                                                                                  QUERY PLAN                                                                                                                  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=17057.12..17057.12 rows=1 width=96) (actual time=13474.887..13474.887 rows=1 loops=1)
   Buffers: shared hit=13 read=253325
   ->  Hash Join  (cost=5110.79..17057.12 rows=1 width=42) (actual time=12103.735..13445.667 rows=8373 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=13 read=253325
         ->  Hash Join  (cost=5110.76..17057.09 rows=1 width=46) (actual time=12083.739..13423.369 rows=8373 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=10 read=253324
               ->  Hash Join  (cost=5110.71..17057.04 rows=1 width=50) (actual time=5059.404..13418.106 rows=9489 loops=1)
                     Hash Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=10 read=253323
                     ->  Hash Join  (cost=5110.68..17057.01 rows=1 width=54) (actual time=5052.666..13408.713 rows=9815 loops=1)
                           Hash Cond: (mi_idx.info_type_id = it.id)
                           Buffers: shared hit=10 read=253322
                           ->  Hash Join  (cost=5110.63..17056.96 rows=1 width=58) (actual time=5052.554..13403.816 rows=29247 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=9 read=253322
                                 ->  Hash Join  (cost=4963.70..16910.02 rows=1 width=43) (actual time=4768.433..13109.325 rows=30751 loops=1)
                                       Hash Cond: (t.id = mc.movie_id)
                                       Buffers: shared hit=9 read=250328
                                       ->  Hash Join  (cost=3767.77..15714.09 rows=1 width=55) (actual time=3811.193..12205.062 rows=3002 loops=1)
                                             Hash Cond: (mi.movie_id = t.id)
                                             Buffers: shared hit=9 read=231539
                                             ->  Seq Scan on movie_info mi  (cost=0.00..11863.04 rows=715132 width=8) (actual time=15.817..8339.629 rows=716210 loops=1)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 14119510
                                                   Buffers: shared read=161892
                                             ->  Hash  (cost=3767.77..3767.77 rows=2 width=47) (actual time=3772.157..3772.157 rows=2935 loops=1)
                                                   Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 263kB
                                                   Buffers: shared hit=9 read=69647
                                                   ->  Hash Join  (cost=2149.55..3767.77 rows=2 width=47) (actual time=2104.918..3769.385 rows=2935 loops=1)
                                                         Hash Cond: (t.id = mk.movie_id)
                                                         Buffers: shared hit=9 read=69647
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=6.308..1453.787 rows=1012920 loops=1)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1515392
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=2149.54..2149.54 rows=6 width=22) (actual time=2031.086..2031.086 rows=19025 loops=1)
                                                               Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1283kB
                                                               Buffers: shared hit=9 read=33649
                                                               ->  Hash Join  (cost=1525.37..2149.54 rows=6 width=22) (actual time=1428.478..2024.162 rows=19025 loops=1)
                                                                     Hash Cond: (mi_idx.movie_id = mk.movie_id)
                                                                     Buffers: shared hit=9 read=33649
                                                                     ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=1343551 width=14) (actual time=23.659..461.436 rows=1343555 loops=1)
                                                                           Filter: (info < '8.5'::text)
                                                                           Rows Removed by Filter: 36480
                                                                           Buffers: shared read=8453
                                                                     ->  Hash  (cost=1525.37..1525.37 rows=2 width=8) (actual time=1376.577..1376.577 rows=6704 loops=1)
                                                                           Buckets: 8192 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 326kB
                                                                           Buffers: shared hit=9 read=25196
                                                                           ->  Hash Join  (cost=76.69..1525.37 rows=2 width=8) (actual time=200.518..1374.296 rows=6704 loops=1)
                                                                                 Hash Cond: (cc.subject_id = cct.id)
                                                                                 Buffers: shared hit=9 read=25196
                                                                                 ->  Hash Join  (cost=76.66..1525.33 rows=10 width=12) (actual time=193.968..1364.856 rows=10536 loops=1)
                                                                                       Hash Cond: (cc.status_id = cct.id)
                                                                                       Buffers: shared hit=9 read=25195
                                                                                       ->  Hash Join  (cost=76.63..1525.30 rows=41 width=16) (actual time=193.915..1360.309 rows=20024 loops=1)
                                                                                             Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                             Buffers: shared hit=8 read=25195
                                                                                             ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=87.701..1260.906 rows=37091 loops=1)
                                                                                                   Hash Cond: (mk.keyword_id = k.id)
                                                                                                   Buffers: shared hit=8 read=24464
                                                                                                   ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=24.043..575.126 rows=4523930 loops=1)
                                                                                                         Buffers: shared read=24454
                                                                                                   ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.503..63.504 rows=3 loops=1)
                                                                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                         Buffers: shared hit=8 read=10
                                                                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.555..63.473 rows=3 loops=1)
                                                                                                               Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                               Buffers: shared hit=8 read=10
                                                                                             ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=82.182..82.182 rows=135086 loops=1)
                                                                                                   Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                                   Buffers: shared read=731
                                                                                                   ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=2.898..38.988 rows=135086 loops=1)
                                                                                                         Buffers: shared read=731
                                                                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                                                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                             Buffers: shared hit=1
                                                                                             ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.014 rows=1 loops=1)
                                                                                                   Filter: ((kind)::text = 'complete'::text)
                                                                                                   Rows Removed by Filter: 3
                                                                                                   Buffers: shared hit=1
                                                                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=6.517..6.517 rows=1 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared read=1
                                                                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=6.491..6.496 rows=1 loops=1)
                                                                                             Filter: ((kind)::text = 'cast'::text)
                                                                                             Rows Removed by Filter: 3
                                                                                             Buffers: shared read=1
                                       ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=896.290..896.290 rows=303271 loops=1)
                                             Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                             Buffers: shared read=18789
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.158..798.857 rows=303271 loops=1)
                                                   Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                   Rows Removed by Filter: 2305858
                                                   Buffers: shared read=18789
                                 ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=283.097..283.097 rows=126230 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=18.946..230.862 rows=126230 loops=1)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 108767
                                             Buffers: shared read=2994
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.064..0.064 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.049..0.054 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=6.693..6.693 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=6.673..6.681 rows=2 loops=1)
                                 Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                 Rows Removed by Filter: 5
                                 Buffers: shared read=1
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=2.768..2.768 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=2.720..2.758 rows=1 loops=1)
                           Filter: ((info)::text = 'countries'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=19.969..19.969 rows=4 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=19.930..19.934 rows=4 loops=1)
                     Buffers: shared read=1
 Planning Time: 14169.236 ms
 Execution Time: 13476.152 ms
(131 rows)

