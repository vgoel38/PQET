                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=25540.65..25540.65 rows=1 width=96) (actual time=25536.516..25536.516 rows=1 loops=1)
   Buffers: shared hit=15 read=514600
   ->  Hash Join  (cost=12100.62..25540.65 rows=4 width=65) (actual time=19858.898..25523.516 rows=410 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=15 read=514600
         ->  Hash Join  (cost=2680.93..16120.40 rows=4855 width=4) (actual time=8951.068..14613.186 rows=6719 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=2385493 width=8) (actual time=855.065..11677.300 rows=2379271 loops=1)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 33865073
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2679.69..2679.69 rows=8482 width=4) (actual time=2606.257..2606.257 rows=9062 loops=1)
                     Buckets: 16384  Batches: 1  Memory Usage: 447kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2679.69 rows=8482 width=4) (actual time=9.898..2600.241 rows=9062 loops=1)
                           Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
                           Rows Removed by Filter: 4158429
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=9419.54..9419.54 rows=1027 width=77) (actual time=10907.800..10907.800 rows=45431 loops=1)
               Buckets: 65536 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 4005kB
               Buffers: shared hit=7 read=206338
               ->  Hash Join  (cost=2077.27..9419.54 rows=1027 width=77) (actual time=6949.754..10889.383 rows=45431 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=7 read=206338
                     ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4386.814..8271.724 rows=121863 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=13.610..5324.023 rows=14835720 loops=1)
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.058..0.063 rows=1 loops=1)
                                       Filter: ((info)::text = 'budget'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2562.763..2562.764 rows=459925 loops=1)
                           Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                           Buffers: shared hit=4 read=44448
                           ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=648.915..2389.401 rows=459925 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=4 read=44448
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=6.369..776.284 rows=2528312 loops=1)
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=642.372..642.372 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.123..518.061 rows=459925 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.017..224.762 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.071..0.071 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.059 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 5366.555 ms
 Execution Time: 25542.235 ms
(62 rows)

