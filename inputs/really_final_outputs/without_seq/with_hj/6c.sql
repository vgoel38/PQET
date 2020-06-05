                                                                                     QUERY PLAN                                                                                      
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=796614.55..796614.55 rows=1 width=96) (actual time=65580.370..65580.370 rows=1 loops=1)
   Buffers: shared hit=5811997 read=459629
   ->  Hash Join  (cost=89783.32..796614.55 rows=1 width=48) (actual time=17586.774..65580.344 rows=2 loops=1)
         Hash Cond: (t.id = mk.movie_id)
         Buffers: shared hit=5811997 read=459629
         ->  Hash Join  (cost=50122.58..756953.81 rows=1 width=40) (actual time=14768.659..62762.429 rows=3 loops=1)
               Hash Cond: (ci.movie_id = t.id)
               Buffers: shared hit=5790358 read=422808
               ->  Hash Join  (cost=48812.44..755643.39 rows=3479 width=19) (actual time=13990.081..61983.701 rows=486 loops=1)
                     Hash Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5790355 read=422372
                     ->  Index Scan using person_id_cast_info on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=46.926..48163.639 rows=36244344 loops=1)
                           Buffers: shared hit=1851757 read=351686
                     ->  Hash  (cost=48812.37..48812.37 rows=400 width=19) (actual time=4153.438..4153.438 rows=2 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared hit=3938598 read=70686
                           ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=400 width=19) (actual time=494.348..4153.421 rows=2 loops=1)
                                 Filter: (name ~~ '%Downey%Robert%'::text)
                                 Rows Removed by Filter: 4167489
                                 Buffers: shared hit=3938598 read=70686
               ->  Hash  (cost=1310.07..1310.07 rows=438 width=21) (actual time=778.471..778.471 rows=438 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 32kB
                     Buffers: shared hit=3 read=436
                     ->  Index Scan using title_idx_production_year on title t  (cost=0.01..1310.07 rows=438 width=21) (actual time=52.638..776.639 rows=438 loops=1)
                           Index Cond: (production_year > 2014)
                           Buffers: shared hit=3 read=436
         ->  Hash  (cost=39660.73..39660.73 rows=34 width=20) (actual time=2817.840..2817.840 rows=14 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 9kB
               Buffers: shared hit=21636 read=36821
               ->  Hash Join  (cost=6.15..39660.73 rows=34 width=20) (actual time=127.050..2817.800 rows=14 loops=1)
                     Hash Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=21636 read=36821
                     ->  Index Scan using movie_id_movie_keyword on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=34.250..1985.456 rows=4523930 loops=1)
                           Buffers: shared hit=21636 read=36817
                     ->  Hash  (cost=6.13..6.13 rows=1 width=20) (actual time=44.869..44.869 rows=1 loops=1)
                           Buckets: 1024  Batches: 1  Memory Usage: 9kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=44.847..44.851 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
 Planning Time: 2174.016 ms
 Execution Time: 65596.738 ms
(42 rows)

