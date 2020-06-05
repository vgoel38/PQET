                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=681150.10..681150.10 rows=1 width=96) (actual time=31597.420..31597.421 rows=1 loops=1)
   Buffers: shared hit=2678907 read=231428
   ->  Merge Join  (cost=676546.33..681150.10 rows=1 width=42) (actual time=31247.334..31597.331 rows=53 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2678907 read=231428
         ->  Sort  (cost=676546.31..676546.31 rows=1 width=27) (actual time=30943.229..30943.259 rows=162 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 36kB
               Buffers: shared hit=2502815 read=228245
               ->  Merge Join  (cost=676424.64..676546.31 rows=1 width=27) (actual time=30825.853..30932.382 rows=162 loops=1)
                     Merge Cond: (mi.movie_id = mc.movie_id)
                     Buffers: shared hit=2502811 read=228245
                     ->  Merge Join  (cost=651433.98..651454.37 rows=1 width=35) (actual time=28243.621..28308.397 rows=90 loops=1)
                           Merge Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2502806 read=202328
                           ->  Sort  (cost=615652.31..615662.50 rows=131290 width=4) (actual time=15398.969..15508.508 rows=2380076 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 240651kB
                                 Buffers: shared hit=568 read=147225
                                 ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=4) (actual time=12559.907..14340.895 rows=3036719 loops=1)
                                       Merge Cond: (it2.id = mi.info_type_id)
                                       Buffers: shared hit=568 read=147225
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..9.21 rows=1 width=4) (actual time=0.075..0.099 rows=1 loops=1)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=37.074..11604.152 rows=12601871 loops=1)
                                             Buffers: shared hit=566 read=147225
                           ->  Sort  (cost=35781.68..35781.68 rows=1 width=31) (actual time=12565.048..12565.055 rows=92 loops=1)
                                 Sort Key: miidx.movie_id
                                 Sort Method: quicksort  Memory: 27kB
                                 Buffers: shared hit=2502238 read=55103
                                 ->  Merge Join  (cost=35781.68..35781.68 rows=1 width=31) (actual time=12564.976..12565.007 rows=29 loops=1)
                                       Merge Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2502238 read=55103
                                       ->  Sort  (cost=35775.55..35775.55 rows=2 width=35) (actual time=12564.930..12564.936 rows=30 loops=1)
                                             Sort Key: t.kind_id
                                             Sort Method: quicksort  Memory: 30kB
                                             Buffers: shared hit=2502237 read=55102
                                             ->  Merge Join  (cost=35775.52..35775.55 rows=2 width=35) (actual time=12564.778..12564.855 rows=66 loops=1)
                                                   Merge Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=2502237 read=55102
                                                   ->  Sort  (cost=35769.39..35769.41 rows=218 width=39) (actual time=12564.617..12564.662 rows=198 loops=1)
                                                         Sort Key: miidx.info_type_id
                                                         Sort Method: quicksort  Memory: 43kB
                                                         Buffers: shared hit=2502236 read=55101
                                                         ->  Merge Join  (cost=0.03..35769.13 rows=218 width=39) (actual time=666.983..12564.350 rows=198 loops=1)
                                                               Merge Cond: (miidx.movie_id = t.id)
                                                               Buffers: shared hit=2502236 read=55101
                                                               ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.022..1719.331 rows=1380035 loops=1)
                                                                     Buffers: shared hit=13571 read=12220
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=400 width=25) (actual time=608.540..10523.495 rows=291 loops=1)
                                                                     Filter: ((title <> ''::text) AND ((title ~~ 'Champion%'::text) OR (title ~~ 'Loser%'::text)))
                                                                     Rows Removed by Filter: 2526371
                                                                     Buffers: shared hit=2488665 read=42881
                                                   ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.060..0.060 rows=1 loops=1)
                                                         Sort Key: it.id
                                                         Sort Method: quicksort  Memory: 25kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.040..0.041 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                             Sort Key: kt.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.026..0.027 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'movie'::text)
                                                   Buffers: shared hit=1 read=1
                     ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2497.964..2537.936 rows=925685 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 111725kB
                           Buffers: shared hit=5 read=25917
                           ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1325.932..2024.629 rows=1334883 loops=1)
                                 Merge Cond: (ct.id = mc.company_type_id)
                                 Buffers: shared hit=5 read=25917
                                 ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.009..0.013 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=2
                                 ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=27.316..1453.839 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=25917
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.027..647.428 rows=62688 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 116149
               Buffers: shared hit=176092 read=3183
 Planning Time: 4698.478 ms
 Execution Time: 31661.899 ms
(88 rows)

