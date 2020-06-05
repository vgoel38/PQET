                                                                                                      QUERY PLAN                                                                                                      
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58772.03..58772.03 rows=1 width=68) (actual time=13270.602..13270.602 rows=1 loops=1)
   Buffers: shared hit=2449137 read=80500
   ->  Merge Join  (cost=35557.27..58772.02 rows=42 width=45) (actual time=9931.155..13270.305 rows=142 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=2449137 read=80500
         ->  Sort  (cost=35557.25..35557.25 rows=42 width=32) (actual time=3364.716..3364.774 rows=142 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 36kB
               Buffers: shared hit=14592 read=38139
               ->  Merge Join  (cost=35556.47..35557.21 rows=42 width=32) (actual time=3353.877..3353.937 rows=142 loops=1)
                     Merge Cond: (mi_idx.info_type_id = it.id)
                     Buffers: shared hit=14588 read=38139
                     ->  Sort  (cost=35550.35..35550.71 rows=4733 width=36) (actual time=3342.976..3346.367 rows=62015 loops=1)
                           Sort Key: mi_idx.info_type_id
                           Sort Method: quicksort  Memory: 6737kB
                           Buffers: shared hit=14587 read=38138
                           ->  Merge Join  (cost=23402.60..35541.37 rows=4733 width=36) (actual time=1868.719..3313.826 rows=62017 loops=1)
                                 Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=14587 read=38138
                                 ->  Sort  (cost=23402.59..23402.87 rows=3709 width=28) (actual time=1848.980..1852.715 rows=28657 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 2821kB
                                       Buffers: shared hit=4 read=25918
                                       ->  Merge Join  (cost=0.02..23395.76 rows=3709 width=28) (actual time=1106.546..1834.937 rows=28657 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=4 read=25918
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.056..0.059 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23385.16 rows=14835 width=32) (actual time=233.221..1826.752 rows=28889 loops=1)
                                                   Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND ((note ~~ '%(co-production)%'::text) OR (note ~~ '%(presents)%'::text)))
                                                   Rows Removed by Filter: 2580240
                                                   Buffers: shared hit=2 read=25918
                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.014..1135.328 rows=1403492 loops=1)
                                       Buffers: shared hit=14583 read=12220
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'top 250 rank'::text)
                                 Buffers: shared hit=1 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.014..9570.258 rows=2471561 loops=1)
               Buffers: shared hit=2434545 read=42361
 Planning Time: 2128.706 ms
 Execution Time: 13291.466 ms
(47 rows)

