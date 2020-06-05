                                                                                                   QUERY PLAN                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=78829.93..78829.93 rows=1 width=64) (actual time=18578.185..18578.185 rows=1 loops=1)
   Buffers: shared hit=2654544 read=93325
   ->  Merge Join  (cost=77230.67..78829.93 rows=26 width=23) (actual time=17723.960..18556.822 rows=4700 loops=1)
         Merge Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=2654544 read=93325
         ->  Sort  (cost=77230.66..77234.67 rows=51644 width=27) (actual time=17636.655..17950.475 rows=2009570 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 203408kB
               Buffers: shared hit=2523367 read=91893
               ->  Merge Join  (cost=37466.62..77105.10 rows=51644 width=27) (actual time=13920.302..16702.936 rows=2012691 loops=1)
                     Merge Cond: (t.id = mk.movie_id)
                     Buffers: shared hit=2523363 read=91893
                     ->  Sort  (cost=37466.61..37467.02 rows=5237 width=31) (actual time=13920.274..13955.625 rows=294217 loops=1)
                           Sort Key: mi_idx.movie_id
                           Sort Method: quicksort  Memory: 36535kB
                           Buffers: shared hit=2501721 read=55083
                           ->  Merge Join  (cost=37364.32..37456.56 rows=5237 width=31) (actual time=13702.490..13791.032 rows=294217 loops=1)
                                 Merge Cond: (mi_idx.info_type_id = it.id)
                                 Buffers: shared hit=2501721 read=55083
                                 ->  Sort  (cost=37358.19..37404.13 rows=591741 width=35) (actual time=13646.681..13685.496 rows=567686 loops=1)
                                       Sort Key: mi_idx.info_type_id
                                       Sort Method: quicksort  Memory: 73160kB
                                       Buffers: shared hit=2501720 read=55082
                                       ->  Merge Join  (cost=0.04..35596.33 rows=591741 width=35) (actual time=24.351..13372.666 rows=567753 loops=1)
                                             Merge Cond: (mi_idx.movie_id = t.id)
                                             Buffers: shared hit=2501720 read=55082
                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=855391 width=14) (actual time=0.086..1196.531 rows=855412 loops=1)
                                                   Filter: (info > '2.0'::text)
                                                   Rows Removed by Filter: 524623
                                                   Buffers: shared hit=13571 read=12220
                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.030..11615.666 rows=1748458 loops=1)
                                                   Filter: (production_year > 1990)
                                                   Rows Removed by Filter: 777335
                                                   Buffers: shared hit=2488149 read=42862
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                                       Sort Key: it.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.034..0.035 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'rating'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.022..1790.260 rows=4523925 loops=1)
                           Buffers: shared hit=21642 read=36810
         ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=24.551..338.352 rows=30 loops=1)
               Filter: (keyword ~~ '%sequel%'::text)
               Rows Removed by Filter: 134140
               Buffers: shared hit=131177 read=1432
 Planning Time: 2102.878 ms
 Execution Time: 18629.117 ms
(49 rows)

