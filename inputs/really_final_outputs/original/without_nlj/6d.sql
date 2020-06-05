                                                                              QUERY PLAN                                                                               
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18943.06..18943.06 rows=1 width=96) (actual time=18062.597..18062.597 rows=1 loops=1)
   Buffers: shared hit=27 read=368730
   ->  Hash Join  (cost=5556.96..18943.06 rows=1 width=48) (actual time=6926.689..18062.541 rows=88 loops=1)
         Hash Cond: (mk.movie_id = t.id)
         Buffers: shared hit=27 read=368730
         ->  Hash Join  (cost=3853.93..17240.03 rows=1 width=39) (actual time=5080.472..16216.283 rows=112 loops=1)
               Hash Cond: (ci.movie_id = mk.movie_id)
               Buffers: shared hit=23 read=332733
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3680.577..14816.222 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.008..6479.124 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2716.430..2716.430 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=271.982..2716.411 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=1497.70..1497.70 rows=270 width=20) (actual time=1399.877..1399.877 rows=35548 loops=1)
                     Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
                     Buffers: shared hit=18 read=24471
                     ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=113.757..1389.181 rows=35548 loops=1)
                           Hash Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=18 read=24471
                           ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.006..667.440 rows=4523930 loops=1)
                                 Buffers: shared hit=3 read=24451
                           ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=92.623..92.624 rows=8 loops=1)
                                 Buckets: 1024  Batches: 1  Memory Usage: 9kB
                                 Buffers: shared hit=15 read=20
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=40.368..92.587 rows=8 loops=1)
                                       Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                       Buffers: shared hit=15 read=20
         ->  Hash  (cost=1500.26..1500.26 rows=1381453 width=21) (actual time=1841.428..1841.428 rows=1381453 loops=1)
               Buckets: 2097152  Batches: 1  Memory Usage: 90381kB
               Buffers: shared hit=1 read=35997
               ->  Seq Scan on title t  (cost=0.00..1500.26 rows=1381453 width=21) (actual time=25.585..1249.164 rows=1381453 loops=1)
                     Filter: (production_year > 2000)
                     Rows Removed by Filter: 1146859
                     Buffers: shared hit=1 read=35997
 Planning Time: 2664.705 ms
 Execution Time: 18064.693 ms
(43 rows)

