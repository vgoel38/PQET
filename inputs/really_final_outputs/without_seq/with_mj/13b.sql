                                                                                                            QUERY PLAN                                                                                                             
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=681131.56..681131.56 rows=1 width=96) (actual time=31850.478..31850.478 rows=1 loops=1)
   Buffers: shared hit=2713846 read=232006
   ->  Merge Join  (cost=676527.79..681131.56 rows=1 width=42) (actual time=31295.416..31850.246 rows=372 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2713846 read=232006
         ->  Sort  (cost=676527.77..676527.78 rows=1 width=27) (actual time=31099.697..31099.808 rows=626 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 73kB
               Buffers: shared hit=2502815 read=228245
               ->  Merge Join  (cost=676406.10..676527.77 rows=1 width=27) (actual time=30809.697..31099.443 rows=626 loops=1)
                     Merge Cond: (mi.movie_id = mc.movie_id)
                     Buffers: shared hit=2502811 read=228245
                     ->  Merge Join  (cost=651415.44..651435.83 rows=1 width=35) (actual time=28139.189..28317.477 rows=272 loops=1)
                           Merge Cond: (mi.movie_id = t.id)
                           Buffers: shared hit=2502806 read=202328
                           ->  Sort  (cost=615652.31..615662.50 rows=131290 width=4) (actual time=15170.570..15303.172 rows=3002197 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 240651kB
                                 Buffers: shared hit=568 read=147225
                                 ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=4) (actual time=12345.710..14111.056 rows=3036719 loops=1)
                                       Merge Cond: (it2.id = mi.info_type_id)
                                       Buffers: shared hit=568 read=147225
                                       ->  Index Scan using info_type_pkey on info_type it2  (cost=0.00..9.21 rows=1 width=4) (actual time=0.056..0.081 rows=1 loops=1)
                                             Filter: ((info)::text = 'release dates'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=8) (actual time=31.173..11400.313 rows=12601871 loops=1)
                                             Buffers: shared hit=566 read=147225
                           ->  Sort  (cost=35763.14..35763.14 rows=2 width=31) (actual time=12728.657..12728.679 rows=288 loops=1)
                                 Sort Key: miidx.movie_id
                                 Sort Method: quicksort  Memory: 33kB
                                 Buffers: shared hit=2502238 read=55103
                                 ->  Merge Join  (cost=35763.14..35763.14 rows=2 width=31) (actual time=12728.596..12728.621 rows=90 loops=1)
                                       Merge Cond: (t.kind_id = kt.id)
                                       Buffers: shared hit=2502238 read=55103
                                       ->  Sort  (cost=35757.01..35757.01 rows=11 width=35) (actual time=12728.572..12728.577 rows=91 loops=1)
                                             Sort Key: t.kind_id
                                             Sort Method: quicksort  Memory: 60kB
                                             Buffers: shared hit=2502237 read=55102
                                             ->  Merge Join  (cost=35756.81..35757.01 rows=11 width=35) (actual time=12728.352..12728.464 rows=352 loops=1)
                                                   Merge Cond: (miidx.info_type_id = it.id)
                                                   Buffers: shared hit=2502237 read=55102
                                                   ->  Sort  (cost=35750.69..35750.78 rows=1249 width=39) (actual time=12728.166..12728.254 rows=1056 loops=1)
                                                         Sort Key: miidx.info_type_id
                                                         Sort Method: quicksort  Memory: 166kB
                                                         Buffers: shared hit=2502236 read=55101
                                                         ->  Merge Join  (cost=0.03..35748.69 rows=1249 width=39) (actual time=490.791..12727.128 rows=1056 loops=1)
                                                               Merge Cond: (miidx.movie_id = t.id)
                                                               Buffers: shared hit=2502236 read=55101
                                                               ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx miidx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.022..1306.238 rows=1380035 loops=1)
                                                                     Buffers: shared hit=13571 read=12220
                                                               ->  Index Scan using title_idx_id on title t  (cost=0.01..23630.94 rows=2288 width=25) (actual time=467.188..11188.729 rows=2215 loops=1)
                                                                     Filter: ((title <> ''::text) AND ((title ~~ '%Champion%'::text) OR (title ~~ '%Loser%'::text)))
                                                                     Rows Removed by Filter: 2524447
                                                                     Buffers: shared hit=2488665 read=42881
                                                   ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                                                         Sort Key: it.id
                                                         Sort Method: quicksort  Memory: 25kB
                                                         Buffers: shared hit=1 read=1
                                                         ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.018..0.018 rows=1 loops=1)
                                                               Index Cond: ((info)::text = 'rating'::text)
                                                               Buffers: shared hit=1 read=1
                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.021..0.021 rows=1 loops=1)
                                             Sort Key: kt.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared hit=1 read=1
                                             ->  Index Scan using kind_type_kind_key on kind_type kt  (cost=0.00..6.12 rows=1 width=4) (actual time=0.014..0.014 rows=1 loops=1)
                                                   Index Cond: ((kind)::text = 'movie'::text)
                                                   Buffers: shared hit=1 read=1
                     ->  Sort  (cost=24990.66..25041.30 rows=652282 width=8) (actual time=2601.608..2658.906 rows=1312741 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 111725kB
                           Buffers: shared hit=5 read=25917
                           ->  Merge Join  (cost=0.02..23034.30 rows=652282 width=8) (actual time=1397.478..2111.349 rows=1334883 loops=1)
                                 Merge Cond: (ct.id = mc.company_type_id)
                                 Buffers: shared hit=5 read=25917
                                 ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.010..0.017 rows=1 loops=1)
                                       Filter: ((kind)::text = 'production companies'::text)
                                       Rows Removed by Filter: 3
                                       Buffers: shared hit=2
                                 ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=25.752..1536.986 rows=2609129 loops=1)
                                       Buffers: shared hit=3 read=25917
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.025..741.975 rows=75755 loops=1)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 138516
               Buffers: shared hit=211031 read=3761
 Planning Time: 4644.833 ms
 Execution Time: 31909.921 ms
(88 rows)

