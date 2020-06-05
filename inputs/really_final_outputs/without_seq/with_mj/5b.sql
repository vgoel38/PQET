                                                                                        QUERY PLAN                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=663729.63..663729.63 rows=1 width=32) (actual time=24228.364..24228.364 rows=1 loops=1)
   Buffers: shared hit=87598 read=228366
   ->  Merge Join  (cost=640403.91..663729.63 rows=1 width=17) (actual time=24228.334..24228.334 rows=0 loops=1)
         Merge Cond: (t.id = mc.movie_id)
         Buffers: shared hit=87598 read=228366
         ->  Merge Join  (cost=617009.55..640352.43 rows=85382 width=25) (actual time=22035.214..22035.214 rows=1 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=87594 read=202448
               ->  Sort  (cost=617009.54..617052.33 rows=551163 width=4) (actual time=21927.500..21927.502 rows=2 loops=1)
                     Sort Key: mi.movie_id
                     Sort Method: quicksort  Memory: 50488kB
                     Buffers: shared hit=87590 read=202427
                     ->  Merge Join  (cost=0.02..615377.26 rows=551163 width=4) (actual time=7062.377..21699.861 rows=552777 loops=1)
                           Merge Cond: (it.id = mi.info_type_id)
                           Buffers: shared hit=87586 read=202427
                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.20 rows=113 width=4) (actual time=0.013..0.044 rows=58 loops=1)
                                 Buffers: shared hit=2
                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=551163 width=8) (actual time=7062.339..21579.015 rows=552777 loops=1)
                                 Filter: (info = ANY ('{USA,America}'::text[]))
                                 Rows Removed by Filter: 14282943
                                 Buffers: shared hit=87584 read=202427
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=391667 width=21) (actual time=60.319..107.678 rows=12 loops=1)
                     Filter: (production_year > 2010)
                     Rows Removed by Filter: 10
                     Buffers: shared hit=4 read=21
         ->  Sort  (cost=23394.36..23394.36 rows=12 width=4) (actual time=2193.116..2193.116 rows=0 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=4 read=25918
               ->  Merge Join  (cost=0.02..23394.35 rows=12 width=4) (actual time=2193.102..2193.102 rows=0 loops=1)
                     Merge Cond: (ct.id = mc.company_type_id)
                     Buffers: shared hit=4 read=25918
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=1 width=4) (actual time=0.019..0.020 rows=1 loops=1)
                           Filter: ((kind)::text = 'production companies'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=2
                     ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23385.16 rows=46 width=8) (actual time=106.193..2192.688 rows=1418 loops=1)
                           Filter: ((note ~~ '%(VHS)%'::text) AND (note ~~ '%(USA)%'::text) AND (note ~~ '%(1994)%'::text))
                           Rows Removed by Filter: 2607711
                           Buffers: shared hit=2 read=25918
 Planning Time: 1893.828 ms
 Execution Time: 24309.383 ms
(42 rows)

