                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=682359.87..682359.87 rows=1 width=96) (actual time=33682.509..33682.509 rows=1 loops=1)
   Buffers: shared hit=2748222 read=255574
   ->  Merge Join  (cost=658880.81..682359.87 rows=1 width=42) (actual time=23995.736..33656.672 rows=4711 loops=1)
         Merge Cond: (t.id = mi_idx.movie_id)
         Buffers: shared hit=2748222 read=255574
         ->  Merge Join  (cost=616479.20..639977.80 rows=1193 width=25) (actual time=18269.550..28313.454 rows=108170 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2502925 read=213602
               ->  Sort  (cost=616479.19..616479.41 rows=2892 width=4) (actual time=17981.220..18021.479 rows=325225 loops=1)
                     Sort Key: mi.movie_id
                     Sort Method: quicksort  Memory: 27535kB
                     Buffers: shared hit=14778 read=170742
                     ->  Merge Join  (cost=0.02..616474.02 rows=2892 width=4) (actual time=1885.004..17839.813 rows=325255 loops=1)
                           Merge Cond: (it1.id = mi.info_type_id)
                           Buffers: shared hit=14774 read=170742
                           ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.012..0.041 rows=1 loops=1)
                                 Filter: ((info)::text = 'genres'::text)
                                 Rows Removed by Filter: 112
                                 Buffers: shared hit=2
                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=326846 width=8) (actual time=1884.982..17755.725 rows=325256 loops=1)
                                 Filter: (info = ANY ('{Drama,Horror,Western,Family}'::text[]))
                                 Rows Removed by Filter: 13381925
                                 Buffers: shared hit=14772 read=170742
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=21.932..10079.520 rows=1042574 loops=1)
                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                     Rows Removed by Filter: 1483165
                     Buffers: shared hit=2488147 read=42860
         ->  Sort  (cost=42401.61..42401.64 rows=372 width=33) (actual time=5298.985..5311.623 rows=91590 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 10296kB
               Buffers: shared hit=245297 read=41972
               ->  Merge Join  (cost=37797.16..42401.12 rows=372 width=33) (actual time=4482.111..5255.539 rows=91314 loops=1)
                     Merge Cond: (mc.company_id = cn.id)
                     Buffers: shared hit=245297 read=41972
                     ->  Sort  (cost=37797.14..37797.22 rows=1030 width=18) (actual time=4482.079..4502.260 rows=154495 loops=1)
                           Sort Key: mc.company_id
                           Sort Method: quicksort  Memory: 13386kB
                           Buffers: shared hit=13577 read=38138
                           ->  Merge Join  (cost=37693.92..37795.54 rows=1030 width=18) (actual time=4182.409..4431.200 rows=154495 loops=1)
                                 Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                 Buffers: shared hit=13577 read=38138
                                 ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2543.634..2602.389 rows=1334883 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 111725kB
                                       Buffers: shared hit=5 read=25917
                                       ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1364.574..2069.809 rows=1334883 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=5 read=25917
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.021..0.025 rows=1 loops=1)
                                                   Filter: ((kind)::text = 'production companies'::text)
                                                   Rows Removed by Filter: 3
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=31.733..1493.465 rows=2609129 loops=1)
                                                   Buffers: shared hit=3 read=25917
                                 ->  Sort  (cost=12703.26..12703.40 rows=1708 width=10) (actual time=1638.754..1647.218 rows=195359 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 8771kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=12670.34..12700.42 rows=1708 width=10) (actual time=1583.532..1610.446 rows=121572 loops=1)
                                             Merge Cond: (it2.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.049..0.049 rows=1 loops=1)
                                                   Sort Key: it2.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.044..0.045 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=12664.21..12679.19 rows=192955 width=14) (actual time=1571.963..1581.185 rows=192935 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 15280kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=192955 width=14) (actual time=0.037..1477.076 rows=192967 loops=1)
                                                         Filter: (info > '7.0'::text)
                                                         Rows Removed by Filter: 1187068
                                                         Buffers: shared hit=13571 read=12220
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.027..701.096 rows=84843 loops=1)
                           Filter: ((country_code)::text = '[us]'::text)
                           Rows Removed by Filter: 150154
                           Buffers: shared hit=231720 read=3834
 Planning Time: 4743.545 ms
 Execution Time: 33714.325 ms
(82 rows)

