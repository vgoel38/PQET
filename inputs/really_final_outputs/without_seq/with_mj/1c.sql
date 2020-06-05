                                                                                                     QUERY PLAN                                                                                                      
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=58591.97..58591.97 rows=1 width=68) (actual time=11570.977..11570.977 rows=1 loops=1)
   Buffers: shared hit=2144976 read=75548
   ->  Merge Join  (cost=35346.87..58591.97 rows=4 width=45) (actual time=10959.583..11570.926 rows=3 loops=1)
         Merge Cond: (mc.movie_id = t.id)
         Buffers: shared hit=2144976 read=75548
         ->  Sort  (cost=35346.86..35346.86 rows=26 width=32) (actual time=3569.527..3569.539 rows=23 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=14438 read=38139
               ->  Merge Join  (cost=35346.38..35346.84 rows=26 width=32) (actual time=3569.312..3569.319 rows=23 loops=1)
                     Merge Cond: (mi_idx.info_type_id = it.id)
                     Buffers: shared hit=14434 read=38139
                     ->  Sort  (cost=35340.26..35340.48 rows=2916 width=36) (actual time=3562.602..3564.596 rows=36986 loops=1)
                           Sort Key: mi_idx.info_type_id
                           Sort Method: quicksort  Memory: 4482kB
                           Buffers: shared hit=14433 read=38138
                           ->  Merge Join  (cost=23196.62..35335.05 rows=2916 width=36) (actual time=2004.267..3543.458 rows=36986 loops=1)
                                 Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=14433 read=38138
                                 ->  Sort  (cost=23196.60..23196.78 rows=2285 width=28) (actual time=1977.800..1980.514 rows=17811 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 2170kB
                                       Buffers: shared hit=4 read=25918
                                       ->  Merge Join  (cost=0.02..23192.64 rows=2285 width=28) (actual time=1125.936..1968.089 rows=17811 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=4 read=25918
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.043..0.047 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=9141 width=32) (actual time=683.304..1962.542 rows=17816 loops=1)
                                                   Filter: ((note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text) AND (note ~~ '%(co-production)%'::text))
                                                   Rows Removed by Filter: 2591313
                                                   Buffers: shared hit=2 read=25918
                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.017..1242.551 rows=1399419 loops=1)
                                       Buffers: shared hit=14429 read=12220
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.042..0.042 rows=1 loops=1)
                           Sort Key: it.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=1)
                                 Index Cond: ((info)::text = 'top 250 rank'::text)
                                 Buffers: shared hit=1 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=25) (actual time=58.431..7960.975 rows=340468 loops=1)
               Filter: (production_year > 2010)
               Rows Removed by Filter: 1822759
               Buffers: shared hit=2130538 read=37409
 Planning Time: 2205.186 ms
 Execution Time: 11589.956 ms
(49 rows)

