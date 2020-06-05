                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10834.79..10834.79 rows=1 width=96) (actual time=12171.505..12171.506 rows=1 loops=1)
   Buffers: shared hit=4 read=228129
   ->  Hash Join  (cost=3492.57..10834.79 rows=1 width=42) (actual time=6087.028..12171.462 rows=53 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=4 read=228129
         ->  Hash Join  (cost=3492.53..10834.76 rows=1 width=46) (actual time=6078.634..12163.036 rows=213 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=1 read=228128
               ->  Hash Join  (cost=3351.67..10693.90 rows=1 width=31) (actual time=5805.352..11889.625 rows=615 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=1 read=225134
                     ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1599.311..8265.653 rows=3036719 loops=1)
                           Hash Cond: (mi.info_type_id = it2.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=9.956..5134.973 rows=14835720 loops=1)
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.525..19.525 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=19.479..19.513 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=3351.63..3351.63 rows=1 width=43) (actual time=3324.716..3324.716 rows=95 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 15kB
                           Buffers: shared hit=1 read=63241
                           ->  Hash Join  (cost=2369.12..3351.63 rows=1 width=43) (actual time=2662.596..3324.658 rows=95 loops=1)
                                 Hash Cond: (t.id = miidx.movie_id)
                                 Buffers: shared hit=1 read=63241
                                 ->  Hash Join  (cost=1892.95..2875.44 rows=59 width=33) (actual time=2029.824..2691.793 rows=181 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared read=54788
                                       ->  Hash Join  (cost=1892.91..2875.37 rows=413 width=37) (actual time=1793.141..2679.371 rows=367 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared read=54787
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=25.164..498.809 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=1892.85..1892.85 rows=400 width=25) (actual time=1761.910..1761.910 rows=294 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 27kB
                                                   Buffers: shared read=35998
                                                   ->  Seq Scan on title t  (cost=0.00..1892.85 rows=400 width=25) (actual time=17.105..1761.347 rows=294 loops=1)
                                                         Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                                         Rows Removed by Filter: 2528018
                                                         Buffers: shared read=35998
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=12.312..12.312 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=12.299..12.305 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=632.718..632.718 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=22.589..511.865 rows=459925 loops=1)
                                             Hash Cond: (miidx.info_type_id = it.id)
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=22.475..222.826 rows=1380035 loops=1)
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.057..0.063 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
               ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=272.260..272.260 rows=84843 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                     Buffers: shared read=2994
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=20.243..231.173 rows=84843 loops=1)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 150154
                           Buffers: shared read=2994
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=8.326..8.326 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=8.312..8.315 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
 Planning Time: 4514.259 ms
 Execution Time: 12181.435 ms
(82 rows)

