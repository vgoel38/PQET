                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=29087.27..29087.27 rows=1 width=96) (actual time=1619.901..1619.901 rows=1 loops=1)
   Buffers: shared hit=183633 read=4482
   ->  Merge Join  (cost=5882.04..29087.27 rows=2 width=46) (actual time=1619.863..1619.863 rows=0 loops=1)
         Merge Cond: (ml.linked_movie_id = t.id)
         Buffers: shared hit=183633 read=4482
         ->  Sort  (cost=5879.42..5879.42 rows=2 width=33) (actual time=1619.862..1619.862 rows=0 loops=1)
               Sort Key: ml.linked_movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=183633 read=4482
               ->  Merge Join  (cost=5870.75..5879.42 rows=2 width=33) (actual time=1609.053..1609.053 rows=0 loops=1)
                     Merge Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=183629 read=4482
                     ->  Sort  (cost=5870.74..5870.74 rows=2 width=25) (actual time=1609.052..1609.052 rows=0 loops=1)
                           Sort Key: ml.link_type_id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=183629 read=4482
                           ->  Merge Join  (cost=5823.91..5870.74 rows=2 width=25) (actual time=1609.040..1609.040 rows=0 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=183629 read=4482
                                 ->  Sort  (cost=5817.77..5841.19 rows=301621 width=29) (actual time=1521.311..1548.749 rows=288192 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 35199kB
                                       Buffers: shared hit=183629 read=4478
                                       ->  Merge Join  (cost=0.26..4965.25 rows=301621 width=29) (actual time=24.374..1404.894 rows=288192 loops=1)
                                             Merge Cond: (t.id = ml.movie_id)
                                             Buffers: shared hit=183629 read=4478
                                             ->  Merge Join  (cost=0.22..63166.67 rows=4523930 width=29) (actual time=24.324..1238.695 rows=97855 loops=1)
                                                   Merge Cond: (mk.movie_id = t.id)
                                                   Buffers: shared hit=183548 read=4237
                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.031..190.019 rows=97855 loops=1)
                                                         Buffers: shared hit=304 read=798
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.032..970.408 rows=186242 loops=1)
                                                         Buffers: shared hit=183244 read=3439
                                             ->  Materialize  (cost=0.01..278.13 rows=29997 width=12) (actual time=0.044..55.477 rows=301429 loops=1)
                                                   Buffers: shared hit=81 read=241
                                                   ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.033..28.932 rows=29997 loops=1)
                                                         Buffers: shared hit=81 read=241
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=17.171..17.171 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=17.155..17.158 rows=1 loops=1)
                                             Index Cond: (keyword = '10,000-mile-club'::text)
                                             Buffers: shared read=4
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=16) (never executed)
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (never executed)
 Planning Time: 1226.954 ms
 Execution Time: 1661.090 ms
(48 rows)

