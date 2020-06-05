                                                                                                               QUERY PLAN                                                                                                               
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=726888.19..726888.19 rows=1 width=64) (actual time=42805.711..42805.711 rows=1 loops=1)
   Buffers: shared hit=3303471 read=320353
   ->  Merge Join  (cost=695645.15..726888.18 rows=10 width=59) (actual time=30468.388..42804.558 rows=2271 loops=1)
         Merge Cond: (at.movie_id = t.id)
         Buffers: shared hit=3303471 read=320353
         ->  Merge Join  (cost=695645.14..703538.44 rows=14 width=58) (actual time=29771.523..32232.012 rows=2271 loops=1)
               Merge Cond: (mi.movie_id = at.movie_id)
               Buffers: shared hit=822514 read=277514
               ->  Sort  (cost=695643.09..695643.10 rows=47 width=54) (actual time=29449.847..29451.102 rows=7964 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 815kB
                     Buffers: shared hit=470900 read=270348
                     ->  Merge Join  (cost=691039.26..695643.05 rows=47 width=54) (actual time=28637.049..29435.773 rows=7964 loops=1)
                           Merge Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=470896 read=270348
                           ->  Sort  (cost=691039.25..691039.25 rows=118 width=58) (actual time=28627.839..28629.316 rows=9187 loops=1)
                                 Sort Key: mc.company_id
                                 Sort Method: quicksort  Memory: 1102kB
                                 Buffers: shared hit=240059 read=266517
                                 ->  Merge Join  (cost=690633.96..691039.12 rows=118 width=58) (actual time=28252.656..28625.096 rows=9187 loops=1)
                                       Merge Cond: (mi.movie_id = mc.movie_id)
                                       Buffers: shared hit=240059 read=266517
                                       ->  Sort  (cost=658828.66..658828.66 rows=35 width=50) (actual time=25732.800..25733.363 rows=4463 loops=1)
                                             Sort Key: mi.movie_id
                                             Sort Method: quicksort  Memory: 541kB
                                             Buffers: shared hit=240054 read=240600
                                             ->  Merge Join  (cost=657237.39..658828.63 rows=35 width=50) (actual time=25400.020..25730.129 rows=4463 loops=1)
                                                   Merge Cond: (mk.keyword_id = k.id)
                                                   Buffers: shared hit=240054 read=240600
                                                   ->  Sort  (cost=657237.38..657237.38 rows=35 width=54) (actual time=25399.995..25400.918 rows=4463 loops=1)
                                                         Sort Key: mk.keyword_id
                                                         Sort Method: quicksort  Memory: 541kB
                                                         Buffers: shared hit=109160 read=239168
                                                         ->  Merge Join  (cost=617600.33..657237.35 rows=35 width=54) (actual time=21882.156..25396.633 rows=4463 loops=1)
                                                               Merge Cond: (mi.movie_id = mk.movie_id)
                                                               Buffers: shared hit=109160 read=239168
                                                               ->  Sort  (cost=617600.31..617600.31 rows=3 width=46) (actual time=21882.073..21882.449 rows=1783 loops=1)
                                                                     Sort Key: mi.movie_id
                                                                     Sort Method: quicksort  Memory: 188kB
                                                                     Buffers: shared hit=87586 read=202427
                                                                     ->  Merge Join  (cost=0.02..617600.31 rows=3 width=46) (actual time=12986.124..21880.127 rows=1783 loops=1)
                                                                           Merge Cond: (it.id = mi.info_type_id)
                                                                           Buffers: shared hit=87586 read=202427
                                                                           ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.070..0.095 rows=1 loops=1)
                                                                                 Filter: ((info)::text = 'release dates'::text)
                                                                                 Rows Removed by Filter: 112
                                                                                 Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=328 width=50) (actual time=12986.040..21878.765 rows=1783 loops=1)
                                                                                 Filter: ((info IS NOT NULL) AND (note ~~ '%internet%'::text) AND ((info ~~ 'USA:% 199%'::text) OR (info ~~ 'USA:% 200%'::text)))
                                                                                 Rows Removed by Filter: 14833937
                                                                                 Buffers: shared hit=87584 read=202427
                                                               ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2761.712 rows=4514890 loops=1)
                                                                     Buffers: shared hit=21574 read=36741
                                                   ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.018..305.481 rows=133880 loops=1)
                                                         Buffers: shared hit=130894 read=1432
                                       ->  Sort  (cost=31805.30..32007.88 rows=2609129 width=8) (actual time=2519.814..2641.322 rows=2608217 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 220607kB
                                             Buffers: shared hit=5 read=25917
                                             ->  Merge Join  (cost=0.02..23169.60 rows=2609129 width=8) (actual time=13.287..1548.259 rows=2609129 loops=1)
                                                   Merge Cond: (ct.id = mc.company_type_id)
                                                   Buffers: shared hit=5 read=25917
                                                   ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.009..0.012 rows=3 loops=1)
                                                         Buffers: shared hit=2
                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=13.265..962.705 rows=2609129 loops=1)
                                                         Buffers: shared hit=3 read=25917
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.027..793.254 rows=84698 loops=1)
                                 Filter: ((country_code)::text = '[us]'::text)
                                 Rows Removed by Filter: 149415
                                 Buffers: shared hit=230837 read=3831
               ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..7867.28 rows=361472 width=4) (actual time=0.012..2709.150 rows=359452 loops=1)
                     Buffers: shared hit=351614 read=7166
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.022..10362.099 rows=1744749 loops=1)
               Filter: (production_year > 1990)
               Rows Removed by Filter: 773648
               Buffers: shared hit=2480957 read=42839
 Planning Time: 8855.238 ms
 Execution Time: 42839.315 ms
(78 rows)

