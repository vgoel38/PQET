                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10834.79..10834.79 rows=1 width=96) (actual time=11904.948..11904.949 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Hash Join  (cost=3492.57..10834.79 rows=1 width=42) (actual time=5800.770..11904.866 rows=53 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=3492.53..10834.76 rows=1 width=46) (actual time=5800.658..11904.723 rows=213 loops=1)
               Hash Cond: (mc.company_id = cn.id)
               Buffers: shared hit=13 read=228116
               ->  Hash Join  (cost=3351.67..10693.90 rows=1 width=31) (actual time=5643.234..11747.167 rows=615 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=11 read=225124
                     ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1509.423..8195.460 rows=3036719 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=9.030..5046.683 rows=14835720 loops=1)
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.027..0.061 rows=1 loops=1)
                                       Filter: ((info)::text = 'release dates'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=3351.63..3351.63 rows=1 width=43) (actual time=3255.342..3255.342 rows=95 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 15kB
                           Buffers: shared hit=8 read=63234
                           ->  Hash Join  (cost=2369.12..3351.63 rows=1 width=43) (actual time=2593.187..3255.288 rows=95 loops=1)
                                 Hash Cond: (t.id = miidx.movie_id)
                                 Buffers: shared hit=8 read=63234
                                 ->  Hash Join  (cost=1892.95..2875.44 rows=59 width=33) (actual time=1959.967..2621.977 rows=181 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=5 read=54783
                                       ->  Hash Join  (cost=1892.91..2875.37 rows=413 width=37) (actual time=1735.575..2621.850 rows=367 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=4 read=54783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..479.241 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=1892.85..1892.85 rows=400 width=25) (actual time=1728.893..1728.893 rows=294 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 27kB
                                                   Buffers: shared hit=1 read=35997
                                                   ->  Seq Scan on title t  (cost=0.00..1892.85 rows=400 width=25) (actual time=34.771..1728.311 rows=294 loops=1)
                                                         Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                                         Rows Removed by Filter: 2528018
                                                         Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.020..0.020 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=633.156..633.156 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.044..511.200 rows=459925 loops=1)
                                             Hash Cond: (miidx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..216.810 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.019..0.022 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
               ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=156.429..156.429 rows=84843 loops=1)
                     Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                     Buffers: shared hit=2 read=2992
                     ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=20.173..122.634 rows=84843 loops=1)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 150154
                           Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.034..0.037 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 5199.249 ms
 Execution Time: 11921.426 ms
(82 rows)

