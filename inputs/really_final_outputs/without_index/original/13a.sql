                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10533.45..10533.45 rows=1 width=96) (actual time=12311.401..12311.401 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Hash Join  (cost=3191.23..10533.45 rows=5 width=65) (actual time=5866.680..12267.600 rows=111101 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=1522.797..8421.948 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it2.id)
               Buffers: shared hit=6 read=161890
               ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=22.407..5285.393 rows=14835720 loops=1)
                     Buffers: shared hit=2 read=161890
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.106..0.106 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared hit=1
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.056..0.091 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=1
         ->  Hash  (cost=3191.17..3191.17 rows=44 width=35) (actual time=3437.683..3437.683 rows=16470 loops=1)
               Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1368kB
               Buffers: shared hit=11 read=66226
               ->  Hash Join  (cost=1601.44..3191.17 rows=44 width=35) (actual time=2713.089..3431.110 rows=16470 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=11 read=66226
                     ->  Hash Join  (cost=0.03..1547.70 rows=361187 width=21) (actual time=65.686..1589.138 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared hit=2 read=35997
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=4.480..988.515 rows=2528312 loops=1)
                                 Buffers: shared hit=1 read=35997
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.030..0.036 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared hit=1
                     ->  Hash  (cost=1601.36..1601.36 rows=306 width=14) (actual time=1715.146..1715.146 rows=31510 loops=1)
                           Buckets: 32768 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 1610kB
                           Buffers: shared hit=9 read=30229
                           ->  Hash Join  (cost=606.05..1601.36 rows=306 width=14) (actual time=1333.302..1706.685 rows=31510 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=9 read=30229
                                 ->  Hash Join  (cost=606.02..1601.20 rows=1225 width=18) (actual time=774.075..1691.205 rows=83899 loops=1)
                                       Hash Cond: (mc.movie_id = miidx.movie_id)
                                       Buffers: shared hit=8 read=30229
                                       ->  Hash Join  (cost=129.84..1112.30 rows=108530 width=8) (actual time=140.409..992.811 rows=148132 loops=1)
                                             Hash Cond: (mc.company_id = cn.id)
                                             Buffers: shared hit=5 read=21778
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..402.251 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=128.41..128.41 rows=9775 width=4) (actual time=140.299..140.299 rows=9775 loops=1)
                                                   Buckets: 16384  Batches: 1  Memory Usage: 472kB
                                                   Buffers: shared hit=2 read=2992
                                                   ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=9775 width=4) (actual time=5.069..135.764 rows=9775 loops=1)
                                                         Filter: ((country_code)::text = '[de]'::text)
                                                         Rows Removed by Filter: 225222
                                                         Buffers: shared hit=2 read=2992
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=633.606..633.606 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                             Buffers: shared hit=3 read=8451
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.037..513.578 rows=459925 loops=1)
                                                   Hash Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..226.669 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.015..0.017 rows=1 loops=1)
                                                               Filter: ((info)::text = 'rating'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=1
 Planning Time: 4808.085 ms
 Execution Time: 12312.094 ms
(80 rows)

