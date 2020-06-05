                                                                                                                                    QUERY PLAN                                                                                                                                     
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=723559.74..723559.74 rows=1 width=96) (actual time=32466.199..32466.200 rows=1 loops=1)
   Buffers: shared hit=2767100 read=267010
   ->  Merge Join  (cost=723550.56..723559.74 rows=1 width=42) (actual time=32418.409..32431.459 rows=21489 loops=1)
         Merge Cond: (mc.company_type_id = ct.id)
         Buffers: shared hit=2767100 read=267010
         ->  Sort  (cost=723550.55..723550.55 rows=1 width=46) (actual time=32418.396..32420.578 rows=21489 loops=1)
               Sort Key: mc.company_type_id
               Sort Method: quicksort  Memory: 2970kB
               Buffers: shared hit=2767098 read=267010
               ->  Merge Join  (cost=723550.55..723550.55 rows=1 width=46) (actual time=32288.310..32407.992 rows=21489 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=2767094 read=267010
                     ->  Sort  (cost=723526.02..723526.02 rows=7 width=50) (actual time=32183.656..32253.650 rows=413386 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 387905kB
                           Buffers: shared hit=2767086 read=267000
                           ->  Merge Join  (cost=683929.42..723526.01 rows=7 width=50) (actual time=26136.905..31032.946 rows=2610972 loops=1)
                                 Merge Cond: (t.id = mi.movie_id)
                                 Buffers: shared hit=2767086 read=267000
                                 ->  Merge Join  (cost=63957.08..103594.12 rows=955 width=66) (actual time=14414.548..18166.156 rows=2808890 loops=1)
                                       Merge Cond: (t.id = mk.movie_id)
                                       Buffers: shared hit=2766520 read=121543
                                       ->  Sort  (cost=63957.06..63957.07 rows=97 width=58) (actual time=14407.801..14417.752 rows=56007 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 8328kB
                                             Buffers: shared hit=2710435 read=84733
                                             ->  Merge Join  (cost=59349.94..63956.96 rows=97 width=58) (actual time=13436.355..14373.288 rows=56007 loops=1)
                                                   Merge Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=2710435 read=84733
                                                   ->  Sort  (cost=59349.93..59349.94 rows=180 width=43) (actual time=13400.435..13411.002 rows=61806 loops=1)
                                                         Sort Key: mc.company_id
                                                         Sort Method: quicksort  Memory: 6946kB
                                                         Buffers: shared hit=2506019 read=80997
                                                         ->  Merge Join  (cost=59348.36..59349.72 rows=180 width=43) (actual time=13354.152..13374.354 rows=61806 loops=1)
                                                               Merge Cond: (mi_idx.info_type_id = it2.id)
                                                               Buffers: shared hit=2506019 read=80997
                                                               ->  Sort  (cost=59342.23..59342.91 rows=8714 width=47) (actual time=13326.970..13337.910 rows=185516 loops=1)
                                                                     Sort Key: mi_idx.info_type_id
                                                                     Sort Method: quicksort  Memory: 25325kB
                                                                     Buffers: shared hit=2506018 read=80996
                                                                     ->  Merge Join  (cost=47078.94..59324.52 rows=8714 width=47) (actual time=12017.615..13232.729 rows=186037 loops=1)
                                                                           Merge Cond: (t.id = mi_idx.movie_id)
                                                                           Buffers: shared hit=2506018 read=80996
                                                                           ->  Sort  (cost=47078.92..47080.20 rows=16398 width=33) (actual time=12007.818..12015.790 rows=88858 loops=1)
                                                                                 Sort Key: t.id
                                                                                 Sort Method: quicksort  Memory: 10399kB
                                                                                 Buffers: shared hit=2488152 read=68776
                                                                                 ->  Merge Join  (cost=47024.04..47043.27 rows=16398 width=33) (actual time=11937.435..11974.359 rows=88858 loops=1)
                                                                                       Merge Cond: (t.kind_id = kt.id)
                                                                                       Buffers: shared hit=2488152 read=68776
                                                                                       ->  Sort  (cost=47024.04..47028.50 rows=57394 width=37) (actual time=11937.415..11945.302 rows=135193 loops=1)
                                                                                             Sort Key: t.kind_id
                                                                                             Sort Method: quicksort  Memory: 17974kB
                                                                                             Buffers: shared hit=2488150 read=68776
                                                                                             ->  Merge Join  (cost=23563.63..46883.15 rows=57394 width=37) (actual time=2207.539..11884.708 rows=135193 loops=1)
                                                                                                   Merge Cond: (mc.movie_id = t.id)
                                                                                                   Buffers: shared hit=2488150 read=68776
                                                                                                   ->  Sort  (cost=23563.61..23574.73 rows=143259 width=12) (actual time=2185.069..2219.641 rows=303271 loops=1)
                                                                                                         Sort Key: mc.movie_id
                                                                                                         Sort Method: quicksort  Memory: 26504kB
                                                                                                         Buffers: shared hit=3 read=25917
                                                                                                         ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=143259 width=12) (actual time=14.150..2047.375 rows=303271 loops=1)
                                                                                                               Filter: ((note !~~ '%(USA)%'::text) AND (note ~~ '%(200%)%'::text))
                                                                                                               Rows Removed by Filter: 2305858
                                                                                                               Buffers: shared hit=3 read=25917
                                                                                                   ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=25) (actual time=22.457..9457.414 rows=1012614 loops=1)
                                                                                                         Filter: (production_year > 2005)
                                                                                                         Rows Removed by Filter: 1513057
                                                                                                         Buffers: shared hit=2488147 read=42859
                                                                                       ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.016..0.021 rows=2 loops=1)
                                                                                             Filter: ((kind)::text = ANY ('{movie,episode}'::text[]))
                                                                                             Rows Removed by Filter: 5
                                                                                             Buffers: shared hit=2
                                                                           ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=1343551 width=14) (actual time=0.021..970.570 rows=1460861 loops=1)
                                                                                 Filter: (info < '8.5'::text)
                                                                                 Rows Removed by Filter: 40751
                                                                                 Buffers: shared hit=17866 read=12220
                                                               ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                                                     Sort Key: it2.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=1 read=1
                                                                     ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.029..0.030 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'rating'::text)
                                                                           Buffers: shared hit=1 read=1
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=126230 width=23) (actual time=33.942..922.425 rows=114205 loops=1)
                                                         Filter: ((country_code)::text <> '[us]'::text)
                                                         Rows Removed by Filter: 93432
                                                         Buffers: shared hit=204416 read=3736
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..2468.567 rows=7023658 loops=1)
                                             Buffers: shared hit=56085 read=36810
                                 ->  Sort  (cost=619972.34..619972.83 rows=6329 width=4) (actual time=11722.339..11919.622 rows=3218749 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 53370kB
                                       Buffers: shared hit=566 read=145457
                                       ->  Merge Join  (cost=0.02..619959.93 rows=6329 width=4) (actual time=5636.256..11513.246 rows=614251 loops=1)
                                             Merge Cond: (it1.id = mi.info_type_id)
                                             Buffers: shared hit=566 read=145457
                                             ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.011..0.035 rows=1 loops=1)
                                                   Filter: ((info)::text = 'countries'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..619894.76 rows=715132 width=8) (actual time=2816.339..11393.000 rows=700234 loops=1)
                                                   Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Danish,Norwegian,German,USA,American}'::text[]))
                                                   Rows Removed by Filter: 11752209
                                                   Buffers: shared hit=564 read=145457
                     ->  Sort  (cost=24.53..24.53 rows=4 width=4) (actual time=68.287..68.287 rows=3 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=8 read=10
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..24.53 rows=4 width=4) (actual time=43.335..68.262 rows=3 loops=1)
                                 Index Cond: (keyword = ANY ('{murder,murder-in-title,blood,violence}'::text[]))
                                 Buffers: shared hit=8 read=10
         ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.009..0.009 rows=1 loops=1)
               Buffers: shared hit=2
 Planning Time: 8951.382 ms
 Execution Time: 32516.294 ms
(116 rows)

