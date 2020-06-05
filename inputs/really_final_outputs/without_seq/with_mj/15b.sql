                                                                                                     QUERY PLAN                                                                                                      
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=712259.67..712259.67 rows=1 width=64) (actual time=43817.647..43817.647 rows=1 loops=1)
   Buffers: shared hit=3079109 read=316547
   ->  Merge Join  (cost=680917.49..712259.67 rows=4 width=59) (actual time=42540.783..43817.588 rows=37 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=3079109 read=316547
         ->  Merge Join  (cost=23240.70..54582.88 rows=1 width=29) (actual time=4840.623..16888.841 rows=26 loops=1)
               Merge Cond: (t.id = mc.movie_id)
               Buffers: shared hit=2839055 read=75947
               ->  Merge Join  (cost=2.06..31368.14 rows=102403 width=25) (actual time=428.495..14764.933 rows=44988 loops=1)
                     Merge Cond: (at.movie_id = t.id)
                     Buffers: shared hit=2839046 read=50026
                     ->  Index Scan using aka_title_idx_movieid on aka_title at  (cost=0.01..7867.28 rows=361472 width=4) (actual time=0.026..3146.740 rows=360153 loops=1)
                           Buffers: shared hit=353458 read=7174
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=716259 width=21) (actual time=15.981..11427.257 rows=715635 loops=1)
                           Filter: ((production_year >= 2005) AND (production_year <= 2010))
                           Rows Removed by Filter: 1807406
                           Buffers: shared hit=2485588 read=42852
               ->  Sort  (cost=23238.65..23238.65 rows=1 width=4) (actual time=2117.019..2117.179 rows=283 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 38kB
                     Buffers: shared hit=9 read=25921
                     ->  Merge Join  (cost=23229.46..23238.65 rows=1 width=4) (actual time=2095.372..2095.473 rows=278 loops=1)
                           Merge Cond: (mc.company_type_id = ct.id)
                           Buffers: shared hit=5 read=25921
                           ->  Sort  (cost=23229.46..23229.46 rows=1 width=8) (actual time=2095.351..2095.370 rows=278 loops=1)
                                 Sort Key: mc.company_type_id
                                 Sort Method: quicksort  Memory: 38kB
                                 Buffers: shared hit=3 read=25921
                                 ->  Merge Join  (cost=23226.76..23229.46 rows=1 width=8) (actual time=2095.097..2095.258 rows=278 loops=1)
                                       Merge Cond: (cn.id = mc.company_id)
                                       Buffers: shared hit=3 read=25921
                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=38.718..38.719 rows=1 loops=1)
                                             Sort Key: cn.id
                                             Sort Method: quicksort  Memory: 25kB
                                             Buffers: shared read=4
                                             ->  Index Scan using company_name_idx_name on company_name cn  (cost=0.01..6.13 rows=1 width=4) (actual time=38.682..38.686 rows=1 loops=1)
                                                   Index Cond: (name = 'YouTube'::text)
                                                   Filter: ((country_code)::text = '[us]'::text)
                                                   Buffers: shared read=4
                                       ->  Sort  (cost=23220.62..23221.97 rows=17389 width=12) (actual time=2056.316..2056.399 rows=414 loops=1)
                                             Sort Key: mc.company_id
                                             Sort Method: quicksort  Memory: 4427kB
                                             Buffers: shared hit=3 read=25917
                                             ->  Index Scan using movie_companies_company_type_id on movie_companies mc  (cost=0.01..23182.59 rows=17389 width=12) (actual time=25.529..2013.844 rows=61664 loops=1)
                                                   Filter: ((note ~~ '%(200%)%'::text) AND (note ~~ '%(worldwide)%'::text))
                                                   Rows Removed by Filter: 2547465
                                                   Buffers: shared hit=3 read=25917
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..9.19 rows=4 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                 Buffers: shared hit=2
         ->  Sort  (cost=657676.79..657676.79 rows=24 width=50) (actual time=26927.325..26928.021 rows=4234 loops=1)
               Sort Key: mi.movie_id
               Sort Method: quicksort  Memory: 539kB
               Buffers: shared hit=240054 read=240600
               ->  Merge Join  (cost=656085.53..657676.77 rows=24 width=50) (actual time=26578.138..26924.698 rows=4429 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=240054 read=240600
                     ->  Sort  (cost=656085.52..656085.52 rows=24 width=54) (actual time=26578.116..26579.095 rows=4429 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 539kB
                           Buffers: shared hit=109160 read=239168
                           ->  Merge Join  (cost=616448.48..656085.50 rows=24 width=54) (actual time=23155.020..26575.418 rows=4429 loops=1)
                                 Merge Cond: (mi.movie_id = mk.movie_id)
                                 Buffers: shared hit=109160 read=239168
                                 ->  Sort  (cost=616448.47..616448.47 rows=2 width=46) (actual time=23154.934..23155.290 rows=1771 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 187kB
                                       Buffers: shared hit=87586 read=202427
                                       ->  Merge Join  (cost=0.02..616448.47 rows=2 width=46) (actual time=13727.786..23153.116 rows=1771 loops=1)
                                             Merge Cond: (it.id = mi.info_type_id)
                                             Buffers: shared hit=87586 read=202427
                                             ->  Index Scan using info_type_pkey on info_type it  (cost=0.00..9.21 rows=1 width=4) (actual time=0.018..0.041 rows=1 loops=1)
                                                   Filter: ((info)::text = 'release dates'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..616439.24 rows=260 width=50) (actual time=13727.757..23151.787 rows=1771 loops=1)
                                                   Filter: ((note ~~ '%internet%'::text) AND (info ~~ 'USA:% 200%'::text))
                                                   Rows Removed by Filter: 14833949
                                                   Buffers: shared hit=87584 read=202427
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2671.837 rows=4514890 loops=1)
                                       Buffers: shared hit=21574 read=36741
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1580.83 rows=134170 width=4) (actual time=0.015..321.559 rows=133880 loops=1)
                           Buffers: shared hit=130894 read=1432
 Planning Time: 8949.718 ms
 Execution Time: 43819.089 ms
(84 rows)

