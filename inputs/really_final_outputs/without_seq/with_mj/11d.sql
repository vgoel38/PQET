                                                                                                           QUERY PLAN                                                                                                            
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10941.83..10941.83 rows=1 width=96) (actual time=2562.533..2562.533 rows=1 loops=1)
   Buffers: shared hit=226388 read=6170
   ->  Merge Join  (cost=6328.33..10941.83 rows=12 width=60) (actual time=2241.715..2534.316 rows=14899 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=226388 read=6170
         ->  Sort  (cost=6328.32..6328.32 rows=13 width=45) (actual time=2193.328..2194.805 rows=14916 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 1733kB
               Buffers: shared hit=224606 read=5311
               ->  Merge Join  (cost=6319.12..6328.31 rows=13 width=45) (actual time=2181.480..2187.640 rows=14916 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=224602 read=5311
                     ->  Sort  (cost=6319.12..6319.12 rows=17 width=49) (actual time=2181.459..2182.523 rows=15510 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 1984kB
                           Buffers: shared hit=224600 read=5311
                           ->  Merge Join  (cost=3714.28..6319.11 rows=17 width=49) (actual time=1854.421..2171.025 rows=15510 loops=1)
                                 Merge Cond: (mc.movie_id = ml.movie_id)
                                 Buffers: shared hit=224600 read=5311
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1337140 width=36) (actual time=0.035..318.446 rows=42219 loops=1)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 41437
                                       Buffers: shared hit=38060 read=824
                                 ->  Sort  (cost=3714.26..3714.27 rows=6 width=29) (actual time=1829.439..1831.584 rows=15913 loops=1)
                                       Sort Key: mk.movie_id
                                       Sort Method: quicksort  Memory: 159kB
                                       Buffers: shared hit=186540 read=4487
                                       ->  Merge Join  (cost=3705.59..3714.26 rows=6 width=29) (actual time=1827.926..1828.705 rows=1460 loops=1)
                                             Merge Cond: (ml.link_type_id = lt.id)
                                             Buffers: shared hit=186540 read=4487
                                             ->  Sort  (cost=3705.58..3705.58 rows=6 width=33) (actual time=1827.909..1828.034 rows=1460 loops=1)
                                                   Sort Key: ml.link_type_id
                                                   Sort Method: quicksort  Memory: 166kB
                                                   Buffers: shared hit=186538 read=4487
                                                   ->  Merge Join  (cost=3663.21..3705.58 rows=6 width=33) (actual time=1824.538..1827.239 rows=1460 loops=1)
                                                         Merge Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=186538 read=4487
                                                         ->  Sort  (cost=3644.81..3666.00 rows=272866 width=37) (actual time=1741.589..1752.953 rows=48583 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 36870kB
                                                               Buffers: shared hit=186532 read=4478
                                                               ->  Merge Join  (cost=0.05..2879.69 rows=272866 width=37) (actual time=29.008..1549.418 rows=286392 loops=1)
                                                                     Merge Cond: (ml.movie_id = mk.movie_id)
                                                                     Buffers: shared hit=186532 read=4478
                                                                     ->  Merge Join  (cost=0.03..2004.27 rows=27137 width=29) (actual time=28.958..1075.988 rows=29726 loops=1)
                                                                           Merge Cond: (ml.movie_id = t.id)
                                                                           Buffers: shared hit=183258 read=3680
                                                                           ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.039..29.609 rows=29997 loops=1)
                                                                                 Buffers: shared hit=81 read=241
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=2287272 width=21) (actual time=0.031..1005.602 rows=177924 loops=1)
                                                                                 Filter: (production_year > 1950)
                                                                                 Rows Removed by Filter: 8251
                                                                                 Buffers: shared hit=183177 read=3439
                                                                     ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.042..348.982 rows=359530 loops=1)
                                                                           Buffers: shared hit=3274 read=798
                                                         ->  Sort  (cost=18.40..18.40 rows=3 width=4) (actual time=58.775..58.775 rows=3 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=6 read=9
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=32.092..58.751 rows=3 loops=1)
                                                                     Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                                     Buffers: shared hit=6 read=9
                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=18 width=4) (actual time=0.011..0.018 rows=16 loops=1)
                                                   Buffers: shared hit=2
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=3 width=4) (actual time=0.015..0.019 rows=2 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=210031 width=23) (actual time=0.020..333.320 rows=2526 loops=1)
               Filter: ((country_code)::text <> '[pl]'::text)
               Rows Removed by Filter: 106
               Buffers: shared hit=1782 read=859
 Planning Time: 3305.387 ms
 Execution Time: 2590.442 ms
(74 rows)

