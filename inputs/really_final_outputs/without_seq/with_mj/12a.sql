                                                                                                          QUERY PLAN                                                                                                           
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=680746.86..680746.86 rows=1 width=96) (actual time=33305.316..33305.316 rows=1 loops=1)
   Buffers: shared hit=2745255 read=255565
   ->  Merge Join  (cost=657300.59..680746.86 rows=1 width=42) (actual time=24379.524..33304.720 rows=397 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=2745255 read=255565
         ->  Merge Join  (cost=41978.28..65424.18 rows=18 width=54) (actual time=5549.732..14646.596 rows=5674 loops=1)
               Merge Cond: (mi_idx.movie_id = t.id)
               Buffers: shared hit=2730481 read=84823
               ->  Sort  (cost=41978.27..41978.28 rows=102 width=33) (actual time=4888.516..4891.701 rows=19791 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 2333kB
                     Buffers: shared hit=245301 read=41972
                     ->  Merge Join  (cost=37374.34..41978.16 rows=102 width=33) (actual time=4118.109..4878.393 rows=19791 loops=1)
                           Merge Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=245297 read=41972
                           ->  Sort  (cost=37374.33..37374.35 rows=282 width=18) (actual time=4097.685..4100.850 rows=24233 loops=1)
                                 Sort Key: mc.company_id
                                 Sort Method: quicksort  Memory: 1904kB
                                 Buffers: shared hit=13577 read=38138
                                 ->  Merge Join  (cost=37272.59..37373.97 rows=282 width=18) (actual time=3892.726..4089.770 rows=24233 loops=1)
                                       Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                       Buffers: shared hit=13577 read=38138
                                       ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2479.220..2538.572 rows=1334855 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 111725kB
                                             Buffers: shared hit=5 read=25917
                                             ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1259.955..1970.080 rows=1334883 loops=1)
                                                   Merge Cond: (ct.id = mc.company_type_id)
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.021..0.024 rows=1 loops=1)
                                                         Filter: ((kind)::text = 'production companies'::text)
                                                         Rows Removed by Filter: 3
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=13.339..1397.839 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=25917
                                       ->  Sort  (cost=12281.94..12281.97 rows=468 width=10) (actual time=1413.488..1415.079 rows=28602 loops=1)
                                             Sort Key: mi_idx.movie_id
                                             Sort Method: quicksort  Memory: 1127kB
                                             Buffers: shared hit=13572 read=12221
                                             ->  Merge Join  (cost=12273.05..12281.29 rows=468 width=10) (actual time=1404.536..1408.310 rows=15849 loops=1)
                                                   Merge Cond: (it2.id = mi_idx.info_type_id)
                                                   Buffers: shared hit=13572 read=12221
                                                   ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.044..0.044 rows=1 loops=1)
                                                         Sort Key: it2.id
                                                         Sort Method: quicksort  Memory: 25kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                                   ->  Sort  (cost=12266.92..12271.03 rows=52860 width=14) (actual time=1398.298..1401.143 rows=52842 loops=1)
                                                         Sort Key: mi_idx.info_type_id
                                                         Sort Method: quicksort  Memory: 4065kB
                                                         Buffers: shared hit=13571 read=12220
                                                         ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=0.040..1364.092 rows=52862 loops=1)
                                                               Filter: (info > '8.0'::text)
                                                               Rows Removed by Filter: 1327173
                                                               Buffers: shared hit=13571 read=12220
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.020..759.793 rows=84843 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 150154
                                 Buffers: shared hit=231720 read=3834
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=445860 width=21) (actual time=6.857..9694.878 rows=445397 loops=1)
                     Filter: ((production_year >= 2005) AND (production_year <= 2008))
                     Rows Removed by Filter: 2077235
                     Buffers: shared hit=2485180 read=42851
         ->  Sort  (cost=615322.30..615322.49 rows=2427 width=4) (actual time=18611.540..18628.008 rows=271788 loops=1)
               Sort Key: mi.movie_id
               Sort Method: quicksort  Memory: 25072kB
               Buffers: shared hit=14774 read=170742
               ->  Merge Join  (cost=0.02..615318.07 rows=2427 width=4) (actual time=1976.560..18480.973 rows=272720 loops=1)
                     Merge Cond: (it1.id = mi.info_type_id)
                     Buffers: shared hit=14774 read=170742
                     ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.014..0.039 rows=1 loops=1)
                           Filter: ((info)::text = 'genres'::text)
                           Rows Removed by Filter: 112
                           Buffers: shared hit=2
                     ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=274233 width=8) (actual time=1976.535..18402.879 rows=272721 loops=1)
                           Filter: (info = ANY ('{Drama,Horror}'::text[]))
                           Rows Removed by Filter: 13434460
                           Buffers: shared hit=14772 read=170742
 Planning Time: 4764.328 ms
 Execution Time: 33339.687 ms
(82 rows)

