                                                                              QUERY PLAN                                                                              
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=18550.05..18550.05 rows=1 width=96) (actual time=16630.471..16630.471 rows=1 loops=1)
   Buffers: shared hit=29 read=333169
   ->  Hash Join  (cost=5164.06..18550.05 rows=1 width=48) (actual time=5685.995..16630.443 rows=12 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=29 read=333169
         ->  Hash Join  (cost=3666.32..17052.30 rows=1 width=40) (actual time=4465.406..15409.899 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=8 read=308698
               ->  Hash Join  (cost=2356.18..15741.88 rows=3479 width=19) (actual time=3654.415..14598.846 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5 read=308262
                     ->  Seq Scan on cast_info ci  (cost=0.00..10431.00 rows=36244344 width=8) (actual time=0.017..6262.977 rows=36244344 loops=1)
                           Buffers: shared hit=4 read=252650
                     ->  Hash  (cost=2356.12..2356.12 rows=400 width=19) (actual time=2690.499..2690.500 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=1 read=55612
                           ->  Seq Scan on name n  (cost=0.00..2356.12 rows=400 width=19) (actual time=279.147..2690.480 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=1 read=55612
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=810.947..810.947 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=51.797..809.088 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=1497.70..1497.70 rows=270 width=20) (actual time=1220.519..1220.519 rows=35548 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
               Buffers: shared hit=18 read=24471
               ->  Hash Join  (cost=49.06..1497.70 rows=270 width=20) (actual time=65.733..1209.343 rows=35548 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=18 read=24471
                     ->  Seq Scan on movie_keyword mk  (cost=0.00..1079.84 rows=4523930 width=8) (actual time=0.005..530.372 rows=4523930 loops=1)
                           Buffers: shared hit=3 read=24451
                     ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=65.197..65.197 rows=8 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=37.957..65.147 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
 Planning Time: 2646.747 ms
 Execution Time: 16630.789 ms
(42 rows)

