                                                                                                               QUERY PLAN                                                                                                               
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=13421.35..13421.35 rows=1 width=96) (actual time=13288.579..13288.579 rows=1 loops=1)
   Buffers: shared hit=33 read=253305
   ->  Hash Join  (cost=4998.19..13421.35 rows=1 width=42) (actual time=12012.585..13288.457 rows=148 loops=1)
         Hash Cond: (mi.info_type_id = it1.id)
         Buffers: shared hit=33 read=253305
         ->  Hash Join  (cost=4998.14..13421.30 rows=1 width=46) (actual time=5220.442..13288.341 rows=149 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=29 read=253305
               ->  Hash Join  (cost=4851.21..13274.37 rows=1 width=31) (actual time=5066.478..13134.267 rows=151 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=27 read=250313
                     ->  Hash Join  (cost=4851.17..13274.34 rows=1 width=35) (actual time=5066.446..13134.171 rows=151 loops=1)
                           Hash Cond: (t.id = mc.movie_id)
                           Buffers: shared hit=26 read=250313
                           ->  Hash Join  (cost=3655.25..12078.41 rows=1 width=47) (actual time=3805.571..12239.939 rows=20 loops=1)
                                 Hash Cond: (mi_idx.info_type_id = it2.id)
                                 Buffers: shared hit=23 read=231527
                                 ->  Hash Join  (cost=3655.20..12078.36 rows=1 width=51) (actual time=3805.519..12239.858 rows=22 loops=1)
                                       Hash Cond: (cc.subject_id = cct1.id)
                                       Buffers: shared hit=22 read=231527
                                       ->  Hash Join  (cost=3655.17..12078.33 rows=1 width=55) (actual time=3805.495..12239.768 rows=136 loops=1)
                                             Hash Cond: (cc.status_id = cct2.id)
                                             Buffers: shared hit=21 read=231527
                                             ->  Hash Join  (cost=3655.13..12078.29 rows=1 width=59) (actual time=3805.468..12239.605 rows=224 loops=1)
                                                   Hash Cond: (t.id = cc.movie_id)
                                                   Buffers: shared hit=20 read=231527
                                                   ->  Hash Join  (cost=3603.04..12026.20 rows=1 width=47) (actual time=3704.677..12138.501 rows=483 loops=1)
                                                         Hash Cond: (t.id = mi_idx.movie_id)
                                                         Buffers: shared hit=18 read=230798
                                                         ->  Hash Join  (cost=3091.46..11514.62 rows=1 width=33) (actual time=3092.257..11525.413 rows=982 loops=1)
                                                               Hash Cond: (t.kind_id = kt.id)
                                                               Buffers: shared hit=16 read=222347
                                                               ->  Hash Join  (cost=3091.43..11514.59 rows=3 width=37) (actual time=3092.221..11524.807 rows=1175 loops=1)
                                                                     Hash Cond: (mi.movie_id = t.id)
                                                                     Buffers: shared hit=15 read=222347
                                                                     ->  Seq Scan on movie_info mi  (cost=0.00..8407.52 rows=134293 width=8) (actual time=26.886..8448.679 rows=134239 loops=1)
                                                                           Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                           Rows Removed by Filter: 14701481
                                                                           Buffers: shared hit=2 read=161890
                                                                     ->  Hash  (cost=3091.42..3091.42 rows=54 width=29) (actual time=3041.526..3041.526 rows=9739 loops=1)
                                                                           Buckets: 16384 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 717kB
                                                                           Buffers: shared hit=13 read=60457
                                                                           ->  Hash Join  (cost=1473.19..3091.42 rows=54 width=29) (actual time=1242.695..3034.444 rows=9739 loops=1)
                                                                                 Hash Cond: (t.id = mk.movie_id)
                                                                                 Buffers: shared hit=13 read=60457
                                                                                 ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1012920 width=25) (actual time=8.770..1495.096 rows=1012920 loops=1)
                                                                                       Filter: (production_year > 2005)
                                                                                       Rows Removed by Filter: 1515392
                                                                                       Buffers: shared hit=2 read=35996
                                                                                 ->  Hash  (cost=1473.17..1473.17 rows=135 width=4) (actual time=1223.666..1223.666 rows=37091 loops=1)
                                                                                       Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1816kB
                                                                                       Buffers: shared hit=11 read=24461
                                                                                       ->  Hash Join  (cost=24.53..1473.17 rows=135 width=4) (actual time=67.984..1213.517 rows=37091 loops=1)
                                                                                             Hash Cond: (mk.keyword_id = k.id)
                                                                                             Buffers: shared hit=11 read=24461
                                                                                             ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.018..529.557 rows=4523930 loops=1)
                                                                                                   Buffers: shared hit=3 read=24451
                                                                                             ->  Hash  (cost=24.53..24.53 rows=4 width=4) (actual time=67.809..67.809 rows=3 loops=1)
                                                                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                                                   Buffers: shared hit=8 read=10
                                                                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=42.853..67.781 rows=3 loops=1)
                                                                                                         Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                                                                                         Buffers: shared hit=8 read=10
                                                               ->  Hash  (cost=0.03..0.03 rows=2 width=4) (actual time=0.014..0.014 rows=2 loops=1)
                                                                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                                     Buffers: shared hit=1
                                                                     ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=2 width=4) (actual time=0.010..0.012 rows=2 loops=1)
                                                                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                           Rows Removed by Filter: 5
                                                                           Buffers: shared hit=1
                                                         ->  Hash  (cost=467.71..467.71 rows=298853 width=14) (actual time=611.150..611.151 rows=298857 loops=1)
                                                               Buckets: 524288  Batches: 1  Memory Usage: 16968kB
                                                               Buffers: shared hit=2 read=8451
                                                               ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..467.71 rows=298853 width=14) (actual time=0.015..492.866 rows=298857 loops=1)
                                                                     Filter: (info > '6.5'::text)
                                                                     Rows Removed by Filter: 1081178
                                                                     Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=32.27..32.27 rows=135086 width=12) (actual time=100.116..100.116 rows=135086 loops=1)
                                                         Buckets: 262144  Batches: 1  Memory Usage: 7853kB
                                                         Buffers: shared hit=2 read=729
                                                         ->  Seq Scan on complete_cast cc  (cost=0.00..32.27 rows=135086 width=12) (actual time=21.311..57.079 rows=135086 loops=1)
                                                               Buffers: shared hit=2 read=729
                                             ->  Hash  (cost=0.03..0.03 rows=3 width=4) (actual time=0.006..0.006 rows=3 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on comp_cast_type cct2  (cost=0.00..0.03 rows=3 width=4) (actual time=0.002..0.003 rows=3 loops=1)
                                                         Filter: ((kind)::text <> 'complete+verified'::text)
                                                         Rows Removed by Filter: 1
                                                         Buffers: shared hit=1
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.008..0.008 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on comp_cast_type cct1  (cost=0.00..0.03 rows=1 width=4) (actual time=0.005..0.006 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'crew'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.027..0.028 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.022..0.024 rows=1 loops=1)
                                             Filter: ((info)::text = 'rating'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=1174.90..1174.90 rows=143259 width=12) (actual time=893.340..893.340 rows=303271 loops=1)
                                 Buckets: 524288 (originally 262144)  Batches: 1 (originally 1)  Memory Usage: 17128kB
                                 Buffers: shared hit=3 read=18786
                                 ->  Seq Scan on movie_companies mc  (cost=0.00..1174.90 rows=143259 width=12) (actual time=0.012..797.800 rows=303271 loops=1)
                                       Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                       Rows Removed by Filter: 2305858
                                       Buffers: shared hit=3 read=18786
                     ->  Hash  (cost=0.03..0.03 rows=4 width=4) (actual time=0.012..0.012 rows=4 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=4 width=4) (actual time=0.006..0.007 rows=4 loops=1)
                                 Buffers: shared hit=1
               ->  Hash  (cost=128.41..128.41 rows=126230 width=23) (actual time=153.652..153.652 rows=126230 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 7967kB
                     Buffers: shared hit=2 read=2992
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=126230 width=23) (actual time=13.321..109.320 rows=126230 loops=1)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 108767
                           Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.010..0.020 rows=1 loops=1)
                     Filter: ((info)::text = 'countries'::text)
                     Rows Removed by Filter: 112
                     Buffers: shared hit=1
 Planning Time: 15188.501 ms
 Execution Time: 13290.177 ms
(131 rows)

