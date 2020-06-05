                                                                           QUERY PLAN                                                                           
----------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18754.78..18754.78 rows=1 width=96) (actual time=17870.388..17870.388 rows=1 loops=1)
   Buffers: shared hit=12 read=368714
   ->  Hash Join  (cost=5368.71..18754.78 rows=1 width=48) (actual time=6676.911..17870.358 rows=6 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=12 read=368714
         ->  Hash Join  (cost=3913.93..17299.92 rows=539 width=40) (actual time=5484.204..16677.663 rows=61 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=6 read=344259
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3572.478..14765.763 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.007..6529.421 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2609.553..2609.554 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=280.894..2609.537 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=1500.26..1500.26 rows=391667 width=21) (actual time=1910.479..1910.479 rows=391666 loops=1)
                     Buckets: 524288  Batches: 1  Memory Usage: 25255kB
                     Buffers: shared hit=1 read=35997
                     ->  Seq Scan on title t  (cost=0.00..1500.26 rows=391667 width=21) (actual time=10.993..1678.792 rows=391666 loops=1)
                           Filter: (production_year > 2010)
                           Rows Removed by Filter: 2136646
                           Buffers: shared hit=1 read=35997
         ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1192.613..1192.613 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=3 read=24455
               ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=65.147..1192.579 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=3 read=24455
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.013..553.771 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=28.269..28.269 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=28.249..28.251 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2686.838 ms
 Execution Time: 17932.658 ms
(43 rows)

