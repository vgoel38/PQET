                                                                                                               QUERY PLAN                                                                                                                
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=724585.52..724585.52 rows=1 width=64) (actual time=41436.373..41436.373 rows=1 loops=1)
   Buffers: shared hit=3230572 read=277206
   ->  Merge Join  (cost=693357.59..724585.46 rows=414 width=38) (actual time=27732.489..41405.193 rows=11347 loops=1)
         Merge Cond: (t.id = at.movie_id)
         Buffers: shared hit=3230572 read=277206
         ->  Merge Join  (cost=693355.54..716712.57 rows=1036 width=33) (actual time=26559.982..38574.232 rows=25564 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=2870286 read=270032
               ->  Sort  (cost=693355.53..693355.64 rows=1497 width=12) (actual time=26515.667..26519.456 rows=25738 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 1975kB
                     Buffers: shared hit=384469 read=227179
                     ->  Merge Join  (cost=688748.55..693353.08 rows=1497 width=12) (actual time=25728.891..26496.692 rows=25738 loops=1)
                           Merge Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=384465 read=227179
                           ->  Sort  (cost=688748.54..688748.86 rows=4161 width=16) (actual time=25720.320..25727.640 rows=52749 loops=1)
                                 Sort Key: mc.company_id
                                 Sort Method: quicksort  Memory: 4009kB
                                 Buffers: shared hit=153295 read=223346
                                 ->  Merge Join  (cost=688335.16..688740.77 rows=4161 width=16) (actual time=25328.184..25704.262 rows=52749 loops=1)
                                       Merge Cond: (mi.movie_id = mc.movie_id)
                                       Buffers: shared hit=153295 read=223346
                                       ->  Sort  (cost=656529.86..656529.95 rows=1155 width=8) (actual time=22476.932..22479.128 rows=17565 loops=1)
                                             Sort Key: mi.movie_id
                                             Sort Method: quicksort  Memory: 1592kB
                                             Buffers: shared hit=153290 read=197429
                                             ->  Merge Join  (cost=654936.54..656528.03 rows=1155 width=8) (actual time=22061.690..22468.569 rows=17565 loops=1)
                                                   Merge Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=153290 read=197429
                                                   ->  Sort  (cost=654936.53..654936.62 rows=1155 width=12) (actual time=22061.669..22065.003 rows=17565 loops=1)
                                                         Sort Key: mk.keyword_id
                                                         Sort Method: quicksort  Memory: 1592kB
                                                         Buffers: shared hit=22396 read=195997
                                                         ->  Merge Join  (cost=615297.59..654934.71 rows=1155 width=12) (actual time=18710.800..22052.322 rows=17565 loops=1)
                                                               Merge Cond: (mi.movie_id = mk.movie_id)
                                                               Buffers: shared hit=22396 read=195997
                                                               ->  Sort  (cost=615297.58..615297.58 rows=98 width=4) (actual time=18710.760..18712.289 rows=10679 loops=1)
                                                                     Sort Key: mi.movie_id
                                                                     Sort Method: quicksort  Memory: 885kB
                                                                     Buffers: shared hit=753 read=159187
                                                                     ->  Merge Join  (cost=0.02..615297.48 rows=98 width=4) (actual time=14126.284..18702.135 rows=10679 loops=1)
                                                                           Merge Cond: (it.id = mi.info_type_id)
                                                                           Buffers: shared hit=753 read=159187
                                                                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.070..0.118 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'release dates'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=11124 width=8) (actual time=4205.463..18697.294 rows=10714 loops=1)
                                                                                 Filter: (note ~~ '%internet%'::text)
                                                                                 Rows Removed by Filter: 12979111
                                                                                 Buffers: shared hit=751 read=159187
                                                               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.028..2567.873 rows=4524356 loops=1)
                                                                     Buffers: shared hit=21643 read=36810
                                                   ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.015..370.929 rows=133880 loops=1)
                                                         Buffers: shared hit=130894 read=1432
                                       ->  Sort  (cost=31805.30..32007.88 rows=2609129 width=8) (actual time=2851.241..2970.619 rows=2652307 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 220607kB
                                             Buffers: shared hit=5 read=25917
                                             ->  Merge Join  (cost=0.02..23169.60 rows=2609129 width=8) (actual time=11.003..1863.261 rows=2609129 loops=1)
                                                   Merge Cond: (ct.id = mc.company_type_id)
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.008..0.011 rows=3 loops=1)
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=10.982..1257.661 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=25917
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.027..747.368 rows=84788 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 149658
                                 Buffers: shared hit=231170 read=3833
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.014..11801.671 rows=1747288 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 775982
                     Buffers: shared hit=2485817 read=42853
         ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..7867.28 rows=361472 width=25) (actual time=0.032..2764.569 rows=371412 loops=1)
               Buffers: shared hit=360286 read=7174
 Planning Time: 8688.728 ms
 Execution Time: 41478.116 ms
(78 rows)

