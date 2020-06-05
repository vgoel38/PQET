                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=77374.01..77374.01 rows=1 width=64) (actual time=17220.303..17220.303 rows=1 loops=1)
   Buffers: shared hit=2654544 read=93325
   ->  Merge Join  (cost=75779.93..77374.00 rows=9 width=23) (actual time=16719.884..17197.569 rows=740 loops=1)
         Merge Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2654544 read=93325
         ->  Sort  (cost=75779.92..75781.34 rows=18242 width=27) (actual time=16650.788..16754.230 rows=696501 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 77466kB
               Buffers: shared hit=2523367 read=91893
               ->  Merge Join  (cost=36102.29..75739.83 rows=18242 width=27) (actual time=13392.434..16305.104 rows=697651 loops=1)
                     Merge Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=2523363 read=91893
                     ->  Sort  (cost=36102.28..36102.42 rows=1850 width=31) (actual time=13392.411..13402.572 rows=106021 loops=1)
                           Sort Key: mi_idx.movie_id
                           Sort Method: quicksort  Memory: 11766kB
                           Buffers: shared hit=2501721 read=55083
                           ->  Merge Join  (cost=36066.58..36099.16 rows=1850 width=31) (actual time=13325.300..13356.735 rows=106021 loops=1)
                                 Merge Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=2501721 read=55083
                                 ->  Sort  (cost=36060.45..36076.68 rows=209012 width=35) (actual time=13314.327..13323.781 rows=160524 loops=1)
                                       Sort Key: mi_idx.info_type_id
                                       Sort Method: quicksort  Memory: 19689kB
                                       Buffers: shared hit=2501720 read=55082
                                       ->  Merge Join  (cost=0.03..35486.86 rows=209012 width=35) (actual time=24.404..13234.894 rows=160530 loops=1)
                                             Merge Cond: (mi_idx.movie_id = t.id)
                                             Buffers: shared hit=2501720 read=55082
                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=521708 width=14) (actual time=0.077..1332.686 rows=521723 loops=1)
                                                   Filter: (info > '5.0'::text)
                                                   Rows Removed by Filter: 858312
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=24.319..11599.636 rows=1012657 loops=1)
                                                   Filter: (production_year > 2005)
                                                   Rows Removed by Filter: 1513136
                                                   Buffers: shared hit=2488149 read=42862
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.036..0.036 rows=1 loops=1)
                                       Sort Key: it.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.025..0.026 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2086.012 rows=4523925 loops=1)
                           Buffers: shared hit=21642 read=36810
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=44.162..349.487 rows=30 loops=1)
               Filter: (keyword ~~ '%sequel%'::text)
               Rows Removed by Filter: 134140
               Buffers: shared hit=131177 read=1432
 Planning Time: 2360.622 ms
 Execution Time: 17267.148 ms
(49 rows)

