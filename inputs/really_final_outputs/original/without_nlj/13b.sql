                                                                                  QUERY PLAN                                                                                   
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10835.29..10835.29 rows=1 width=96) (actual time=12071.585..12071.585 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Hash Join  (cost=3493.06..10835.29 rows=1 width=42) (actual time=5925.793..12071.376 rows=372 loops=1)
         Hash Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=3493.03..10835.25 rows=1 width=46) (actual time=5925.662..12071.075 rows=978 loops=1)
               Hash Cond: (mi.movie_id = t.id)
               Buffers: shared hit=13 read=228116
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1661.704..8293.768 rows=3036719 loops=1)
                     Hash Cond: (mi.info_type_id = it2.id)
                     Buffers: shared hit=3 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=24.790..5163.326 rows=14835720 loops=1)
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.068..0.069 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.025..0.060 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=3492.98..3492.98 rows=1 width=58) (actual time=3477.991..3477.991 rows=161 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 24kB
                     Buffers: shared hit=10 read=66226
                     ->  Hash Join  (cost=2510.26..3492.98 rows=1 width=58) (actual time=2770.106..3477.823 rows=161 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=10 read=66226
                           ->  Hash Join  (cost=2369.40..3352.12 rows=4 width=43) (actual time=2619.677..3329.397 rows=313 loops=1)
                                 Hash Cond: (t.id = miidx.movie_id)
                                 Buffers: shared hit=8 read=63234
                                 ->  Hash Join  (cost=1893.22..2875.91 rows=337 width=33) (actual time=1982.635..2693.335 rows=769 loops=1)
                                       Hash Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=5 read=54783
                                       ->  Hash Join  (cost=1893.19..2875.64 rows=2361 width=37) (actual time=1797.513..2692.644 rows=2659 loops=1)
                                             Hash Cond: (mc.movie_id = t.id)
                                             Buffers: shared hit=4 read=54783
                                             ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..453.863 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=18786
                                             ->  Hash  (cost=1892.85..1892.85 rows=2288 width=25) (actual time=1797.392..1797.392 rows=2218 loops=1)
                                                   Buckets: 4096  Batches: 1  Memory Usage: 196kB
                                                   Buffers: shared hit=1 read=35997
                                                   ->  Seq Scan on title t  (cost=0.00..1892.85 rows=2288 width=25) (actual time=26.083..1795.385 rows=2218 loops=1)
                                                         Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                                         Rows Removed by Filter: 2526094
                                                         Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                             Buffers: shared hit=1
                                             ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.011..0.012 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'movie'::text)
                                                   Rows Removed by Filter: 6
                                                   Buffers: shared hit=1
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=635.552..635.552 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.042..516.007 rows=459925 loops=1)
                                             Hash Cond: (miidx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.008..223.686 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.021..0.022 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.017..0.019 rows=1 loops=1)
                                                         Filter: ((info)::text = 'rating'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=147.740..147.740 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=8.906..110.114 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
         ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.051..0.051 rows=1 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=1
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.035..0.038 rows=1 loops=1)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 3
                     Buffers: shared hit=1
 Planning Time: 4986.515 ms
 Execution Time: 12092.144 ms
(82 rows)

