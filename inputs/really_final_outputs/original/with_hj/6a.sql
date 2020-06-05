                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18754.78..18754.78 rows=1 width=96) (actual time=17920.392..17920.392 rows=1 loops=1)
   Buffers: shared hit=3 read=368723
   ->  Hash Join  (cost=5368.71..18754.78 rows=1 width=48) (actual time=6726.298..17920.369 rows=6 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=3 read=368723
         ->  Hash Join  (cost=3913.93..17299.92 rows=539 width=40) (actual time=5495.276..16689.358 rows=61 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared read=344265
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3655.443..14849.360 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared read=308267
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=47.551..6585.723 rows=36244344 loops=1)
                           Buffers: shared read=252654
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2643.449..2643.450 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=55613
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=315.831..2643.436 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared read=55613
               ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1838.554..1838.554 rows=391666 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                     Buffers: shared read=35998
                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=5.849..1606.049 rows=391666 loops=1)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 2136646
                           Buffers: shared read=35998
         ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1230.929..1230.930 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared read=24458
               ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=109.936..1230.890 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared read=24458
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=25.937..585.223 rows=4523930 loops=1)
                           Buffers: shared read=24454
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.892..44.892 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.862..44.866 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2201.224 ms
 Execution Time: 17935.038 ms
(43 rows)

