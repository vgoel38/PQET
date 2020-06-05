                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10628.78..10628.78 rows=1 width=96) (actual time=13679.788..13679.788 rows=1 loops=1)
   Buffers: shared hit=4 read=228129
   ->  Hash Join  (cost=3286.55..10628.77 rows=47 width=42) (actual time=6963.140..13468.907 rows=670390 loops=1)
         Hash Cond: (mi.movie_id = t.id)
         Buffers: shared hit=4 read=228129
         ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1711.154..8505.555 rows=3036719 loops=1)
               Hash Cond: (mi.info_type_id = it2.id)
               Buffers: shared hit=3 read=161893
               ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=33.274..5347.028 rows=14835720 loops=1)
                     Buffers: shared read=161892
               ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.518..19.518 rows=1 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 9kB
                     Buffers: shared read=1
                     ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=19.471..19.506 rows=1 loops=1)
                           Filter: ((info)::text = 'release dates'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared read=1
         ->  Hash  (cost=3286.44..3286.44 rows=380 width=54) (actual time=4339.969..4339.970 rows=87293 loops=1)
               Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8689kB
               Buffers: shared hit=1 read=66236
               ->  Hash Join  (cost=1696.69..3286.44 rows=380 width=54) (actual time=3593.090..4306.165 rows=87293 loops=1)
                     Hash Cond: (t.id = mc.movie_id)
                     Buffers: shared hit=1 read=66236
                     ->  Hash Join  (cost=0.03..1547.70 rows=361187 width=21) (actual time=113.614..1540.951 rows=662825 loops=1)
                           Hash Cond: (t.kind_id = kt.id)
                           Buffers: shared read=35999
                           ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=25) (actual time=10.269..902.337 rows=2528312 loops=1)
                                 Buffers: shared read=35998
                           ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=21.317..21.317 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=21.299..21.305 rows=1 loops=1)
                                       Filter: ((kind)::text = 'movie'::text)
                                       Rows Removed by Filter: 6
                                       Buffers: shared read=1
                     ->  Hash  (cost=1696.27..1696.27 rows=2659 width=33) (actual time=2558.038..2558.038 rows=248554 loops=1)
                           Buckets: 262144 (originally 4096)  Batches: 1 (originally 1)  Memory Usage: 18367kB
                           Buffers: shared hit=1 read=30237
                           ->  Hash Join  (cost=617.07..1696.27 rows=2659 width=33) (actual time=1692.197..2480.849 rows=248554 loops=1)
                                 Hash Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=1 read=30237
                                 ->  Hash Join  (cost=617.04..1695.09 rows=10637 width=37) (actual time=811.002..2352.622 rows=580109 loops=1)
                                       Hash Cond: (mc.company_id = cn.id)
                                       Buffers: shared hit=1 read=30236
                                       ->  Hash Join  (cost=476.18..1551.83 rows=29462 width=22) (actual time=654.271..1875.351 rows=1354883 loops=1)
                                             Hash Cond: (mc.movie_id = miidx.movie_id)
                                             Buffers: shared hit=1 read=27242
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=2.903..333.289 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=651.210..651.210 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                                   Buffers: shared hit=1 read=8453
                                                   ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=27.272..524.661 rows=459925 loops=1)
                                                         Hash Cond: (miidx.info_type_id = it.id)
                                                         Buffers: shared hit=1 read=8453
                                                         ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=27.143..225.238 rows=1380035 loops=1)
                                                               Buffers: shared read=8453
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.075..0.075 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.064 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'rating'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                                       ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=155.701..155.701 rows=84843 loops=1)
                                             Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                             Buffers: shared read=2994
                                             ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=20.281..121.073 rows=84843 loops=1)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Rows Removed by Filter: 150154
                                                   Buffers: shared read=2994
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=25.080..25.080 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=25.065..25.068 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared read=1
 Planning Time: 4489.588 ms
 Execution Time: 13706.515 ms
(80 rows)

