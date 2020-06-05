                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=795192.95..795192.95 rows=1 width=96) (actual time=22369.679..22369.680 rows=1 loops=1)
   Buffers: shared hit=4140795 read=164281
   ->  Merge Join  (cost=795192.95..795192.95 rows=1 width=48) (actual time=22369.620..22369.625 rows=2 loops=1)
         Merge Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=4140795 read=164281
         ->  Sort  (cost=795186.81..795186.81 rows=3 width=36) (actual time=22344.601..22344.606 rows=17 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=4140795 read=164277
               ->  Merge Join  (cost=755599.63..795186.81 rows=3 width=36) (actual time=21691.592..22333.793 rows=18 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4140791 read=164277
                     ->  Merge Join  (cost=1310.68..40947.82 rows=784 width=29) (actual time=1262.580..4278.056 rows=1052 loops=1)
                           Merge Cond: (mk.movie_id = t.id)
                           Buffers: shared hit=21522 read=37121
                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.025..2710.350 rows=4507883 loops=1)
                                 Buffers: shared hit=21519 read=36685
                           ->  Sort  (cost=1310.67..1310.70 rows=438 width=21) (actual time=769.125..769.309 rows=438 loops=1)
                                 Sort Key: t.id
                                 Sort Method: quicksort  Memory: 55kB
                                 Buffers: shared hit=3 read=436
                                 ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=43.158..766.900 rows=438 loops=1)
                                       Index Cond: (production_year > 2014)
                                       Buffers: shared hit=3 read=436
                     ->  Sort  (cost=754288.95..754289.22 rows=3479 width=19) (actual time=18055.324..18055.425 rows=502 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 62kB
                           Buffers: shared hit=4119269 read=127156
                           ->  Merge Join  (cost=0.03..754282.59 rows=3479 width=19) (actual time=14139.207..18054.917 rows=486 loops=1)
                                 Merge Cond: (ci.person_id = n.id)
                                 Buffers: shared hit=4119269 read=127156
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.015..12311.602 rows=4303605 loops=1)
                                       Buffers: shared hit=180667 read=56474
                                 ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=515.370..4428.120 rows=2 loops=1)
                                       Filter: (name ~~ '%Downey%Robert%'::text)
                                       Rows Removed by Filter: 4167489
                                       Buffers: shared hit=3938602 read=70682
         ->  Sort  (cost=6.13..6.13 rows=1 width=20) (actual time=24.998..24.999 rows=1 loops=1)
               Sort Key: k.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=24.973..24.977 rows=1 loops=1)
                     Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                     Buffers: shared read=4
 Planning Time: 2418.985 ms
 Execution Time: 22391.055 ms
(46 rows)

