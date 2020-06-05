                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10628.78..10628.78 rows=1 width=96) (actual time=13454.921..13454.921 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Hash Join  (cost=3286.55..10628.77 rows=47 width=42) (actual time=6810.046..13239.613 rows=670390 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1666.419..8405.877 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6 read=161890
               ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=24.936..5267.182 rows=14835720 loops=1)
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.106..0.106 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.058..0.092 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Hash  (cost=3286.44..3286.44 rows=380 width=54) (actual time=4215.734..4215.734 rows=87293 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8689kB
               Buffers: shared hit=11 read=66226
               ->  Hash Join  (cost=1696.69..3286.44 rows=380 width=54) (actual time=3462.417..4182.587 rows=87293 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=11 read=66226
                     ->  Hash Join  (cost=0.03..1547.70 rows=361187 width=21) (actual time=66.765..1497.681 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=5.039..864.668 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.024 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1696.27..1696.27 rows=2659 width=33) (actual time=2476.242..2476.243 rows=248554 loops=1)
                           Buckets: 262144 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 18367kB
                           Buffers: shared hit=9 read=30229
                           ->  Hash Join  (cost=617.07..1696.27 rows=2659 width=33) (actual time=1616.290..2398.619 rows=248554 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=9 read=30229
                                 ->  Hash Join  (cost=617.04..1695.09 rows=10637 width=37) (actual time=771.411..2296.879 rows=580109 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=8 read=30229
                                       ->  Hash Join  (cost=476.18..1551.83 rows=29462 width=22) (actual time=631.095..1838.276 rows=1354883 loops=1)
                                             Hash Cond: (mc.movie_id = miidx.movie_id)
                                             Buffers: shared hit=6 read=27237
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..324.739 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=631.036..631.036 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.040..508.993 rows=459925 loops=1)
                                                         Hash Cond: (miidx.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.007..211.871 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.016..0.018 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=139.778..139.778 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=4.001..108.257 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.015..0.018 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
 Planning Time: 4951.094 ms
 Execution Time: 13477.843 ms
(80 rows)

