                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29087.27..29087.27 rows=1 width=96) (actual time=10447.543..10447.543 rows=1 loops=1)
   Buffers: shared hit=2672834 read=43896
   ->  Merge Join  (cost=5882.04..29087.27 rows=2 width=46) (actual time=1646.326..10424.285 rows=4388 loops=1)
         Merge Cond: (ml.linked_movie_id = t2.id)
         Buffers: shared hit=2672834 read=43896
         ->  Sort  (cost=5879.42..5879.42 rows=2 width=33) (actual time=1638.463..1639.481 rows=4388 loops=1)
               Sort Key: ml.linked_movie_id
               Sort Method: quicksort  Memory: 557kB
               Buffers: shared hit=183635 read=4482
               ->  Merge Join  (cost=5870.75..5879.42 rows=2 width=33) (actual time=1621.238..1624.150 rows=4388 loops=1)
                     Merge Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=183631 read=4482
                     ->  Sort  (cost=5870.74..5870.74 rows=2 width=25) (actual time=1621.218..1621.725 rows=4388 loops=1)
                           Sort Key: ml.link_type_id
                           Sort Method: quicksort  Memory: 506kB
                           Buffers: shared hit=183629 read=4482
                           ->  Merge Join  (cost=5823.91..5870.74 rows=2 width=25) (actual time=1614.988..1618.597 rows=4388 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=183629 read=4482
                                 ->  Sort  (cost=5817.77..5841.19 rows=301621 width=29) (actual time=1574.246..1578.868 rows=25685 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 35199kB
                                       Buffers: shared hit=183629 read=4478
                                       ->  Merge Join  (cost=0.26..4965.25 rows=301621 width=29) (actual time=24.458..1453.782 rows=288192 loops=1)
                                             Merge Cond: (t1.id = ml.movie_id)
                                             Buffers: shared hit=183629 read=4478
                                             ->  Merge Join  (cost=0.22..63166.67 rows=4523930 width=29) (actual time=24.391..1298.636 rows=97855 loops=1)
                                                   Merge Cond: (mk.movie_id = t1.id)
                                                   Buffers: shared hit=183548 read=4237
                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.031..259.298 rows=97855 loops=1)
                                                         Buffers: shared hit=304 read=798
                                                   ->  Index Scan using title_idx_id on title t1  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.032..957.153 rows=186242 loops=1)
                                                         Buffers: shared hit=183244 read=3439
                                             ->  Materialize  (cost=0.01..278.13 rows=29997 width=12) (actual time=0.060..41.341 rows=301429 loops=1)
                                                   Buffers: shared hit=81 read=241
                                                   ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.049..14.329 rows=29997 loops=1)
                                                         Buffers: shared hit=81 read=241
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=29.215..29.216 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=29.199..29.202 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=16) (actual time=0.013..0.022 rows=17 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.014..8433.573 rows=2523213 loops=1)
               Buffers: shared hit=2489199 read=39414
 Planning Time: 1113.469 ms
 Execution Time: 10477.395 ms
(50 rows)

