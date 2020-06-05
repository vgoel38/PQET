                                                                                         QUERY PLAN                                                                                         
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31881.24..31881.24 rows=1 width=96) (actual time=25476.908..25476.909 rows=1 loops=1)
   Buffers: shared hit=15 read=514600
   ->  Hash Join  (cost=14270.30..31881.24 rows=5 width=65) (actual time=14377.237..25455.073 rows=28073 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=15 read=514600
         ->  Hash Join  (cost=11658.85..29269.79 rows=13 width=69) (actual time=11660.351..22718.393 rows=54155 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=11 read=458988
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1244570 width=8) (actual time=360.999..11649.644 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=11658.85..11658.85 rows=13 width=77) (actual time=10775.983..10775.983 rows=102516 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8671kB
                     Buffers: shared hit=7 read=206338
                     ->  Hash Join  (cost=2077.27..11658.85 rows=13 width=77) (actual time=9994.624..10734.936 rows=102516 loops=1)
                           Hash Cond: (mi.info_type_id = it.id)
                           Buffers: shared hit=7 read=206338
                           ->  Hash Join  (cost=2077.22..11658.68 rows=1479 width=81) (actual time=5122.473..10700.934 rows=104892 loops=1)
                                 Hash Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=6 read=206338
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2713.968..8202.610 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2408.435..2408.435 rows=459925 loops=1)
                                       Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                       Buffers: shared hit=4 read=44448
                                       ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=656.633..2232.407 rows=459925 loops=1)
                                             Hash Cond: (t.id = mi_idx.movie_id)
                                             Buffers: shared hit=4 read=44448
                                             ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=9.223..622.786 rows=2528312 loops=1)
                                                   Buffers: shared hit=1 read=35997
                                             ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=647.252..647.252 rows=459925 loops=1)
                                                   Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.119..517.647 rows=459925 loops=1)
                                                         Hash Cond: (mi_idx.info_type_id = it.id)
                                                         Buffers: shared hit=3 read=8451
                                                         ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.015..223.683 rows=1380035 loops=1)
                                                               Buffers: shared hit=2 read=8451
                                                         ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.070..0.070 rows=1 loops=1)
                                                               Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                               Buffers: shared hit=1
                                                               ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.052..0.058 rows=1 loops=1)
                                                                     Filter: ((info)::text = 'votes'::text)
                                                                     Rows Removed by Filter: 112
                                                                     Buffers: shared hit=1
                           ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.049..0.049 rows=1 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=1
                                 ->  Seq Scan on info_type it  (cost=0.00..0.05 rows=1 width=4) (actual time=0.013..0.035 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739533 width=4) (actual time=2711.827..2711.827 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 77542kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739533 width=4) (actual time=15.064..2218.010 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 5534.833 ms
 Execution Time: 25480.261 ms
(64 rows)

