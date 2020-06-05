                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18507.09..18507.09 rows=1 width=96) (actual time=16653.001..16653.001 rows=1 loops=1)
   Buffers: shared hit=14 read=333153
   ->  Hash Join  (cost=5121.10..18507.09 rows=1 width=48) (actual time=5626.187..16652.956 rows=2 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=14 read=333153
         ->  Hash Join  (cost=3666.32..17052.30 rows=1 width=40) (actual time=4431.353..15458.167 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=8 read=308698
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3571.438..14598.198 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.017..6360.383 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2607.098..2607.098 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=279.395..2607.086 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=859.872..859.872 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=50.842..857.883 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=1454.78..1454.78 rows=34 width=20) (actual time=1194.726..1194.726 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=3 read=24455
               ->  Hash Join  (cost=6.13..1454.78 rows=34 width=20) (actual time=64.742..1194.686 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=3 read=24455
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.013..550.768 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=28.271..28.271 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=28.251..28.253 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2901.140 ms
 Execution Time: 16667.192 ms
(42 rows)

