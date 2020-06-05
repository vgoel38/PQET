                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10836.01..10836.01 rows=1 width=96) (actual time=19888.097..19888.097 rows=1 loops=1)
   Buffers: shared hit=17 read=228116
   ->  Nested Loop  (cost=2510.06..10836.01 rows=1 width=42) (actual time=9363.554..19888.039 rows=53 loops=1)
         Join Filter: (mi.movie_id = t.id)
         Rows Removed by Join Filter: 40283371
         Buffers: shared hit=17 read=228116
         ->  Hash Join  (cost=476.23..7818.52 rows=1027 width=14) (actual time=2338.562..10550.490 rows=1118984 loops=1)
               Hash Cond: (mi.movie_id = miidx.movie_id)
               Buffers: shared hit=9 read=170341
               ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=4) (actual time=1703.323..9045.929 rows=3036719 loops=1)
                     Hash Cond: (mi.info_type_id = it.id)
                     Buffers: shared hit=6 read=161890
                     ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=8) (actual time=24.931..5851.566 rows=14835720 loops=1)
                           Buffers: shared hit=2 read=161890
                     ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.118..0.118 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.069..0.104 rows=1 loops=1)
                                 Filter: ((info)::text = 'release dates'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=1
               ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=635.157..635.157 rows=459925 loops=1)
                     Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22062kB
                     Buffers: shared hit=3 read=8451
                     ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.048..510.148 rows=459925 loops=1)
                           Hash Cond: (miidx.info_type_id = it.id)
                           Buffers: shared hit=3 read=8451
                           ->  Seq Scan on movie_info_idx miidx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.006..212.137 rows=1380035 loops=1)
                                 Buffers: shared hit=2 read=8451
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.021..0.023 rows=1 loops=1)
                                       Filter: ((info)::text = 'rating'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Materialize  (cost=2033.84..3016.34 rows=5 width=44) (actual time=0.002..0.004 rows=36 loops=1118984)
               Buffers: shared hit=8 read=57775
               ->  Hash Join  (cost=2033.84..3016.34 rows=5 width=44) (actual time=2579.314..2767.646 rows=36 loops=1)
                     Hash Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=8 read=57775
                     ->  Hash Join  (cost=2033.80..3016.30 rows=21 width=48) (actual time=2107.572..2767.599 rows=88 loops=1)
                           Hash Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=7 read=57775
                           ->  Hash Join  (cost=1892.95..2875.44 rows=59 width=33) (actual time=1947.617..2607.528 rows=181 loops=1)
                                 Hash Cond: (t.kind_id = kt.id)
                                 Buffers: shared hit=5 read=54783
                                 ->  Hash Join  (cost=1892.91..2875.37 rows=413 width=37) (actual time=1720.785..2607.388 rows=367 loops=1)
                                       Hash Cond: (mc.movie_id = t.id)
                                       Buffers: shared hit=4 read=54783
                                       ->  Seq Scan on movie_companies mc  (cost=0.00..769.75 rows=2609129 width=12) (actual time=0.005..479.592 rows=2609129 loops=1)
                                             Buffers: shared hit=3 read=18786
                                       ->  Hash  (cost=1892.85..1892.85 rows=400 width=25) (actual time=1714.292..1714.292 rows=294 loops=1)
                                             Buckets: 1024  Batches: 1  Memory Usage: 27kB
                                             Buffers: shared hit=1 read=35997
                                             ->  Seq Scan on title t  (cost=0.00..1892.85 rows=400 width=25) (actual time=19.705..1713.759 rows=294 loops=1)
                                                   Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                                   Rows Removed by Filter: 2528018
                                                   Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on kind_type kt  (cost=0.00..0.03 rows=1 width=4) (actual time=0.008..0.009 rows=1 loops=1)
                                             Filter: ((kind)::text = 'movie'::text)
                                             Rows Removed by Filter: 6
                                             Buffers: shared hit=1
                           ->  Hash  (cost=128.41..128.41 rows=84843 width=23) (actual time=159.631..159.631 rows=84843 loops=1)
                                 Buckets: 131072  Batches: 1  Memory Usage: 5810kB
                                 Buffers: shared hit=2 read=2992
                                 ->  Seq Scan on company_name cn  (cost=0.00..128.41 rows=84843 width=23) (actual time=23.910..124.031 rows=84843 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 150154
                                       Buffers: shared hit=2 read=2992
                     ->  Hash  (cost=0.03..0.03 rows=1 width=4) (actual time=0.014..0.015 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1
                           ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.012..0.013 rows=1 loops=1)
                                 Filter: ((kind)::text = 'production companies'::text)
                                 Rows Removed by Filter: 3
                                 Buffers: shared hit=1
 Planning Time: 4997.308 ms
 Execution Time: 19914.970 ms
(82 rows)

