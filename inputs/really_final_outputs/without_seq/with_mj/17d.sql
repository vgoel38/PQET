                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=891471.40..891471.40 rows=1 width=32) (actual time=114154.870..114154.870 rows=1 loops=1)
   Buffers: shared hit=9897184 read=530042
   ->  Merge Join  (cost=867849.42..891471.40 rows=2 width=15) (actual time=104177.771..114152.296 rows=11538 loops=1)
         Merge Cond: (ci.movie_id = mc.movie_id)
         Buffers: shared hit=9897184 read=530042
         ->  Merge Join  (cost=794482.17..817699.01 rows=1 width=27) (actual time=87752.229..97083.918 rows=1972 loops=1)
               Merge Cond: (ci.movie_id = t.id)
               Buffers: shared hit=8215259 read=500295
               ->  Sort  (cost=794482.14..794482.14 rows=1 width=23) (actual time=87036.975..87037.408 rows=1972 loops=1)
                     Sort Key: ci.movie_id
                     Sort Method: quicksort  Memory: 203kB
                     Buffers: shared hit=5728161 read=457439
                     ->  Merge Join  (cost=794457.12..794482.14 rows=1 width=23) (actual time=87021.795..87024.037 rows=1972 loops=1)
                           Merge Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5728157 read=457439
                           ->  Sort  (cost=794450.98..794463.49 rows=161135 width=27) (actual time=86988.986..86991.960 rows=10723 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 36791kB
                                 Buffers: shared hit=5728157 read=457435
                                 ->  Merge Join  (cost=754364.07..794018.17 rows=161135 width=27) (actual time=83819.978..86835.885 rows=313632 loops=1)
                                       Merge Cond: (ci.movie_id = mk.movie_id)
                                       Buffers: shared hit=5728157 read=457435
                                       ->  Sort  (cost=754364.06..754367.03 rows=38249 width=19) (actual time=83798.375..83805.924 rows=48290 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 5145kB
                                             Buffers: shared hit=5705639 read=420625
                                             ->  Merge Join  (cost=0.03..754273.64 rows=38249 width=19) (actual time=100.890..83761.540 rows=48290 loops=1)
                                                   Merge Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=5705639 read=420625
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.035..61230.705 rows=36244344 loops=1)
                                                         Buffers: shared hit=1851766 read=351677
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=4398 width=19) (actual time=34.424..13541.862 rows=5082 loops=1)
                                                         Filter: (name ~~ '%Bert%'::text)
                                                         Rows Removed by Filter: 4057407
                                                         Buffers: shared hit=3853873 read=68948
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.014..2264.874 rows=4575370 loops=1)
                                             Buffers: shared hit=22518 read=36810
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=26.326..26.326 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=26.310..26.313 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.032..9710.480 rows=2524553 loops=1)
                     Buffers: shared hit=2487098 read=42856
         ->  Sort  (cost=73367.25..73569.82 rows=2609129 width=4) (actual time=16422.955..16739.165 rows=2608653 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 220607kB
               Buffers: shared hit=1681925 read=29747
               ->  Merge Join  (cost=0.03..64731.55 rows=2609129 width=4) (actual time=0.036..15224.801 rows=2609129 loops=1)
                     Merge Cond: (cn.id = mc.company_id)
                     Buffers: shared hit=1681925 read=29747
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4578.95 rows=234997 width=4) (actual time=0.018..2215.103 rows=234997 loops=1)
                           Buffers: shared hit=231720 read=3834
                     ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.014..12227.793 rows=2609129 loops=1)
                           Buffers: shared hit=1450205 read=25913
 Planning Time: 5499.191 ms
 Execution Time: 114183.530 ms
(59 rows)

