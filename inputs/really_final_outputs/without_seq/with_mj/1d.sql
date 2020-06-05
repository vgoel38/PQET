                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=60279.14..60279.14 rows=1 width=68) (actual time=14275.618..14275.619 rows=1 loops=1)
   Buffers: shared hit=2505377 read=80999
   ->  Merge Join  (cost=60242.33..60278.66 rows=2063 width=45) (actual time=14275.570..14275.572 rows=4 loops=1)
         Merge Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=2505377 read=80999
         ->  Sort  (cost=60236.20..60254.29 rows=233048 width=49) (actual time=14241.868..14256.917 rows=166215 loops=1)
               Sort Key: mi_idx.info_type_id
               Sort Method: quicksort  Memory: 22990kB
               Buffers: shared hit=2505376 read=80998
               ->  Merge Join  (cost=24068.67..59590.97 rows=233048 width=49) (actual time=2518.370..14161.787 rows=166215 loops=1)
                     Merge Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2505372 read=80998
                     ->  Merge Join  (cost=24068.66..47455.07 rows=182643 width=53) (actual time=2498.671..12745.490 rows=85570 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=2488151 read=68778
                           ->  Sort  (cost=24068.63..24094.58 rows=334271 width=28) (actual time=1998.166..2018.990 rows=140904 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 16562kB
                                 Buffers: shared hit=4 read=25918
                                 ->  Merge Join  (cost=0.02..23116.13 rows=334271 width=28) (actual time=1082.509..1933.784 rows=140904 loops=1)
                                       Merge Cond: (ct.id = mc.company_type_id)
                                       Buffers: shared hit=4 read=25918
                                       ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.058..0.061 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22980.02 rows=1337085 width=32) (actual time=8.686..1755.870 rows=1337088 loops=1)
                                             Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                             Rows Removed by Filter: 1272041
                                             Buffers: shared hit=2 read=25918
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=25) (actual time=9.428..10467.640 rows=1381072 loops=1)
                                 Filter: (production_year > 2000)
                                 Rows Removed by Filter: 1144651
                                 Buffers: shared hit=2488147 read=42860
                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.020..1122.532 rows=1471956 loops=1)
                           Buffers: shared hit=17221 read=12220
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.030..0.030 rows=1 loops=1)
                     Index Cond: ((info)::text = 'bottom 10 rank'::text)
                     Buffers: shared hit=1 read=1
 Planning Time: 2100.555 ms
 Execution Time: 14310.208 ms
(45 rows)

