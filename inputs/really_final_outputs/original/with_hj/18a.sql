                                                                                   QUERY PLAN                                                                                    
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=25538.64..25538.64 rows=1 width=96) (actual time=25585.074..25585.074 rows=1 loops=1)
   Buffers: shared hit=4 read=514611
   ->  Hash Join  (cost=12100.03..25538.64 rows=2 width=65) (actual time=19954.226..25571.308 rows=410 loops=1)
         Hash Cond: (ci.movie_id = t.id)
         Buffers: shared hit=4 read=514611
         ->  Hash Join  (cost=2680.34..16118.65 rows=2543 width=4) (actual time=8869.999..14484.653 rows=6719 loops=1)
               Hash Cond: (ci.person_id = n.id)
               Buffers: shared hit=3 read=308267
               ->  Seq Scan on cast_info ci  (cost=0.00..13245.00 rows=2371250 width=8) (actual time=846.717..11522.522 rows=2379271 loops=1)
                     Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                     Rows Removed by Filter: 33865073
                     Buffers: shared read=252654
               ->  Hash  (cost=2679.69..2679.69 rows=4470 width=4) (actual time=2639.016..2639.016 rows=9062 loops=1)
                     Buckets: 16384 (originally 8192)  Batches: 1 (originally 1)  Memory Usage: 447kB
                     Buffers: shared read=55613
                     ->  Seq Scan on name n  (cost=0.00..2679.69 rows=4470 width=4) (actual time=43.295..2632.821 rows=9062 loops=1)
                           Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
                           Rows Removed by Filter: 4158429
                           Buffers: shared read=55613
         ->  Hash  (cost=9419.54..9419.54 rows=1025 width=77) (actual time=11084.200..11084.200 rows=45431 loops=1)
               Buckets: 65536 (originally 2048)  Batches: 1 (originally 1)  Memory Usage: 4005kB
               Buffers: shared hit=1 read=206344
               ->  Hash Join  (cost=2077.27..9419.54 rows=1025 width=77) (actual time=7189.157..11066.651 rows=45431 loops=1)
                     Hash Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=1 read=206344
                     ->  Hash Join  (cost=0.05..7326.98 rows=131290 width=46) (actual time=4650.789..8475.546 rows=121863 loops=1)
                           Hash Cond: (mi.info_type_id = it1.id)
                           Buffers: shared read=161893
                           ->  Seq Scan on movie_info mi  (cost=0.00..6103.84 rows=14835720 width=50) (actual time=44.677..5527.236 rows=14835720 loops=1)
                                 Buffers: shared read=161892
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=19.520..19.521 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared read=1
                                 ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=19.503..19.508 rows=1 loops=1)
                                       Filter: ((info)::text = 'budget'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared read=1
                     ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2538.285..2538.285 rows=459925 loops=1)
                           Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                           Buffers: shared hit=1 read=44451
                           ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=644.399..2358.732 rows=459925 loops=1)
                                 Hash Cond: (t.id = mi_idx.movie_id)
                                 Buffers: shared hit=1 read=44451
                                 ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=6.860..740.905 rows=2528312 loops=1)
                                       Buffers: shared read=35998
                                 ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=637.360..637.360 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                       Buffers: shared hit=1 read=8453
                                       ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=23.656..512.972 rows=459925 loops=1)
                                             Hash Cond: (mi_idx.info_type_id = it2.id)
                                             Buffers: shared hit=1 read=8453
                                             ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=23.533..229.036 rows=1380035 loops=1)
                                                   Buffers: shared read=8453
                                             ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.076..0.076 rows=1 loops=1)
                                                   Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                   Buffers: shared hit=1
                                                   ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.059..0.066 rows=1 loops=1)
                                                         Filter: ((info)::text = 'votes'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=1
 Planning Time: 4957.936 ms
 Execution Time: 25590.940 ms
(62 rows)

