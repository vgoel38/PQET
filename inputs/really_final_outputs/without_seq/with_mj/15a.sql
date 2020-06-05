                                                                                                     QUERY PLAN                                                                                                      
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=716699.23..716699.23 rows=1 width=64) (actual time=43031.782..43031.782 rows=1 loops=1)
   Buffers: shared hit=3168505 read=318144
   ->  Merge Join  (cost=685530.44..716699.23 rows=8 width=59) (actual time=30530.530..43031.560 rows=328 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=3168505 read=318144
         ->  Merge Join  (cost=27853.66..59043.15 rows=1498 width=29) (actual time=3513.321..16947.431 rows=5115 loops=1)
               Merge Cond: (t.id = at.movie_id)
               Buffers: shared hit=2928451 read=77544
               ->  Merge Join  (cost=27851.61..51174.71 rows=3430 width=25) (actual time=2534.935..13899.846 rows=37135 loops=1)
                     Merge Cond: (mc.movie_id = t.id)
                     Buffers: shared hit=2575664 read=70373
                     ->  Sort  (cost=27851.58..27852.07 rows=6278 width=4) (actual time=2529.826..2539.179 rows=43801 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 3591kB
                           Buffers: shared hit=91986 read=27526
                           ->  Merge Join  (cost=23232.38..27839.28 rows=6278 width=4) (actual time=2040.219..2510.918 rows=43837 loops=1)
                                 Merge Cond: (mc.company_id = cn.id)
                                 Buffers: shared hit=91982 read=27526
                                 ->  Sort  (cost=23232.36..23233.71 rows=17389 width=8) (actual time=2040.176..2050.672 rows=61664 loops=1)
                                       Sort Key: mc.company_id
                                       Sort Method: quicksort  Memory: 4427kB
                                       Buffers: shared hit=5 read=25917
                                       ->  Merge Join  (cost=0.02..23194.33 rows=17389 width=8) (actual time=16.479..2000.123 rows=61664 loops=1)
                                             Merge Cond: (ct.id = mc.company_type_id)
                                             Buffers: shared hit=5 read=25917
                                             ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.014..0.018 rows=3 loops=1)
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=16.457..1983.130 rows=61664 loops=1)
                                                   Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                   Rows Removed by Filter: 2547465
                                                   Buffers: shared hit=3 read=25917
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=84843 width=4) (actual time=0.031..438.073 rows=34629 loops=1)
                                       Filter: ((country_code)::text = '[us]'::text)
                                       Rows Removed by Filter: 58745
                                       Buffers: shared hit=91977 read=1609
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1381453 width=21) (actual time=5.104..11131.918 rows=1379378 loops=1)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 1141748
                           Buffers: shared hit=2483678 read=42847
               ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..7867.28 rows=361472 width=4) (actual time=0.011..2983.115 rows=359637 loops=1)
                     Buffers: shared hit=352787 read=7171
         ->  Sort  (cost=657676.79..657676.79 rows=24 width=50) (actual time=26081.195..26082.216 rows=4560 loops=1)
               Sort Key: mi.movie_id
               Sort Method: quicksort  Memory: 539kB
               Buffers: shared hit=240054 read=240600
               ->  Merge Join  (cost=656085.53..657676.77 rows=24 width=50) (actual time=25715.862..26078.833 rows=4429 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=240054 read=240600
                     ->  Sort  (cost=656085.52..656085.52 rows=24 width=54) (actual time=25715.836..25716.681 rows=4429 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 539kB
                           Buffers: shared hit=109160 read=239168
                           ->  Merge Join  (cost=616448.48..656085.50 rows=24 width=54) (actual time=22419.126..25712.651 rows=4429 loops=1)
                                 Merge Cond: (mi.movie_id = mk.movie_id)
                                 Buffers: shared hit=109160 read=239168
                                 ->  Sort  (cost=616448.47..616448.47 rows=2 width=46) (actual time=22419.045..22419.411 rows=1771 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 187kB
                                       Buffers: shared hit=87586 read=202427
                                       ->  Merge Join  (cost=0.02..616448.47 rows=2 width=46) (actual time=14291.663..22417.007 rows=1771 loops=1)
                                             Merge Cond: (it.id = mi.info_type_id)
                                             Buffers: shared hit=87586 read=202427
                                             ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.041..0.064 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=260 width=50) (actual time=14291.608..22415.674 rows=1771 loops=1)
                                                   Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                                   Rows Removed by Filter: 14833949
                                                   Buffers: shared hit=87584 read=202427
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.013..2537.279 rows=4514890 loops=1)
                                       Buffers: shared hit=21574 read=36741
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.019..340.149 rows=133880 loops=1)
                           Buffers: shared hit=130894 read=1432
 Planning Time: 8901.619 ms
 Execution Time: 43053.792 ms
(76 rows)

