                                                                                      QUERY PLAN                                                                                      
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=31874.96..31874.96 rows=1 width=96) (actual time=25436.206..25436.206 rows=1 loops=1)
   Buffers: shared hit=15 read=514600
   ->  Hash Join  (cost=14263.86..31874.96 rows=5 width=65) (actual time=14462.138..25413.823 rows=28073 loops=1)
         Hash Cond: (ci.person_id = n.id)
         Buffers: shared hit=15 read=514600
         ->  Hash Join  (cost=11652.42..29263.51 rows=13 width=69) (actual time=11852.793..22785.135 rows=54155 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=11 read=458988
               ->  Seq Scan on cast_info ci  (cost=0.00..17466.00 rows=1245851 width=8) (actual time=359.489..11639.316 rows=1244716 loops=1)
                     Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                     Rows Removed by Filter: 34999628
                     Buffers: shared hit=4 read=252650
               ->  Hash  (cost=11652.42..11652.42 rows=13 width=77) (actual time=10852.875..10852.875 rows=102516 loops=1)
                     Buckets: 131072 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 8671kB
                     Buffers: shared hit=7 read=206338
                     ->  Hash Join  (cost=2077.27..11652.42 rows=13 width=77) (actual time=10048.861..10811.800 rows=102516 loops=1)
                           Hash Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=7 read=206338
                           ->  Hash Join  (cost=0.05..9575.00 rows=1674 width=46) (actual time=7646.278..8320.432 rows=186594 loops=1)
                                 Hash Cond: (mi.info_type_id = it1.id)
                                 Buffers: shared hit=3 read=161890
                                 ->  Seq Scan on movie_info mi  (cost=0.00..9559.36 rows=189170 width=50) (actual time=2800.313..8269.655 rows=188971 loops=1)
                                       Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                       Rows Removed by Filter: 14646749
                                       Buffers: shared hit=2 read=161890
                                 ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.025..0.026 rows=1 loops=1)
                                       Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                       Buffers: shared hit=1
                                       ->  Seq Scan on info_type it1  (cost=0.00..0.05 rows=1 width=4) (actual time=0.009..0.021 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=1
                           ->  Hash  (cost=2075.43..2075.43 rows=12213 width=31) (actual time=2402.503..2402.503 rows=459925 loops=1)
                                 Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 33140kB
                                 Buffers: shared hit=4 read=44448
                                 ->  Hash Join  (cost=476.18..2075.43 rows=12213 width=31) (actual time=656.273..2228.292 rows=459925 loops=1)
                                       Hash Cond: (t.id = mi_idx.movie_id)
                                       Buffers: shared hit=4 read=44448
                                       ->  Seq Scan on title t  (cost=0.00..1303.96 rows=2528312 width=21) (actual time=20.103..638.483 rows=2528312 loops=1)
                                             Buffers: shared hit=1 read=35997
                                       ->  Hash  (cost=474.39..474.39 rows=12213 width=10) (actual time=636.013..636.013 rows=459925 loops=1)
                                             Buckets: 524288 (originally 16384)  Batches: 1 (originally 1)  Memory Usage: 22143kB
                                             Buffers: shared hit=3 read=8451
                                             ->  Hash Join  (cost=0.05..474.39 rows=12213 width=10) (actual time=0.120..511.265 rows=459925 loops=1)
                                                   Hash Cond: (mi_idx.info_type_id = it2.id)
                                                   Buffers: shared hit=3 read=8451
                                                   ->  Seq Scan on movie_info_idx mi_idx  (cost=0.00..360.56 rows=1380035 width=14) (actual time=0.015..215.054 rows=1380035 loops=1)
                                                         Buffers: shared hit=2 read=8451
                                                   ->  Hash  (cost=0.05..0.05 rows=1 width=4) (actual time=0.066..0.066 rows=1 loops=1)
                                                         Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                                         Buffers: shared hit=1
                                                         ->  Seq Scan on info_type it2  (cost=0.00..0.05 rows=1 width=4) (actual time=0.050..0.058 rows=1 loops=1)
                                                               Filter: ((info)::text = 'votes'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=1
         ->  Hash  (cost=2356.12..2356.12 rows=1739438 width=4) (actual time=2604.575..2604.575 rows=1739579 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 77542kB
               Buffers: shared hit=1 read=55612
               ->  Seq Scan on name n  (cost=0.00..2356.12 rows=1739438 width=4) (actual time=8.060..2113.966 rows=1739579 loops=1)
                     Filter: ((gender)::text = 'm'::text)
                     Rows Removed by Filter: 2427912
                     Buffers: shared hit=1 read=55612
 Planning Time: 5558.849 ms
 Execution Time: 25442.155 ms
(64 rows)

