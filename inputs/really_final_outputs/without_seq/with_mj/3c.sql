                                                                                       QUERY PLAN                                                                                        
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=701257.29..701257.29 rows=1 width=32) (actual time=122445.441..122445.441 rows=1 loops=1)
   Buffers: shared hit=11713270 read=283522
   ->  Merge Join  (cost=57119.97..701257.07 rows=2873 width=17) (actual time=9141.787..122422.610 rows=7250 loops=1)
         Merge Cond: (t.id = mk.movie_id)
         Buffers: shared hit=11713270 read=283522
         ->  Merge Join  (cost=0.03..644701.18 rows=488105 width=25) (actual time=121.087..116614.326 rows=476379 loops=1)
               Merge Cond: (mi.movie_id = t.id)
               Buffers: shared hit=11560446 read=245280
               ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..621255.91 rows=705579 width=4) (actual time=117.503..97778.337 rows=706640 loops=1)
                     Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,USA,American}'::text[]))
                     Rows Removed by Filter: 14127693
                     Buffers: shared hit=9072299 read=202420
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=1749033 width=21) (actual time=0.031..17713.871 rows=1748432 loops=1)
                     Filter: (production_year > 1990)
                     Rows Removed by Filter: 777301
                     Buffers: shared hit=2488147 read=42860
         ->  Sort  (cost=57114.66..57114.84 rows=2259 width=4) (actual time=5639.233..5646.296 rows=14165 loops=1)
               Sort Key: mk.movie_id
               Sort Method: quicksort  Memory: 992kB
               Buffers: shared hit=152824 read=38242
               ->  Merge Join  (cost=54816.89..57110.76 rows=2259 width=4) (actual time=4167.039..5604.272 rows=12951 loops=1)
                     Merge Cond: (k.id = mk.keyword_id)
                     Buffers: shared hit=152820 read=38242
                     ->  Index Scan using keyword_pkey on keyword k  (cost=0.01..1591.24 rows=67 width=4) (actual time=35.107..371.890 rows=30 loops=1)
                           Filter: (keyword ~~ '%sequel%'::text)
                           Rows Removed by Filter: 134140
                           Buffers: shared hit=131177 read=1432
                     ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=3983.325..4663.443 rows=4518173 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 408668kB
                           Buffers: shared hit=21643 read=36810
                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.028..2351.820 rows=4523930 loops=1)
                                 Buffers: shared hit=21643 read=36810
 Planning Time: 2876.687 ms
 Execution Time: 122500.886 ms
(35 rows)

