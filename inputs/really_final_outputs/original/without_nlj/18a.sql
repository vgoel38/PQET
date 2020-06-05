                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=25538.64..25538.64 rows=1 width=96) (actual time=25821.923..25821.923 rows=1 loops=1)
   Buffers: shared hit=15 read=514600
   ->  Hash Join  (cost=12100.03..25538.64 rows=2 width=65) (actual time=20197.880..25809.942 rows=410 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=15 read=514600
         ->  Hash Join  (cost=2680.34..16118.65 rows=2543 width=4) (actual time=8960.776..14570.290 rows=6719 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=8 read=308262
               ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=2371250 width=8) (actual time=856.991..11632.606 rows=2379271 loops=1)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 33865073
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=2679.69..2679.69 rows=4470 width=4) (actual time=2606.219..2606.219 rows=9062 loops=1)
                     Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 447kB
                     Buffers: shared hit=1 read=55612
                     ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4470 width=4) (actual time=10.524..2600.294 rows=9062 loops=1)
                           Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
                           Rows Removed by Filter: 4158429
                           Buffers: shared hit=1 read=55612
         ->  Hash  (cost=9419.54..9419.54 rows=1025 width=77) (actual time=11237.085..11237.085 rows=45431 loops=1)
               Buckets: 65536 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 4005kB
               Buffers: shared hit=7 read=206338
               ->  Hash Join  (cost=2077.27..9419.54 rows=1025 width=77) (actual time=7127.100..11218.986 rows=45431 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=7 read=206338
                     ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4487.870..8526.637 rows=121863 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared hit=3 read=161890
                           ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=6.329..5585.614 rows=14835720 loops=1)
                                 Buffers: shared hit=2 read=161890
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.073..0.073 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.059..0.063 rows=1 loops=1)
                                       Filter: ((info)::text = 'budget'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
                     ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2639.061..2639.062 rows=459925 loops=1)
                           Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                           Buffers: shared hit=4 read=44448
                           ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=855.999..2462.145 rows=459925 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=4 read=44448
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=6.372..643.357 rows=2528312 loops=1)
                                       Buffers: shared hit=1 read=35997
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=849.453..849.453 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                       Buffers: shared hit=3 read=8451
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.130..725.185 rows=459925 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=3 read=8451
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.018..435.653 rows=1380035 loops=1)
                                                   Buffers: shared hit=2 read=8451
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.072..0.072 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.054..0.061 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 5563.824 ms
 Execution Time: 25827.531 ms
(62 rows)

