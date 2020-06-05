                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=896330.16..896330.16 rows=1 width=64) (actual time=106839.656..106839.656 rows=1 loops=1)
   Buffers: shared hit=9987350 read=531454
   ->  Merge Join  (cost=872708.17..896330.15 rows=19 width=15) (actual time=97124.150..106801.674 rows=52306 loops=1)
         Merge Cond: (ci.movie_id = mc.movie_id)
         Buffers: shared hit=9987350 read=531454
         ->  Merge Join  (cost=799340.92..822557.76 rows=10 width=27) (actual time=81406.061..90443.577 rows=6642 loops=1)
               Merge Cond: (ci.movie_id = t.id)
               Buffers: shared hit=8305425 read=501707
               ->  Sort  (cost=799340.89..799340.89 rows=10 width=23) (actual time=80816.242..80817.451 rows=6642 loops=1)
                     Sort Key: ci.movie_id
                     Sort Method: quicksort  Memory: 710kB
                     Buffers: shared hit=5817450 read=458848
                     ->  Merge Join  (cost=799135.67..799340.88 rows=10 width=23) (actual time=80797.813..80801.827 rows=6642 loops=1)
                           Merge Cond: (mk.keyword_id = k.id)
                           Buffers: shared hit=5817446 read=458848
                           ->  Sort  (cost=799129.54..799232.14 rows=1321576 width=27) (actual time=80747.081..80758.454 rows=42942 loops=1)
                                 Sort Key: mk.keyword_id
                                 Sort Method: quicksort  Memory: 170476kB
                                 Buffers: shared hit=5817446 read=458844
                                 ->  Merge Join  (cost=755179.65..794956.76 rows=1321576 width=27) (actual time=76946.838..80050.552 rows=1553603 loops=1)
                                       Merge Cond: (ci.movie_id = mk.movie_id)
                                       Buffers: shared hit=5817446 read=458844
                                       ->  Sort  (cost=755179.64..755203.99 rows=313707 width=19) (actual time=76946.794..76984.874 rows=268710 loops=1)
                                             Sort Key: ci.movie_id
                                             Sort Method: quicksort  Memory: 32142kB
                                             Buffers: shared hit=5786545 read=422034
                                             ->  Merge Join  (cost=0.03..754290.20 rows=313707 width=19) (actual time=54077.585..76779.706 rows=268710 loops=1)
                                                   Merge Cond: (ci.person_id = n.id)
                                                   Buffers: shared hit=5786545 read=422034
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.034..62689.858 rows=36244344 loops=1)
                                                         Buffers: shared hit=1851766 read=351677
                                                   ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=36071 width=19) (actual time=1803.582..4654.901 rows=35320 loops=1)
                                                         Filter: (name ~~ 'Z%'::text)
                                                         Rows Removed by Filter: 4111721
                                                         Buffers: shared hit=3934779 read=70357
                                       ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.016..2105.194 rows=5108220 loops=1)
                                             Buffers: shared hit=30901 read=36810
                           ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=26.910..26.910 rows=1 loops=1)
                                 Sort Key: k.id
                                 Sort Method: quicksort  Memory: 25kB
                                 Buffers: shared read=4
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=26.892..26.895 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.018..9285.130 rows=2525432 loops=1)
                     Buffers: shared hit=2487975 read=42859
         ->  Sort  (cost=73367.25..73569.82 rows=2609129 width=4) (actual time=15717.346..16027.272 rows=2627766 loops=1)
               Sort Key: mc.movie_id
               Sort Method: quicksort  Memory: 220607kB
               Buffers: shared hit=1681925 read=29747
               ->  Merge Join  (cost=0.03..64731.55 rows=2609129 width=4) (actual time=0.033..14540.014 rows=2609129 loops=1)
                     Merge Cond: (cn.id = mc.company_id)
                     Buffers: shared hit=1681925 read=29747
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4578.95 rows=234997 width=4) (actual time=0.019..1537.189 rows=234997 loops=1)
                           Buffers: shared hit=231720 read=3834
                     ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.011..12238.745 rows=2609129 loops=1)
                           Buffers: shared hit=1450205 read=25913
 Planning Time: 5352.614 ms
 Execution Time: 106884.189 ms
(59 rows)

