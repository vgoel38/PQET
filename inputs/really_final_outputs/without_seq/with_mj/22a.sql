                                                                                                                                    QUERY PLAN                                                                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=719980.74..719980.74 rows=1 width=96) (actual time=30511.643..30511.643 rows=1 loops=1)
   Buffers: shared hit=2598507 read=264429
   ->  Merge Join  (cost=715373.76..719980.74 rows=1 width=42) (actual time=30249.265..30510.472 rows=2851 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2598507 read=264429
         ->  Sort  (cost=715373.74..715373.74 rows=1 width=27) (actual time=30122.244..30122.843 rows=3223 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 335kB
               Buffers: shared hit=2529255 read=263274
               ->  Merge Join  (cost=715364.56..715373.74 rows=1 width=27) (actual time=30114.494..30115.998 rows=3223 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2529251 read=263274
                     ->  Sort  (cost=715364.56..715364.56 rows=1 width=31) (actual time=30114.480..30114.733 rows=3223 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 355kB
                           Buffers: shared hit=2529249 read=263274
                           ->  Merge Join  (cost=715364.55..715364.56 rows=1 width=31) (actual time=30088.642..30113.230 rows=3223 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=2529249 read=263274
                                 ->  Sort  (cost=715340.02..715340.02 rows=7 width=35) (actual time=30020.538..30031.520 rows=50487 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 40941kB
                                       Buffers: shared hit=2529241 read=263264
                                       ->  Merge Join  (cost=675741.03..715340.02 rows=7 width=35) (actual time=26580.033..29862.512 rows=350973 loops=1)
                                             Merge Cond: (t.id = mi.movie_id)
                                             Buffers: shared hit=2529241 read=263264
                                             ->  Merge Join  (cost=59228.82..98865.87 rows=1015 width=51) (actual time=13046.551..16063.124 rows=380568 loops=1)
                                                   Merge Cond: (t.id = mk.movie_id)
                                                   Buffers: shared hit=2528675 read=117807
                                                   ->  Sort  (cost=59228.80..59228.81 rows=103 width=43) (actual time=12996.718..12998.031 rows=7820 loops=1)
                                                         Sort Key: mi_idx.movie_id
                                                         Sort Method: quicksort  Memory: 884kB
                                                         Buffers: shared hit=2502468 read=80997
                                                         ->  Merge Join  (cost=59227.92..59228.70 rows=103 width=43) (actual time=12991.217..12993.645 rows=7820 loops=1)
                                                               Merge Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=2502468 read=80997
                                                               ->  Sort  (cost=59221.80..59222.18 rows=4972 width=47) (actual time=12986.797..12988.383 rows=30139 loops=1)
                                                                     Sort Key: mi_idx.info_type_id
                                                                     Sort Method: quicksort  Memory: 3946kB
                                                                     Buffers: shared hit=2502467 read=80996
                                                                     ->  Merge Join  (cost=46981.12..59212.32 rows=4972 width=47) (actual time=11768.130..12969.064 rows=30246 loops=1)
                                                                           Merge Cond: (t.id = mi_idx.movie_id)
                                                                           Buffers: shared hit=2502467 read=80996
                                                                           ->  Sort  (cost=46981.11..46981.94 rows=10718 width=33) (actual time=11758.270..11760.909 rows=19509 loops=1)
                                                                                 Sort Key: t.id
                                                                                 Sort Method: quicksort  Memory: 2407kB
                                                                                 Buffers: shared hit=2488152 read=68776
                                                                                 ->  Merge Join  (cost=46943.08..46958.83 rows=10718 width=33) (actual time=11742.906..11750.823 rows=19509 loops=1)
                                                                                       Merge Cond: (t.kind_id = kt.id)
                                                                                       Buffers: shared hit=2488152 read=68776
                                                                                       ->  Sort  (cost=46943.08..46945.99 rows=37514 width=37) (actual time=11742.887..11744.661 rows=29178 loops=1)
                                                                                             Sort Key: t.kind_id
                                                                                             Sort Method: quicksort  Memory: 3359kB
                                                                                             Buffers: shared hit=2488150 read=68776
                                                                                             ->  Merge Join  (cost=23563.63..46854.56 rows=37514 width=37) (actual time=2327.226..11728.890 rows=29178 loops=1)
                                                                                                   Merge Cond: (mc.movie_id = t.id)
                                                                                                   Buffers: shared hit=2488150 read=68776
                                                                                                   ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=1966.695..2004.021 rows=303271 loops=1)
                                                                                                         Sort Key: mc.movie_id
                                                                                                         Sort Method: quicksort  Memory: 26504kB
                                                                                                         Buffers: shared hit=3 read=25917
                                                                                                         ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=14.085..1836.179 rows=303271 loops=1)
                                                                                                               Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                               Rows Removed by Filter: 2305858
                                                                                                               Buffers: shared hit=3 read=25917
                                                                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=662066 width=25) (actual time=42.047..9585.276 rows=661815 loops=1)
                                                                                                         Filter: (production_year > 2008)
                                                                                                         Rows Removed by Filter: 1863856
                                                                                                         Buffers: shared hit=2488147 read=42859
                                                                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.015..0.022 rows=2 loops=1)
                                                                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                                             Rows Removed by Filter: 5
                                                                                             Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1172842 width=14) (actual time=0.018..1024.499 rows=1189668 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 210615
                                                                                 Buffers: shared hit=14315 read=12220
                                                               ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.031..0.031 rows=1 loops=1)
                                                                     Sort Key: it2.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'rating'::text)
                                                                           Buffers: shared hit=1 read=1
                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2316.351 rows=4851377 loops=1)
                                                         Buffers: shared hit=26207 read=36810
                                             ->  Sort  (cost=616512.21..616512.67 rows=5910 width=4) (actual time=13533.383..13594.443 rows=938699 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 52175kB
                                                   Buffers: shared hit=566 read=145457
                                                   ->  Merge Join  (cost=0.02..616500.71 rows=5910 width=4) (actual time=6535.025..13320.471 rows=588764 loops=1)
                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                         Buffers: shared hit=566 read=145457
                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.025..0.052 rows=1 loops=1)
                                                               Filter: ((info)::text = 'countries'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=667885 width=8) (actual time=3415.023..13193.909 rows=654230 loops=1)
                                                               Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                                               Rows Removed by Filter: 11798213
                                                               Buffers: shared hit=564 read=145457
                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=63.902..63.902 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=23.156..63.880 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=32.421..382.427 rows=38546 loops=1)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 31675
               Buffers: shared hit=69252 read=1155
 Planning Time: 8855.249 ms
 Execution Time: 30553.246 ms
(116 rows)

