                                                                                                                               QUERY PLAN                                                                                                                                
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1518229.58..1518229.58 rows=1 width=128) (actual time=125057.219..125057.219 rows=1 loops=1)
   Buffers: shared hit=7606761 read=671440
   ->  Merge Join  (cost=1470522.72..1518229.58 rows=1 width=80) (actual time=123343.480..125057.092 rows=84 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=7606761 read=671440
         ->  Sort  (cost=1470522.68..1470522.68 rows=1 width=69) (actual time=123076.019..123076.041 rows=84 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 31kB
               Buffers: shared hit=6006574 read=643041
               ->  Merge Join  (cost=1446548.04..1470522.68 rows=1 width=69) (actual time=122013.435..123071.450 rows=84 loops=1)
                     Merge Cond: (mi.movie_id = t.id)
                     Buffers: shared hit=6006570 read=643041
                     ->  Sort  (cost=615303.29..615303.34 rows=650 width=46) (actual time=18798.188..18800.348 rows=48948 loops=1)
                           Sort Key: mi.movie_id
                           Sort Method: quicksort  Memory: 6460kB
                           Buffers: shared hit=14768 read=170742
                           ->  Merge Join  (cost=0.02..615302.35 rows=650 width=46) (actual time=1963.546..18755.024 rows=72258 loops=1)
                                 Merge Cond: (it.id = mi.info_type_id)
                                 Buffers: shared hit=14768 read=170742
                                 ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.032..0.062 rows=1 loops=1)
                                       Filter: ((info)::text = 'genres'::text)
                                       Rows Removed by Filter: 112
                                       Buffers: shared hit=2
                                 ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=1963.500..18728.295 rows=72259 loops=1)
                                       Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                       Rows Removed by Filter: 13634891
                                       Buffers: shared hit=14766 read=170742
                     ->  Materialize  (cost=831244.75..855219.28 rows=1 width=47) (actual time=103208.055..104266.043 rows=83 loops=1)
                           Buffers: shared hit=5991802 read=472299
                           ->  Merge Join  (cost=831244.75..855219.28 rows=1 width=47) (actual time=103208.048..104266.017 rows=53 loops=1)
                                 Merge Cond: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=5991802 read=472299
                                 ->  Merge Join  (cost=831244.73..831438.18 rows=1 width=26) (actual time=94249.871..94323.273 rows=276 loops=1)
                                       Merge Cond: (mi_idx.movie_id = ci.movie_id)
                                       Buffers: shared hit=3535228 read=429877
                                       ->  Sort  (cost=116416.26..116416.26 rows=1 width=18) (actual time=17939.015..17939.087 rows=315 loops=1)
                                             Sort Key: mc.movie_id
                                             Sort Method: quicksort  Memory: 49kB
                                             Buffers: shared hit=1683462 read=78200
                                             ->  Merge Join  (cost=111819.07..116416.26 rows=1 width=18) (actual time=17587.618..17938.890 rows=315 loops=1)
                                                   Merge Cond: (mc.company_id = cn.id)
                                                   Buffers: shared hit=1683462 read=78200
                                                   ->  Sort  (cost=111819.06..111819.06 rows=1 width=22) (actual time=17226.777..17228.903 rows=12701 loops=1)
                                                         Sort Key: mc.company_id
                                                         Sort Method: quicksort  Memory: 1377kB
                                                         Buffers: shared hit=1491840 read=74958
                                                         ->  Merge Join  (cost=111818.92..111819.06 rows=1 width=22) (actual time=17182.141..17221.733 rows=12701 loops=1)
                                                               Merge Cond: (mk.keyword_id = k.id)
                                                               Buffers: shared hit=1491840 read=74958
                                                               ->  Sort  (cost=111775.99..111776.06 rows=888 width=26) (actual time=17090.153..17110.580 rows=110312 loops=1)
                                                                     Sort Key: mk.keyword_id
                                                                     Sort Method: quicksort  Memory: 84099kB
                                                                     Buffers: shared hit=1491826 read=74941
                                                                     ->  Merge Join  (cost=72138.69..111774.64 rows=888 width=26) (actual time=13707.546..16703.375 rows=761887 loops=1)
                                                                           Merge Cond: (mi_idx.movie_id = mk.movie_id)
                                                                           Buffers: shared hit=1491826 read=74941
                                                                           ->  Sort  (cost=72138.68..72138.68 rows=90 width=18) (actual time=13655.193..13656.359 rows=7759 loops=1)
                                                                                 Sort Key: mi_idx.movie_id
                                                                                 Sort Method: quicksort  Memory: 760kB
                                                                                 Buffers: shared hit=1464520 read=38133
                                                                                 ->  Merge Join  (cost=72137.00..72138.58 rows=90 width=18) (actual time=13650.252..13652.579 rows=7759 loops=1)
                                                                                       Merge Cond: (mi_idx.info_type_id = it.id)
                                                                                       Buffers: shared hit=1464520 read=38133
                                                                                       ->  Sort  (cost=72130.87..72131.66 rows=10178 width=22) (actual time=13648.681..13649.760 rows=15519 loops=1)
                                                                                             Sort Key: mi_idx.info_type_id
                                                                                             Sort Method: quicksort  Memory: 2619kB
                                                                                             Buffers: shared hit=1464519 read=38132
                                                                                             ->  Merge Join  (cost=59970.02..72109.83 rows=10178 width=22) (actual time=12304.094..13633.678 rows=23685 loops=1)
                                                                                                   Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                                                                                   Buffers: shared hit=1464519 read=38132
                                                                                                   ->  Sort  (cost=59970.00..59970.62 rows=7977 width=8) (actual time=12280.909..12282.685 rows=7963 loops=1)
                                                                                                         Sort Key: mc.movie_id
                                                                                                         Sort Method: quicksort  Memory: 566kB
                                                                                                         Buffers: shared hit=1450205 read=25913
                                                                                                         ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59953.95 rows=7977 width=8) (actual time=7771.240..12277.397 rows=7963 loops=1)
                                                                                                               Filter: (note ~~ '%(Blu-ray)%'::text)
                                                                                                               Rows Removed by Filter: 2601166
                                                                                                               Buffers: shared hit=1450205 read=25913
                                                                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.014..1029.405 rows=1390258 loops=1)
                                                                                                         Buffers: shared hit=14314 read=12219
                                                                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.034..0.034 rows=1 loops=1)
                                                                                             Sort Key: it.id
                                                                                             Sort Method: quicksort  Memory: 25kB
                                                                                             Buffers: shared hit=1 read=1
                                                                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                                                                                   Index Cond: ((info)::text = 'votes'::text)
                                                                                                   Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.016..2207.659 rows=4946401 loops=1)
                                                                                 Buffers: shared hit=27306 read=36808
                                                               ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=79.013..79.014 rows=7 loops=1)
                                                                     Sort Key: k.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=14 read=17
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=30.017..78.975 rows=7 loops=1)
                                                                           Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                                                           Buffers: shared hit=14 read=17
                                                   ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=358.211..707.671 rows=10 loops=1)
                                                         Filter: (name ~~ 'Lionsgate%'::text)
                                                         Rows Removed by Filter: 194367
                                                         Buffers: shared hit=191622 read=3242
                                       ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=76138.203..76251.261 rows=1238536 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 107499kB
                                             Buffers: shared hit=1851766 read=351677
                                             ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=49.425..75363.304 rows=1244716 loops=1)
                                                   Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                                   Rows Removed by Filter: 34999628
                                                   Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23827.24 rows=516 width=21) (actual time=614.589..9942.428 rows=531 loops=1)
                                       Filter: ((production_year > 2000) AND ((title ~~ '%Freddy%'::text) OR (title ~~ '%Jason%'::text) OR (title ~~ 'Saw%'::text)))
                                       Rows Removed by Filter: 2493079
                                       Buffers: shared hit=2456574 read=42422
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.018..1809.880 rows=1669246 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Buffers: shared hit=1600187 read=28399
 Planning Time: 14820.865 ms
 Execution Time: 125112.481 ms
(117 rows)

