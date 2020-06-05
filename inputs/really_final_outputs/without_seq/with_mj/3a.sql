                                                                                          QUERY PLAN                                                                                           
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=690898.93..690898.93 rows=1 width=32) (actual time=118043.505..118043.505 rows=1 loops=1)
   Buffers: shared hit=11720158 read=283530
   ->  Merge Join  (cost=70782.72..690898.90 rows=364 width=17) (actual time=39121.080..118042.750 rows=206 loops=1)
         Merge Cond: (t.id = mi.movie_id)
         Buffers: shared hit=11720158 read=283530
         ->  Sort  (cost=70782.71..70782.78 rows=905 width=25) (actual time=18123.642..18125.286 rows=2234 loops=1)
               Sort Key: mk.movie_id
               Sort Method: quicksort  Memory: 279kB
               Buffers: shared hit=2641013 read=81107
               ->  Merge Join  (cost=68908.60..70781.33 rows=905 width=25) (actual time=17303.695..18094.939 rows=2235 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=2641009 read=81107
                     ->  Sort  (cost=68908.58..69049.30 rows=1812426 width=29) (actual time=17219.496..17411.387 rows=1251254 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 151439kB
                           Buffers: shared hit=2509832 read=79675
                           ->  Merge Join  (cost=0.21..63057.75 rows=1812426 width=29) (actual time=24.365..16594.971 rows=1253091 loops=1)
                                 Merge Cond: (mk.movie_id = t.id)
                                 Buffers: shared hit=2509832 read=79675
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.026..3366.075 rows=4523930 loops=1)
                                       Buffers: shared hit=21643 read=36810
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1012920 width=21) (actual time=24.328..11988.023 rows=1012684 loops=1)
                                       Filter: (production_year > 2005)
                                       Rows Removed by Filter: 1513289
                                       Buffers: shared hit=2488189 read=42865
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=31.073..510.495 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
         ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..620104.07 rows=154416 width=4) (actual time=256.034..99854.706 rows=153951 loops=1)
               Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
               Rows Removed by Filter: 14694829
               Buffers: shared hit=9079145 read=202423
 Planning Time: 2015.101 ms
 Execution Time: 118056.944 ms
(35 rows)

