                                                                                                    QUERY PLAN                                                                                                    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=60061.17..60061.17 rows=1 width=68) (actual time=14687.398..14687.398 rows=1 loops=1)
   Buffers: shared hit=2503628 read=80999
   ->  Merge Join  (cost=60042.09..60060.92 rows=1069 width=45) (actual time=14687.362..14687.364 rows=3 loops=1)
         Merge Cond: (mi_idx.info_type_id = it.id)
         Buffers: shared hit=2503628 read=80999
         ->  Sort  (cost=60035.96..60045.34 rows=120831 width=49) (actual time=14667.906..14676.499 rows=96296 loops=1)
               Sort Key: mi_idx.info_type_id
               Sort Method: quicksort  Memory: 12814kB
               Buffers: shared hit=2503627 read=80998
               ->  Merge Join  (cost=24068.65..59719.20 rows=120831 width=49) (actual time=2460.990..14600.198 rows=96296 loops=1)
                     Merge Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=2503623 read=80998
                     ->  Merge Join  (cost=24068.64..47593.49 rows=94697 width=53) (actual time=2440.333..13103.457 rows=46509 loops=1)
                           Merge Cond: (mc.movie_id = t.id)
                           Buffers: shared hit=2488151 read=68778
                           ->  Sort  (cost=24068.63..24094.58 rows=334271 width=28) (actual time=1871.168..1892.055 rows=140904 loops=1)
                                 Sort Key: mc.movie_id
                                 Sort Method: quicksort  Memory: 16562kB
                                 Buffers: shared hit=4 read=25918
                                 ->  Merge Join  (cost=0.02..23116.13 rows=334271 width=28) (actual time=1034.070..1799.263 rows=140904 loops=1)
                                       Merge Cond: (ct.id = mc.company_type_id)
                                       Buffers: shared hit=4 read=25918
                                       ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.069..0.072 rows=1 loops=1)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 3
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22980.02 rows=1337085 width=32) (actual time=8.647..1621.115 rows=1337088 loops=1)
                                             Filter: (note !~~ '%(as Metro-Goldwyn-Mayer Pictures)%'::text)
                                             Rows Removed by Filter: 1272041
                                             Buffers: shared hit=2 read=25918
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=716259 width=25) (actual time=19.758..11053.174 rows=716108 loops=1)
                                 Filter: ((production_year >= 2005) AND (production_year <= 2010))
                                 Rows Removed by Filter: 1809623
                                 Buffers: shared hit=2488147 read=42860
                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=8) (actual time=0.023..1229.217 rows=1432805 loops=1)
                           Buffers: shared hit=15472 read=12220
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=1 read=1
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.025..0.026 rows=1 loops=1)
                     Index Cond: ((info)::text = 'bottom 10 rank'::text)
                     Buffers: shared hit=1 read=1
 Planning Time: 2195.526 ms
 Execution Time: 14690.439 ms
(45 rows)

