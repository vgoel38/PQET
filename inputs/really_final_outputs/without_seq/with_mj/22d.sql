                                                                                                                            QUERY PLAN                                                                                                                            
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=733279.55..733279.55 rows=1 width=96) (actual time=41909.446..41909.446 rows=1 loops=1)
   Buffers: shared hit=2755328 read=267111
   ->  Merge Join  (cost=728672.56..733279.55 rows=1 width=42) (actual time=41097.646..41870.684 rows=46281 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=2755328 read=267111
         ->  Sort  (cost=728672.54..728672.54 rows=1 width=27) (actual time=41056.974..41068.565 rows=64848 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 6355kB
               Buffers: shared hit=2523948 read=263277
               ->  Merge Join  (cost=728663.36..728672.54 rows=1 width=27) (actual time=41014.197..41031.974 rows=64848 loops=1)
                     Merge Cond: (mc.company_type_id = ct.id)
                     Buffers: shared hit=2523944 read=263277
                     ->  Sort  (cost=728663.36..728663.36 rows=1 width=31) (actual time=41014.181..41017.330 rows=64848 loops=1)
                           Sort Key: mc.company_type_id
                           Sort Method: quicksort  Memory: 6693kB
                           Buffers: shared hit=2523942 read=263277
                           ->  Merge Join  (cost=728663.32..728663.36 rows=1 width=31) (actual time=40783.962..40999.034 rows=64848 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=2523942 read=263277
                                 ->  Sort  (cost=728638.79..728638.81 rows=232 width=35) (actual time=40615.326..40716.056 rows=1179890 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 819863kB
                                       Buffers: shared hit=2523934 read=263267
                                       ->  Merge Join  (cost=688661.46..728638.51 rows=232 width=35) (actual time=29638.987..37719.524 rows=7672942 loops=1)
                                             Merge Cond: (t.id = mi.movie_id)
                                             Buffers: shared hit=2523934 read=263267
                                             ->  Merge Join  (cost=68689.12..108692.32 rows=32379 width=51) (actual time=15351.427..20544.731 rows=8937326 loops=1)
                                                   Merge Cond: (t.id = mc.movie_id)
                                                   Buffers: shared hit=2523368 read=117810
                                                   ->  Merge Join  (cost=37275.97..76913.37 rows=13422 width=39) (actual time=12922.574..15146.557 rows=684995 loops=1)
                                                         Merge Cond: (t.id = mk.movie_id)
                                                         Buffers: shared hit=2523365 read=91893
                                                         ->  Sort  (cost=37275.96..37276.07 rows=1361 width=31) (actual time=12922.544..12936.256 rows=106971 loops=1)
                                                               Sort Key: mi_idx.movie_id
                                                               Sort Method: quicksort  Memory: 11729kB
                                                               Buffers: shared hit=2501723 read=55083
                                                               ->  Merge Join  (cost=37263.74..37273.76 rows=1361 width=31) (actual time=12836.501..12877.636 rows=106971 loops=1)
                                                                     Merge Cond: (t.kind_id = kt.id)
                                                                     Buffers: shared hit=2501723 read=55083
                                                                     ->  Sort  (cost=37263.74..37264.11 rows=4764 width=35) (actual time=12836.476..12846.355 rows=140455 loops=1)
                                                                           Sort Key: t.kind_id
                                                                           Sort Method: quicksort  Memory: 17978kB
                                                                           Buffers: shared hit=2501721 read=55083
                                                                           ->  Merge Join  (cost=37170.79..37254.70 rows=4764 width=35) (actual time=12749.423..12796.521 rows=140455 loops=1)
                                                                                 Merge Cond: (mi_idx.info_type_id = it.id)
                                                                                 Buffers: shared hit=2501721 read=55083
                                                                                 ->  Sort  (cost=37164.66..37206.46 rows=538268 width=39) (actual time=12691.303..12728.070 rows=417545 loops=1)
                                                                                       Sort Key: mi_idx.info_type_id
                                                                                       Sort Method: quicksort  Memory: 50234kB
                                                                                       Buffers: shared hit=2501720 read=55082
                                                                                       ->  Merge Join  (cost=0.03..35573.43 rows=538268 width=39) (actual time=24.346..12491.790 rows=417590 loops=1)
                                                                                             Merge Cond: (mi_idx.movie_id = t.id)
                                                                                             Buffers: shared hit=2501720 read=55082
                                                                                             ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=0.041..1250.503 rows=1343555 loops=1)
                                                                                                   Filter: (info < '8.5'::text)
                                                                                                   Rows Removed by Filter: 36480
                                                                                                   Buffers: shared hit=13571 read=12220
                                                                                             ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=24.296..10773.816 rows=1012657 loops=1)
                                                                                                   Filter: (production_year > 2005)
                                                                                                   Rows Removed by Filter: 1513136
                                                                                                   Buffers: shared hit=2488149 read=42862
                                                                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.035..0.036 rows=1 loops=1)
                                                                                       Sort Key: it.id
                                                                                       Sort Method: quicksort  Memory: 25kB
                                                                                       Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'rating'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.020..0.028 rows=2 loops=1)
                                                                           Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                           Rows Removed by Filter: 5
                                                                           Buffers: shared hit=2
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.021..1562.808 rows=4523925 loops=1)
                                                               Buffers: shared hit=21642 read=36810
                                                   ->  Sort  (cost=31413.15..31615.72 rows=2609129 width=12) (actual time=2428.840..2983.038 rows=11344511 loops=1)
                                                         Sort Key: mc.movie_id
                                                         Sort Method: quicksort  Memory: 220607kB
                                                         Buffers: shared hit=3 read=25917
                                                         ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..22777.45 rows=2609129 width=12) (actual time=15.916..1370.600 rows=2609129 loops=1)
                                                               Buffers: shared hit=3 read=25917
                                             ->  Sort  (cost=619972.34..619972.83 rows=6329 width=4) (actual time=14287.549..14680.710 rows=8267448 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 53370kB
                                                   Buffers: shared hit=566 read=145457
                                                   ->  Merge Join  (cost=0.02..619959.93 rows=6329 width=4) (actual time=5963.178..14077.068 rows=614251 loops=1)
                                                         Merge Cond: (it.id = mi.info_type_id)
                                                         Buffers: shared hit=566 read=145457
                                                         ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.019..0.043 rows=1 loops=1)
                                                               Filter: ((info)::text = 'countries'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=3037.696..13955.475 rows=700234 loops=1)
                                                               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                               Rows Removed by Filter: 11752209
                                                               Buffers: shared hit=564 read=145457
                                 ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=111.125..111.125 rows=3 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=8 read=10
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=86.162..111.101 rows=3 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                             Buffers: shared hit=8 read=10
                     ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.011..0.013 rows=2 loops=1)
                           Buffers: shared hit=2
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=38.696..768.941 rows=125938 loops=1)
               Filter: ((country_code)::text <> '[us]'::text)
               Rows Removed by Filter: 108720
               Buffers: shared hit=231380 read=3834
 Planning Time: 9195.568 ms
 Execution Time: 41977.688 ms
(110 rows)

