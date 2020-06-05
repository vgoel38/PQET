                                                                                                                                    QUERY PLAN                                                                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=719933.49..719933.49 rows=1 width=96) (actual time=30320.278..30320.279 rows=1 loops=1)
   Buffers: shared hit=2575190 read=264368
   ->  Merge Join  (cost=715326.51..719933.49 rows=1 width=42) (actual time=30271.591..30320.207 rows=31 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2575190 read=264368
         ->  Sort  (cost=715326.49..715326.49 rows=1 width=27) (actual time=29948.918..29948.929 rows=39 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 27kB
               Buffers: shared hit=2523953 read=263274
               ->  Merge Join  (cost=715317.31..715326.49 rows=1 width=27) (actual time=29944.236..29944.277 rows=39 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2523949 read=263274
                     ->  Sort  (cost=715317.31..715317.31 rows=1 width=31) (actual time=29944.213..29944.220 rows=39 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 28kB
                           Buffers: shared hit=2523947 read=263274
                           ->  Merge Join  (cost=715317.30..715317.31 rows=1 width=31) (actual time=29943.730..29944.160 rows=39 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=2523947 read=263274
                                 ->  Sort  (cost=715292.77..715292.77 rows=6 width=35) (actual time=29893.142..29893.306 rows=629 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 398kB
                                       Buffers: shared hit=2523939 read=263264
                                       ->  Merge Join  (cost=675703.26..715292.77 rows=6 width=35) (actual time=27220.048..29891.048 rows=3762 loops=1)
                                             Merge Cond: (t.id = mi.movie_id)
                                             Buffers: shared hit=2523939 read=263264
                                             ->  Merge Join  (cost=59191.05..98828.10 rows=817 width=51) (actual time=13625.725..17022.260 rows=7232 loops=1)
                                                   Merge Cond: (t.id = mk.movie_id)
                                                   Buffers: shared hit=2523373 read=117807
                                                   ->  Sort  (cost=59191.04..59191.05 rows=83 width=43) (actual time=13382.432..13382.583 rows=488 loops=1)
                                                         Sort Key: mi_idx.movie_id
                                                         Sort Method: quicksort  Memory: 66kB
                                                         Buffers: shared hit=2501711 read=80997
                                                         ->  Merge Join  (cost=59190.33..59190.96 rows=83 width=43) (actual time=13381.984..13382.177 rows=488 loops=1)
                                                               Merge Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=2501711 read=80997
                                                               ->  Sort  (cost=59184.21..59184.52 rows=4006 width=47) (actual time=13381.660..13381.767 rows=1538 loops=1)
                                                                     Sort Key: mi_idx.info_type_id
                                                                     Sort Method: quicksort  Memory: 207kB
                                                                     Buffers: shared hit=2501710 read=80996
                                                                     ->  Merge Join  (cost=46945.96..59176.76 rows=4006 width=47) (actual time=12105.825..13380.307 rows=1538 loops=1)
                                                                           Merge Cond: (t.id = mi_idx.movie_id)
                                                                           Buffers: shared hit=2501710 read=80996
                                                                           ->  Sort  (cost=46945.95..46946.62 rows=8635 width=33) (actual time=12065.592..12065.831 rows=1425 loops=1)
                                                                                 Sort Key: t.id
                                                                                 Sort Method: quicksort  Memory: 165kB
                                                                                 Buffers: shared hit=2488152 read=68776
                                                                                 ->  Merge Join  (cost=46913.94..46928.41 rows=8635 width=33) (actual time=12064.515..12065.056 rows=1425 loops=1)
                                                                                       Merge Cond: (t.kind_id = kt.id)
                                                                                       Buffers: shared hit=2488152 read=68776
                                                                                       ->  Sort  (cost=46913.94..46916.28 rows=30222 width=37) (actual time=12064.498..12064.597 rows=1809 loops=1)
                                                                                             Sort Key: t.kind_id
                                                                                             Sort Method: quicksort  Memory: 202kB
                                                                                             Buffers: shared hit=2488150 read=68776
                                                                                             ->  Merge Join  (cost=23563.63..46844.09 rows=30222 width=37) (actual time=2639.431..12063.123 rows=1809 loops=1)
                                                                                                   Merge Cond: (mc.movie_id = t.id)
                                                                                                   Buffers: shared hit=2488150 read=68776
                                                                                                   ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=2009.041..2045.043 rows=303271 loops=1)
                                                                                                         Sort Key: mc.movie_id
                                                                                                         Sort Method: quicksort  Memory: 26504kB
                                                                                                         Buffers: shared hit=3 read=25917
                                                                                                         ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=14.087..1865.212 rows=303271 loops=1)
                                                                                                               Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                               Rows Removed by Filter: 2305858
                                                                                                               Buffers: shared hit=3 read=25917
                                                                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=533370 width=25) (actual time=58.083..9905.019 rows=533150 loops=1)
                                                                                                         Filter: (production_year > 2009)
                                                                                                         Rows Removed by Filter: 1992521
                                                                                                         Buffers: shared hit=2488147 read=42859
                                                                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.013..0.015 rows=2 loops=1)
                                                                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                                             Rows Removed by Filter: 5
                                                                                             Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1172842 width=14) (actual time=0.013..1136.899 rows=1173144 loops=1)
                                                                                 Filter: (info < '7.0'::text)
                                                                                 Rows Removed by Filter: 207210
                                                                                 Buffers: shared hit=13558 read=12220
                                                               ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                                     Sort Key: it2.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.023..0.023 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'rating'::text)
                                                                           Buffers: shared hit=1 read=1
                                                   ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2874.717 rows=4526951 loops=1)
                                                         Buffers: shared hit=21662 read=36810
                                             ->  Sort  (cost=616512.21..616512.67 rows=5910 width=4) (actual time=12754.683..12791.833 rows=591543 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 52175kB
                                                   Buffers: shared hit=566 read=145457
                                                   ->  Merge Join  (cost=0.02..616500.71 rows=5910 width=4) (actual time=6125.927..12541.836 rows=588764 loops=1)
                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                         Buffers: shared hit=566 read=145457
                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.018..0.045 rows=1 loops=1)
                                                               Filter: ((info)::text = 'countries'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=667885 width=8) (actual time=3044.085..12413.663 rows=654230 loops=1)
                                                               Filter: (info = ANY ('{Germany,German,USA,American}'::text[]))
                                                               Rows Removed by Filter: 11798213
                                                               Buffers: shared hit=564 read=145457
                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=50.518..50.518 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=25.560..50.496 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=39.091..368.114 rows=29841 loops=1)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 22348
               Buffers: shared hit=51237 read=1094
 Planning Time: 9198.311 ms
 Execution Time: 30348.581 ms
(116 rows)

