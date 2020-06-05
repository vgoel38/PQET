                                                                                                               QUERY PLAN                                                                                                               
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13421.35..13421.35 rows=1 width=96) (actual time=13351.247..13351.247 rows=1 loops=1)
   Buffers: shared hit=13 read=253325
   ->  Hash Join  (cost=4998.19..13421.35 rows=1 width=42) (actual time=12072.087..13351.163 rows=148 loops=1)
         Hash Cond: (mi.info_type_id = it.id)
         Buffers: shared hit=13 read=253325
         ->  Hash Join  (cost=4998.14..13421.30 rows=1 width=46) (actual time=5183.615..13326.804 rows=149 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=10 read=253324
               ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=8) (actual time=35.031..8404.585 rows=134239 loops=1)
                     Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                     Rows Removed by Filter: 14701481
                     Buffers: shared read=161892
               ->  Hash  (cost=4998.14..4998.14 rows=1 width=62) (actual time=4899.427..4899.427 rows=1387 loops=1)
                     Buckets: 2048 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 142kB
                     Buffers: shared hit=10 read=91432
                     ->  Hash Join  (cost=3379.92..4998.14 rows=1 width=62) (actual time=3236.420..4898.311 rows=1387 loops=1)
                           Hash Cond: (cc.status_id = cct.id)
                           Buffers: shared hit=10 read=91432
                           ->  Hash Join  (cost=3379.88..4998.11 rows=1 width=66) (actual time=3236.220..4897.200 rows=1485 loops=1)
                                 Hash Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=10 read=91431
                                 ->  Hash Join  (cost=3232.95..4851.18 rows=1 width=51) (actual time=2976.452..4636.183 rows=1520 loops=1)
                                       Hash Cond: (mc.company_type_id = ct.id)
                                       Buffers: shared hit=10 read=88437
                                       ->  Hash Join  (cost=3232.92..4851.15 rows=1 width=55) (actual time=2976.352..4635.215 rows=1520 loops=1)
                                             Hash Cond: (t.id = mc.movie_id)
                                             Buffers: shared hit=10 read=88436
                                             ->  Hash Join  (cost=2036.99..3655.22 rows=1 width=43) (actual time=2069.726..3727.740 rows=191 loops=1)
                                                   Hash Cond: (t.kind_id = kt.id)
                                                   Buffers: shared hit=10 read=69647
                                                   ->  Hash Join  (cost=2036.96..3655.18 rows=1 width=47) (actual time=2048.162..3705.895 rows=199 loops=1)
                                                         Hash Cond: (t.id = mk.movie_id)
                                                         Buffers: shared hit=10 read=69646
                                                         ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=20.376..1480.722 rows=1012920 loops=1)
                                                               Filter: (production_year > 2005)
                                                               Rows Removed by Filter: 1515392
                                                               Buffers: shared read=35998
                                                         ->  Hash  (cost=2036.96..2036.96 rows=1 width=22) (actual time=1972.111..1972.111 rows=3041 loops=1)
                                                               Buckets: 4096 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 187kB
                                                               Buffers: shared hit=10 read=33648
                                                               ->  Hash Join  (cost=588.28..2036.96 rows=1 width=22) (actual time=805.774..1970.710 rows=3041 loops=1)
                                                                     Hash Cond: (mi_idx.info_type_id = it.id)
                                                                     Buffers: shared hit=10 read=33648
                                                                     ->  Hash Join  (cost=588.24..2036.91 rows=7 width=26) (actual time=805.670..1969.261 rows=4161 loops=1)
                                                                           Hash Cond: (mk.movie_id = mi_idx.movie_id)
                                                                           Buffers: shared hit=9 read=33648
                                                                           ->  Hash Join  (cost=76.66..1525.33 rows=10 width=12) (actual time=178.198..1338.381 rows=6216 loops=1)
                                                                                 Hash Cond: (cc.subject_id = cct.id)
                                                                                 Buffers: shared hit=9 read=25195
                                                                                 ->  Hash Join  (cost=76.63..1525.30 rows=41 width=16) (actual time=174.591..1334.766 rows=20024 loops=1)
                                                                                       Hash Cond: (mk.movie_id = cc.movie_id)
                                                                                       Buffers: shared hit=8 read=25195
                                                                                       ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=67.806..1237.334 rows=37091 loops=1)
                                                                                             Hash Cond: (mk.keyword_id = k.id)
                                                                                             Buffers: shared hit=8 read=24464
                                                                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=4.178..563.313 rows=4523930 loops=1)
                                                                                                   Buffers: shared read=24454
                                                                                             ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=63.477..63.477 rows=3 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=8 read=10
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=38.533..63.456 rows=3 loops=1)
                                                                                                         Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                         Buffers: shared hit=8 read=10
                                                                                       ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=80.441..80.441 rows=135086 loops=1)
                                                                                             Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                                                             Buffers: shared read=731
                                                                                             ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=2.936..37.911 rows=135086 loops=1)
                                                                                                   Buffers: shared read=731
                                                                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                                                                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                       Buffers: shared hit=1
                                                                                       ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.010..0.011 rows=1 loops=1)
                                                                                             Filter: ((kind)::text = 'crew'::text)
                                                                                             Rows Removed by Filter: 3
                                                                                             Buffers: shared hit=1
                                                                           ->  Hash  (cost=467.71..467.71 rows=298853 width=14) (actual time=623.487..623.487 rows=298857 loops=1)
                                                                                 Buckets: 524288  Batches: 1  Memory Usage: 16968kB
                                                                                 Buffers: shared read=8453
                                                                                 ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=298853 width=14) (actual time=24.692..508.090 rows=298857 loops=1)
                                                                                       Filter: (info > '6.5'::text)
                                                                                       Rows Removed by Filter: 1081178
                                                                                       Buffers: shared read=8453
                                                                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.067..0.067 rows=1 loops=1)
                                                                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                           Buffers: shared hit=1
                                                                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.059 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'rating'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=1
                                                   ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=21.541..21.541 rows=2 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared read=1
                                                         ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=21.511..21.518 rows=2 loops=1)
                                                               Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                               Rows Removed by Filter: 5
                                                               Buffers: shared read=1
                                             ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=905.933..905.933 rows=303271 loops=1)
                                                   Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                                   Buffers: shared read=18789
                                                   ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.088..813.038 rows=303271 loops=1)
                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                         Rows Removed by Filter: 2305858
                                                         Buffers: shared read=18789
                                       ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.082..0.082 rows=4 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.076..0.077 rows=4 loops=1)
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=258.730..258.730 rows=126230 loops=1)
                                       Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                                       Buffers: shared read=2994
                                       ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=7.144..213.419 rows=126230 loops=1)
                                             Filter: ((country_code)::text <> '[us]'::text)
                                             Rows Removed by Filter: 108767
                                             Buffers: shared read=2994
                           ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.170..0.170 rows=3 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on comp_cast_type cct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.156..0.160 rows=3 loops=1)
                                       Filter: ((kind)::text <> 'complete+verified'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared read=1
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=24.286..24.286 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=24.222..24.260 rows=1 loops=1)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared read=1
 Planning Time: 14134.387 ms
 Execution Time: 13352.698 ms
(131 rows)

