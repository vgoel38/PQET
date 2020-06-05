                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=128229.70..128229.70 rows=1 width=32) (actual time=28379.322..28379.322 rows=1 loops=1)
   Buffers: shared hit=4208425 read=109416
   ->  Merge Join  (cost=105014.96..128229.70 rows=2 width=17) (actual time=20043.208..28352.256 rows=5228 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=4208425 read=109416
         ->  Sort  (cost=105014.93..105014.93 rows=2 width=8) (actual time=19362.496..19363.696 rows=5228 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 438kB
               Buffers: shared hit=1721774 read=66561
               ->  Merge Join  (cost=104975.89..105014.93 rows=2 width=8) (actual time=19346.232..19349.183 rows=5228 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=1721770 read=66561
                     ->  Sort  (cost=104969.75..104989.28 rows=251453 width=12) (actual time=19288.689..19301.099 rows=47880 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 201385kB
                           Buffers: shared hit=1721770 read=66557
                           ->  Merge Join  (cost=64612.30..104269.28 rows=251453 width=12) (actual time=15039.345..18449.032 rows=2199054 loops=1)
                                 Merge Cond: (mc.movie_id = mk.movie_id)
                                 Buffers: shared hit=1721770 read=66557
                                 ->  Sort  (cost=64612.29..64614.31 rows=25981 width=4) (actual time=15039.326..15046.936 rows=56410 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 4181kB
                                       Buffers: shared hit=1681902 read=29747
                                       ->  Merge Join  (cost=0.03..64553.13 rows=25981 width=4) (actual time=3893.327..15010.745 rows=56410 loops=1)
                                             Merge Cond: (cn.id = mc.company_id)
                                             Buffers: shared hit=1681902 read=29747
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=2340 width=4) (actual time=40.364..1880.774 rows=2340 loops=1)
                                                   Filter: ((country_code)::text = '[nl]'::text)
                                                   Rows Removed by Filter: 232657
                                                   Buffers: shared hit=231720 read=3834
                                             ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.036..12591.803 rows=2608824 loops=1)
                                                   Buffers: shared hit=1450182 read=25913
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.013..2347.221 rows=5809325 loops=1)
                                       Buffers: shared hit=39868 read=36810
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=30.381..30.381 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.362..30.365 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.019..8644.129 rows=2524105 loops=1)
               Buffers: shared hit=2486651 read=42855
 Planning Time: 2174.150 ms
 Execution Time: 28417.334 ms
(45 rows)

