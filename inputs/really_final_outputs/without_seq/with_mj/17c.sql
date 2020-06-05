                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=891205.89..891205.90 rows=1 width=64) (actual time=107199.884..107199.884 rows=1 loops=1)
   Buffers: shared hit=9971064 read=531431
   ->  Merge Join  (cost=867583.91..891205.89 rows=1 width=15) (actual time=97720.313..107199.172 rows=1918 loops=1)
         Merge Cond: (ci.movie_id = t.id)
         Buffers: shared hit=9971064 read=531431
         ->  Merge Join  (cost=867583.88..867989.03 rows=1 width=27) (actual time=97018.934..97619.610 rows=1918 loops=1)
               Merge Cond: (ci.movie_id = mc.movie_id)
               Buffers: shared hit=7489533 read=488590
               ->  Sort  (cost=794216.63..794216.63 rows=1 width=23) (actual time=81328.042..81328.121 rows=250 loops=1)
                     Sort Key: ci.movie_id
                     Sort Method: quicksort  Memory: 43kB
                     Buffers: shared hit=5807608 read=458843
                     ->  Merge Join  (cost=794202.84..794216.63 rows=1 width=23) (actual time=81316.698..81316.996 rows=250 loops=1)
                           Merge Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5807604 read=458843
                           ->  Sort  (cost=794196.70..794203.60 rows=88848 width=27) (actual time=81289.902..81290.394 rows=1642 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 6470kB
                                 Buffers: shared hit=5807604 read=458839
                                 ->  Merge Join  (cost=754323.47..793969.91 rows=88848 width=27) (actual time=78027.978..81256.209 rows=63256 loops=1)
                                       Merge Cond: (ci.movie_id = mk.movie_id)
                                       Buffers: shared hit=5807604 read=458839
                                       ->  Sort  (cost=754323.46..754325.09 rows=21090 width=19) (actual time=78002.080..78004.251 rows=12500 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 1227kB
                                             Buffers: shared hit=5785744 read=422031
                                             ->  Merge Join  (cost=0.03..754276.41 rows=21090 width=19) (actual time=54324.094..77993.328 rows=12500 loops=1)
                                                   Merge Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=5785744 read=422031
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.034..64325.332 rows=36244344 loops=1)
                                                         Buffers: shared hit=1851766 read=351677
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=2425 width=19) (actual time=1732.625..4353.225 rows=2609 loops=1)
                                                         Filter: (name ~~ 'X%'::text)
                                                         Rows Removed by Filter: 4143605
                                                         Buffers: shared hit=3933978 read=70354
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2488.640 rows=4539745 loops=1)
                                             Buffers: shared hit=21860 read=36808
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=25.733..25.734 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=25.717..25.720 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
               ->  Sort  (cost=73367.25..73569.82 rows=2609129 width=4) (actual time=15686.775..15977.766 rows=2597139 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 220607kB
                     Buffers: shared hit=1681925 read=29747
                     ->  Merge Join  (cost=0.03..64731.55 rows=2609129 width=4) (actual time=0.067..14522.893 rows=2609129 loops=1)
                           Merge Cond: (cn.id = mc.company_id)
                           Buffers: shared hit=1681925 read=29747
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4578.95 rows=234997 width=4) (actual time=0.036..1595.526 rows=234997 loops=1)
                                 Buffers: shared hit=231720 read=3834
                           ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.026..12185.340 rows=2609129 loops=1)
                                 Buffers: shared hit=1450205 read=25913
         ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.023..9247.501 rows=2518973 loops=1)
               Buffers: shared hit=2481531 read=42841
 Planning Time: 5419.817 ms
 Execution Time: 107243.238 ms
(59 rows)

