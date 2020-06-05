                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=796657.51..796657.51 rows=1 width=96) (actual time=65803.384..65803.384 rows=1 loops=1)
   Buffers: shared hit=5812012 read=459645
   ->  Hash Join  (cost=89826.28..796657.51 rows=1 width=48) (actual time=18197.945..65803.337 rows=12 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=5812012 read=459645
         ->  Hash Join  (cost=50122.58..756953.81 rows=1 width=40) (actual time=14890.901..62496.497 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=5790358 read=422808
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=19) (actual time=14111.906..61717.349 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=46.928..48054.098 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=19) (actual time=4102.824..4102.824 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=458.586..4102.814 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=778.886..778.886 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=53.050..776.938 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=39703.66..39703.66 rows=270 width=20) (actual time=3306.804..3306.804 rows=35548 loops=1)
               Buckets: 65536 (originally 1024)  Batches: 1 (originally 1)  Memory Usage: 2124kB
               Buffers: shared hit=21651 read=36837
               ->  Hash Join  (cost=49.07..39703.66 rows=270 width=20) (actual time=170.431..3291.631 rows=35548 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=21651 read=36837
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=73.654..2347.711 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
                     ->  Hash  (cost=49.06..49.06 rows=8 width=20) (actual time=95.848..95.848 rows=8 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=15 read=20
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..49.06 rows=8 width=20) (actual time=43.608..95.798 rows=8 loops=1)
                                 Index Cond: (keyword = ANY ('{superhero,sequel,second-part,marvel-comics,based-on-comic,tv-special,fight,violence}'::text[]))
                                 Buffers: shared hit=15 read=20
 Planning Time: 2184.118 ms
 Execution Time: 65803.693 ms
(42 rows)

