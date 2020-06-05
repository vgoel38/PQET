                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10835.29..10835.29 rows=1 width=96) (actual time=12216.929..12216.930 rows=1 loops=1)
   Buffers: shared hit=4 read=228129
   ->  Hash Join  (cost=3493.06..10835.29 rows=1 width=42) (actual time=5944.881..12216.736 rows=372 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=4 read=228129
         ->  Hash Join  (cost=3493.03..10835.25 rows=1 width=46) (actual time=5944.597..12216.278 rows=978 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=1 read=228128
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1714.394..8483.856 rows=3036719 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared read=161893
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=24.693..5352.599 rows=14835720 loops=1)
                           Buffers: shared read=161892
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.494..19.495 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=19.449..19.483 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared read=1
               ->  Hash  (cost=3492.98..3492.98 rows=1 width=58) (actual time=3416.061..3416.061 rows=161 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 24kB
                     Buffers: shared hit=1 read=66235
                     ->  Hash Join  (cost=2510.26..3492.98 rows=1 width=58) (actual time=2706.676..3415.900 rows=161 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1 read=66235
                           ->  Hash Join  (cost=2369.40..3352.12 rows=4 width=43) (actual time=2562.073..3273.540 rows=313 loops=1)
                                 Hash Cond: (t.id = miidx.movie_id)
                                 Buffers: shared hit=1 read=63241
                                 ->  Hash Join  (cost=1893.22..2875.91 rows=337 width=33) (actual time=1924.272..2637.139 rows=769 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared read=54788
                                       ->  Hash Join  (cost=1893.19..2875.64 rows=2361 width=37) (actual time=1737.902..2628.138 rows=2659 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared read=54787
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=25.157..484.011 rows=2609129 loops=1)
                                                   Buffers: shared read=18789
                                             ->  Hash  (cost=1892.85..1892.85 rows=2288 width=25) (actual time=1712.600..1712.600 rows=2218 loops=1)
                                                   Buckets: 4096  Batches: 1  Memory Usage: 196kB
                                                   Buffers: shared read=35998
                                                   ->  Seq Scan on title t  (cost=0.00..1892.85 rows=2288 width=25) (actual time=3.848..1710.653 rows=2218 loops=1)
                                                         Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                                         Rows Removed by Filter: 2526094
                                                         Buffers: shared read=35998
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=8.350..8.350 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared read=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=8.337..8.343 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared read=1
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=635.899..635.899 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=21.822..512.860 rows=459925 loops=1)
                                             Hash Cond: (miidx.info_type_id = it.id)
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=21.701..217.357 rows=1380035 loops=1)
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.076..0.076 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.059..0.066 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=141.753..141.753 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared read=2994
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=6.210..104.502 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared read=2994
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.208..0.209 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.200..0.202 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared read=1
 Planning Time: 4540.476 ms
 Execution Time: 12225.643 ms
(82 rows)

