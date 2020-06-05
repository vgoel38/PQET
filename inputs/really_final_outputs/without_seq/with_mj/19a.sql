                                                                                                        QUERY PLAN                                                                                                        
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1147493.47..1147493.47 rows=1 width=64) (actual time=85058.849..85058.849 rows=1 loops=1)
   Buffers: shared hit=11518897 read=682578
   ->  Merge Join  (cost=1063120.80..1147493.47 rows=1 width=32) (actual time=82228.963..85058.677 rows=184 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=11518897 read=682578
         ->  Merge Join  (cost=1063120.79..1099602.84 rows=3 width=25) (actual time=78855.408..80411.920 rows=66845 loops=1)
               Merge Cond: (ci.person_id = an.person_id)
               Buffers: shared hit=7580293 read=611898
               ->  Sort  (cost=1063120.77..1063120.77 rows=3 width=21) (actual time=78428.591..78433.575 rows=35536 loops=1)
                     Sort Key: ci.person_id
                     Sort Method: quicksort  Memory: 4118kB
                     Buffers: shared hit=7362057 read=598924
                     ->  Merge Join  (cost=1026882.06..1063120.77 rows=3 width=21) (actual time=68003.619..78404.868 rows=35604 loops=1)
                           Merge Cond: (ci.person_role_id = chn.id)
                           Buffers: shared hit=7362053 read=598924
                           ->  Sort  (cost=1026882.05..1026882.05 rows=7 width=25) (actual time=67930.224..67935.589 rows=35605 loops=1)
                                 Sort Key: ci.person_role_id
                                 Sort Method: quicksort  Memory: 4726kB
                                 Buffers: shared hit=4262341 read=551313
                                 ->  Merge Join  (cost=1003436.44..1026882.04 rows=7 width=25) (actual time=58205.921..67914.841 rows=40272 loops=1)
                                       Merge Cond: (t.id = mi.movie_id)
                                       Buffers: shared hit=4262341 read=551313
                                       ->  Merge Join  (cost=386945.53..410408.81 rows=1276 width=37) (actual time=37526.556..47143.023 rows=18371 loops=1)
                                             Merge Cond: (t.id = mc.movie_id)
                                             Buffers: shared hit=4168085 read=348465
                                             ->  Merge Join  (cost=321881.02..345350.89 rows=16393 width=33) (actual time=22304.286..32108.117 rows=79361 loops=1)
                                                   Merge Cond: (ci.movie_id = t.id)
                                                   Buffers: shared hit=2488152 read=318724
                                                   ->  Sort  (cost=321881.00..321886.60 rows=72136 width=12) (actual time=21841.091..21875.992 rows=276164 loops=1)
                                                         Sort Key: ci.movie_id
                                                         Sort Method: quicksort  Memory: 25234kB
                                                         Buffers: shared hit=5 read=275864
                                                         ->  Merge Join  (cost=0.02..321700.23 rows=72136 width=12) (actual time=9596.314..21692.614 rows=276166 loops=1)
                                                               Merge Cond: (ci.role_id = rt.id)
                                                               Buffers: shared hit=5 read=275864
                                                               ->  Index Scan using cast_info_role_id on cast_info ci  (cost=0.02..321618.85 rows=865636 width=16) (actual time=20.316..21445.508 rows=867127 loops=1)
                                                                     Filter: (note = ANY ('{(voice),"(voice: Japanese version)","(voice) (uncredited)","(voice: English version)"}'::text[]))
                                                                     Rows Removed by Filter: 27955144
                                                                     Buffers: shared hit=3 read=275864
                                                               ->  Index Scan using role_type_pkey on role_type rt  (cost=0.00..9.19 rows=1 width=4) (actual time=0.030..0.038 rows=1 loops=1)
                                                                     Filter: ((role)::text = 'actress'::text)
                                                                     Rows Removed by Filter: 11
                                                                     Buffers: shared hit=2
                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=574556 width=21) (actual time=7.099..10104.693 rows=574448 loops=1)
                                                         Filter: ((production_year >= 2005) AND (production_year <= 2009))
                                                         Rows Removed by Filter: 1951283
                                                         Buffers: shared hit=2488147 read=42860
                                             ->  Sort  (cost=65064.51..65072.72 rows=105777 width=4) (actual time=14890.006..14950.886 rows=556321 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 49987kB
                                                   Buffers: shared hit=1679933 read=29741
                                                   ->  Merge Join  (cost=0.03..64790.37 rows=105777 width=4) (actual time=0.050..14633.775 rows=542096 loops=1)
                                                         Merge Cond: (cn.id = mc.company_id)
                                                         Buffers: shared hit=1679933 read=29741
                                                         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.028..1382.368 rows=84448 loops=1)
                                                               Filter: ((country_code)::text = '[us]'::text)
                                                               Rows Removed by Filter: 148554
                                                               Buffers: shared hit=229728 read=3828
                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..60156.52 rows=292980 width=8) (actual time=0.018..13080.268 rows=590994 loops=1)
                                                               Filter: ((note IS NOT NULL) AND ((note ~~ '%(USA)%'::text) OR (note ~~ '%(worldwide)%'::text)))
                                                               Rows Removed by Filter: 2018135
                                                               Buffers: shared hit=1450205 read=25913
                                       ->  Sort  (cost=616490.91..616491.22 rows=3969 width=4) (actual time=20679.325..20709.678 rows=486594 loops=1)
                                             Sort Key: mi.movie_id
                                             Sort Method: quicksort  Memory: 33431kB
                                             Buffers: shared hit=94256 read=202848
                                             ->  Merge Join  (cost=0.02..616483.54 rows=3969 width=4) (actual time=12823.590..20498.106 rows=451039 loops=1)
                                                   Merge Cond: (it.id = mi.info_type_id)
                                                   Buffers: shared hit=94256 read=202848
                                                   ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.027..0.050 rows=1 loops=1)
                                                         Filter: ((info)::text = 'release dates'::text)
                                                         Rows Removed by Filter: 112
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=448472 width=8) (actual time=119.436..20387.965 rows=451104 loops=1)
                                                         Filter: ((info IS NOT NULL) AND ((info ~~ 'Japan:%200%'::text) OR (info ~~ 'USA:%200%'::text)))
                                                         Rows Removed by Filter: 14384616
                                                         Buffers: shared hit=94254 read=202848
                           ->  Index Scan using char_name_pkey on char_name chn  (cost=0.01..35994.91 rows=3140339 width=4) (actual time=0.016..10073.013 rows=3139781 loops=1)
                                 Buffers: shared hit=3099712 read=47611
               ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42491.32 rows=901343 width=4) (actual time=0.016..1802.066 rows=642315 loops=1)
                     Buffers: shared hit=218236 read=12974
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=3787 width=19) (actual time=1876.014..4638.310 rows=6768 loops=1)
               Filter: ((name ~~ '%Ang%'::text) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 4160723
               Buffers: shared hit=3938604 read=70680
 Planning Time: 6902.551 ms
 Execution Time: 85093.136 ms
(87 rows)

