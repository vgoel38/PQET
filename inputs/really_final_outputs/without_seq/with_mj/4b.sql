                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=76635.03..76635.03 rows=1 width=64) (actual time=14800.864..14800.864 rows=1 loops=1)
   Buffers: shared hit=2593147 read=92347
   ->  Merge Join  (cost=53389.46..76635.03 rows=1 width=23) (actual time=11915.651..14800.783 rows=6 loops=1)
         Merge Cond: (mi_idx.movie_id = t.id)
         Buffers: shared hit=2593147 read=92347
         ->  Sort  (cost=53389.45..53389.45 rows=1 width=14) (actual time=4977.014..4977.034 rows=21 loops=1)
               Sort Key: mi_idx.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=166098 read=50006
               ->  Merge Join  (cost=51798.10..53389.45 rows=1 width=14) (actual time=4660.159..4966.174 rows=21 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=166094 read=50006
                     ->  Sort  (cost=51798.09..51798.14 rows=680 width=18) (actual time=4612.234..4613.443 rows=6030 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 475kB
                           Buffers: shared hit=34917 read=48574
                           ->  Merge Join  (cost=12161.17..51797.10 rows=680 width=18) (actual time=1643.676..4607.241 rows=6032 loops=1)
                                 Merge Cond: (mi_idx.movie_id = mk.movie_id)
                                 Buffers: shared hit=34917 read=48574
                                 ->  Sort  (cost=12161.16..12161.16 rows=69 width=10) (actual time=1423.963..1424.069 rows=305 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 39kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=12159.88..12161.09 rows=69 width=10) (actual time=1423.785..1423.856 rows=305 loops=1)
                                             Merge Cond: (it.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.078..0.079 rows=1 loops=1)
                                                   Sort Key: it.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.050..0.051 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=12153.75..12154.36 rows=7778 width=14) (actual time=1422.514..1422.879 rows=7785 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 565kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=7778 width=14) (actual time=0.557..1416.395 rows=7793 loops=1)
                                                         Filter: (info > '9.0'::text)
                                                         Rows Removed by Filter: 1372242
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2475.900 rows=4466950 loops=1)
                                       Buffers: shared hit=21345 read=36353
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=47.591..350.376 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=59.237..9778.210 rows=383046 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 2081016
               Buffers: shared hit=2427049 read=42341
 Planning Time: 2089.372 ms
 Execution Time: 14818.679 ms
(53 rows)

