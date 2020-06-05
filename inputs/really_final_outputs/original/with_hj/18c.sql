                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31874.96..31874.96 rows=1 width=96) (actual time=25469.943..25469.944 rows=1 loops=1)
   Buffers: shared hit=4 read=514611
   ->  Hash Join  (cost=14263.86..31874.96 rows=5 width=65) (actual time=14363.834..25447.827 rows=28073 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=4 read=514611
         ->  Hash Join  (cost=11652.42..29263.51 rows=13 width=69) (actual time=11726.685..22791.164 rows=54155 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=1 read=458998
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=361.838..11649.039 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared read=252654
               ->  Hash  (cost=11652.42..11652.42 rows=13 width=77) (actual time=10843.980..10843.980 rows=102516 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8671kB
                     Buffers: shared hit=1 read=206344
                     ->  Hash Join  (cost=2077.27..11652.42 rows=13 width=77) (actual time=10037.858..10800.146 rows=102516 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=1 read=206344
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7625.567..8298.828 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared read=161893
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2713.063..8224.627 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared read=161892
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=23.758..23.758 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared read=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=23.695..23.735 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared read=1
                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2412.222..2412.222 rows=459925 loops=1)
                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                 Buffers: shared hit=1 read=44451
                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=665.156..2234.911 rows=459925 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=1 read=44451
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=21.337..618.385 rows=2528312 loops=1)
                                             Buffers: shared read=35998
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=643.665..643.665 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=1 read=8453
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=23.665..517.016 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=1 read=8453
                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=23.542..229.360 rows=1380035 loops=1)
                                                         Buffers: shared read=8453
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.074..0.074 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.058..0.065 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=4) (actual time=2621.239..2621.239 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 77542kB
               Buffers: shared read=55613
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=4) (actual time=24.237..2124.505 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared read=55613
 Planning Time: 5148.338 ms
 Execution Time: 25498.042 ms
(64 rows)

