                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=683395.19..683395.19 rows=1 width=32) (actual time=116177.976..116177.977 rows=1 loops=1)
   Buffers: shared hit=11714029 read=283530
   ->  Merge Join  (cost=66746.42..683395.19 rows=2 width=17) (actual time=56026.795..116177.903 rows=5 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=11714029 read=283530
         ->  Sort  (cost=66746.41..66746.44 rows=350 width=25) (actual time=16807.181..16807.678 rows=404 loops=1)
               Sort Key: mk.movie_id
               Sort Method: quicksort  Memory: 58kB
               Buffers: shared hit=2641013 read=81107
               ->  Merge Join  (cost=65045.87..66745.95 rows=350 width=25) (actual time=16435.161..16796.213 rows=405 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=2641009 read=81107
                     ->  Sort  (cost=65045.85..65100.27 rows=700813 width=29) (actual time=16389.468..16438.084 rows=298966 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 36669kB
                           Buffers: shared hit=2509832 read=79675
                           ->  Merge Join  (cost=0.21..62932.68 rows=700813 width=29) (actual time=59.100..16221.377 rows=299534 loops=1)
                                 Merge Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2509832 read=79675
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.025..3459.960 rows=4523930 loops=1)
                                       Buffers: shared hit=21643 read=36810
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=59.061..11832.195 rows=391550 loops=1)
                                       Filter: (production_year > 2010)
                                       Rows Removed by Filter: 2134423
                                       Buffers: shared hit=2488189 read=42865
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=28.000..309.059 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..616648.54 rows=2428 width=4) (actual time=1285.278..99365.709 rows=2289 loops=1)
               Filter: (info = 'Bulgaria'::text)
               Rows Removed by Filter: 14834015
               Buffers: shared hit=9073016 read=202423
 Planning Time: 1968.081 ms
 Execution Time: 116245.025 ms
(35 rows)

