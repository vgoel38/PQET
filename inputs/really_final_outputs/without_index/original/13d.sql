                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10628.78..10628.78 rows=1 width=96) (actual time=13306.069..13306.069 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Hash Join  (cost=3286.55..10628.77 rows=47 width=42) (actual time=6669.470..13092.537 rows=670390 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1516.035..8249.003 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it.id)
               Buffers: shared hit=6 read=161890
               ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=18.007..5114.924 rows=14835720 loops=1)
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.098..0.099 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.055..0.089 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Hash  (cost=3286.44..3286.44 rows=380 width=54) (actual time=4214.649..4214.649 rows=87293 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8689kB
               Buffers: shared hit=11 read=66226
               ->  Hash Join  (cost=1696.69..3286.44 rows=380 width=54) (actual time=3473.180..4180.680 rows=87293 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=11 read=66226
                     ->  Hash Join  (cost=0.03..1547.70 rows=361187 width=21) (actual time=69.561..1488.183 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=6.866..861.538 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.018..0.023 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1696.27..1696.27 rows=2659 width=33) (actual time=2484.541..2484.541 rows=248554 loops=1)
                           Buckets: 262144 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 18367kB
                           Buffers: shared hit=9 read=30229
                           ->  Hash Join  (cost=617.07..1696.27 rows=2659 width=33) (actual time=1615.013..2408.136 rows=248554 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=9 read=30229
                                 ->  Hash Join  (cost=617.04..1695.09 rows=10637 width=37) (actual time=779.423..2306.730 rows=580109 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=8 read=30229
                                       ->  Hash Join  (cost=476.18..1551.83 rows=29462 width=22) (actual time=631.950..1842.229 rows=1354883 loops=1)
                                             Hash Cond: (mc.movie_id = miidx.movie_id)
                                             Buffers: shared hit=6 read=27237
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.006..320.832 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=631.887..631.887 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.044..506.793 rows=459925 loops=1)
                                                         Hash Cond: (miidx.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..203.042 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.021 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=146.891..146.891 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared hit=2 read=2992
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=11.348..114.840 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared hit=2 read=2992
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
 Planning Time: 4821.649 ms
 Execution Time: 13307.545 ms
(80 rows)

