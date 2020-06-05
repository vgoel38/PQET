                                                                                                                                                    QUERY PLAN                                                                                                                                                     
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=726638.12..726638.12 rows=1 width=96) (actual time=32836.599..32836.599 rows=1 loops=1)
   Buffers: shared hit=2695377 read=265403
   ->  Merge Join  (cost=722031.13..726638.12 rows=1 width=42) (actual time=32456.414..32811.386 rows=8373 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2695377 read=265403
         ->  Sort  (cost=722031.12..722031.12 rows=1 width=27) (actual time=32421.347..32423.140 rows=8771 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 1048kB
               Buffers: shared hit=2626125 read=264248
               ->  Merge Join  (cost=722021.93..722031.12 rows=1 width=27) (actual time=32411.386..32413.909 rows=8771 loops=1)
                     Merge Cond: (t.kind_id = kt.id)
                     Buffers: shared hit=2626121 read=264248
                     ->  Sort  (cost=722021.93..722021.93 rows=1 width=31) (actual time=32411.361..32411.805 rows=9128 loops=1)
                           Sort Key: t.kind_id
                           Sort Method: quicksort  Memory: 1118kB
                           Buffers: shared hit=2626119 read=264248
                           ->  Merge Join  (cost=722021.93..722021.93 rows=1 width=31) (actual time=32355.226..32409.106 rows=9128 loops=1)
                                 Merge Cond: (k.id = mk.keyword_id)
                                 Buffers: shared hit=2626119 read=264248
                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=53.732..53.733 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=28.768..53.697 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                                 ->  Sort  (cost=721997.40..721997.40 rows=2 width=35) (actual time=32292.095..32320.253 rows=190724 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 148524kB
                                       Buffers: shared hit=2626111 read=264238
                                       ->  Merge Join  (cost=682360.38..721997.40 rows=2 width=35) (actual time=28619.468..31707.236 rows=1222785 loops=1)
                                             Merge Cond: (t.id = mk.movie_id)
                                             Buffers: shared hit=2626111 read=264238
                                             ->  Sort  (cost=682360.36..682360.36 rows=1 width=51) (actual time=28591.306..28592.567 rows=12562 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 1680kB
                                                   Buffers: shared hit=2589254 read=227514
                                                   ->  Merge Join  (cost=682360.36..682360.36 rows=1 width=51) (actual time=28583.014..28586.766 rows=12562 loops=1)
                                                         Merge Cond: (it2.id = mi_idx.info_type_id)
                                                         Buffers: shared hit=2589254 read=227514
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.077..0.077 rows=1 loops=1)
                                                               Sort Key: it2.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.059..0.060 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=1 read=1
                                                         ->  Sort  (cost=682354.24..682354.24 rows=1 width=55) (actual time=28577.362..28579.533 rows=37403 loops=1)
                                                               Sort Key: mi_idx.info_type_id
                                                               Sort Method: quicksort  Memory: 6391kB
                                                               Buffers: shared hit=2589253 read=227513
                                                               ->  Merge Join  (cost=670111.80..682354.24 rows=1 width=55) (actual time=27347.051..28551.703 rows=37615 loops=1)
                                                                     Merge Cond: (t.id = mi_idx.movie_id)
                                                                     Buffers: shared hit=2589253 read=227513
                                                                     ->  Sort  (cost=670111.78..670111.78 rows=1 width=41) (actual time=27325.215..27326.484 rows=13091 loops=1)
                                                                           Sort Key: mi.movie_id
                                                                           Sort Method: quicksort  Memory: 1520kB
                                                                           Buffers: shared hit=2574294 read=215324
                                                                           ->  Merge Join  (cost=670102.60..670111.78 rows=1 width=41) (actual time=27317.290..27321.150 rows=13091 loops=1)
                                                                                 Merge Cond: (ct.id = mc.company_type_id)
                                                                                 Buffers: shared hit=2574294 read=215324
                                                                                 ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.013..0.016 rows=3 loops=1)
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=670102.60..670102.60 rows=1 width=45) (actual time=27317.273..27317.886 rows=13091 loops=1)
                                                                                       Sort Key: mc.company_type_id
                                                                                       Sort Method: quicksort  Memory: 1603kB
                                                                                       Buffers: shared hit=2574292 read=215324
                                                                                       ->  Merge Join  (cost=670080.35..670102.60 rows=1 width=45) (actual time=27268.390..27313.052 rows=13091 loops=1)
                                                                                             Merge Cond: (t.id = mc.movie_id)
                                                                                             Buffers: shared hit=2574292 read=215324
                                                                                             ->  Sort  (cost=646516.74..646516.74 rows=13 width=33) (actual time=25213.405..25213.663 rows=4990 loops=1)
                                                                                                   Sort Key: mi.movie_id
                                                                                                   Sort Method: quicksort  Memory: 612kB
                                                                                                   Buffers: shared hit=2574289 read=189407
                                                                                                   ->  Merge Join  (cost=646516.72..646516.73 rows=13 width=33) (actual time=25210.245..25211.718 rows=4990 loops=1)
                                                                                                         Merge Cond: (cc.status_id = cct2.id)
                                                                                                         Buffers: shared hit=2574289 read=189407
                                                                                                         ->  Sort  (cost=646510.59..646510.60 rows=53 width=37) (actual time=25210.228..25210.456 rows=4991 loops=1)
                                                                                                               Sort Key: cc.status_id
                                                                                                               Sort Method: quicksort  Memory: 670kB
                                                                                                               Buffers: shared hit=2574287 read=189407
                                                                                                               ->  Merge Join  (cost=646510.51..646510.55 rows=53 width=37) (actual time=25207.020..25208.780 rows=5541 loops=1)
                                                                                                                     Merge Cond: (cc.subject_id = cct1.id)
                                                                                                                     Buffers: shared hit=2574287 read=189407
                                                                                                                     ->  Sort  (cost=646504.39..646504.40 rows=212 width=41) (actual time=25206.986..25207.265 rows=5542 loops=1)
                                                                                                                           Sort Key: cc.subject_id
                                                                                                                           Sort Method: quicksort  Memory: 1396kB
                                                                                                                           Buffers: shared hit=2574286 read=189406
                                                                                                                           ->  Merge Join  (cost=619972.37..646504.13 rows=212 width=41) (actual time=14573.812..25200.965 rows=11273 loops=1)
                                                                                                                                 Merge Cond: (mi.movie_id = t.id)
                                                                                                                                 Buffers: shared hit=2574286 read=189406
                                                                                                                                 ->  Merge Join  (cost=619972.35..623204.44 rows=529 width=16) (actual time=14066.237..14455.176 rows=72825 loops=1)
                                                                                                                                       Merge Cond: (mi.movie_id = cc.movie_id)
                                                                                                                                       Buffers: shared hit=86139 read=146547
                                                                                                                                       ->  Sort  (cost=619972.34..619972.83 rows=6329 width=4) (actual time=14038.255..14097.181 rows=614251 loops=1)
                                                                                                                                             Sort Key: mi.movie_id
                                                                                                                                             Sort Method: quicksort  Memory: 53370kB
                                                                                                                                             Buffers: shared hit=566 read=145457
                                                                                                                                             ->  Merge Join  (cost=0.02..619959.93 rows=6329 width=4) (actual time=5982.467..13817.992 rows=614251 loops=1)
                                                                                                                                                   Merge Cond: (it1.id = mi.info_type_id)
                                                                                                                                                   Buffers: shared hit=566 read=145457
                                                                                                                                                   ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.030..0.051 rows=1 loops=1)
                                                                                                                                                         Filter: ((info)::text = 'countries'::text)
                                                                                                                                                         Rows Removed by Filter: 112
                                                                                                                                                         Buffers: shared hit=2
                                                                                                                                                   ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=2827.678..13696.449 rows=700234 loops=1)
                                                                                                                                                         Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                                                                                                                         Rows Removed by Filter: 11752209
                                                                                                                                                         Buffers: shared hit=564 read=145457
                                                                                                                                       ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.021..222.266 rows=133516 loops=1)
                                                                                                                                             Buffers: shared hit=85573 read=1090
                                                                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=20.050..10602.714 rows=1012578 loops=1)
                                                                                                                                       Filter: (production_year > 2005)
                                                                                                                                       Rows Removed by Filter: 1513043
                                                                                                                                       Buffers: shared hit=2488147 read=42859
                                                                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                                                                                                           Sort Key: cct1.id
                                                                                                                           Sort Method: quicksort  Memory: 25kB
                                                                                                                           Buffers: shared hit=1 read=1
                                                                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.019..0.019 rows=1 loops=1)
                                                                                                                                 Index Cond: ((kind)::text = 'cast'::text)
                                                                                                                                 Buffers: shared hit=1 read=1
                                                                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.013..0.013 rows=1 loops=1)
                                                                                                               Sort Key: cct2.id
                                                                                                               Sort Method: quicksort  Memory: 25kB
                                                                                                               Buffers: shared hit=2
                                                                                                               ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                                                                                                                     Index Cond: ((kind)::text = 'complete'::text)
                                                                                                                     Buffers: shared hit=2
                                                                                             ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=2054.936..2068.331 rows=303699 loops=1)
                                                                                                   Sort Key: mc.movie_id
                                                                                                   Sort Method: quicksort  Memory: 26504kB
                                                                                                   Buffers: shared hit=3 read=25917
                                                                                                   ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=12.174..1908.685 rows=303271 loops=1)
                                                                                                         Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                         Rows Removed by Filter: 2305858
                                                                                                         Buffers: shared hit=3 read=25917
                                                                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=0.021..1023.109 rows=1371409 loops=1)
                                                                           Filter: (info < '8.5'::text)
                                                                           Rows Removed by Filter: 37493
                                                                           Buffers: shared hit=14959 read=12189
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.018..2182.825 rows=5657383 loops=1)
                                                   Buffers: shared hit=36857 read=36724
                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.020..0.024 rows=2 loops=1)
                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                           Rows Removed by Filter: 5
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=33.100..379.602 rows=38546 loops=1)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 31675
               Buffers: shared hit=69252 read=1155
 Planning Time: 14687.576 ms
 Execution Time: 32877.078 ms
(153 rows)

