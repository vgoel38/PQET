                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=922645.30..922645.30 rows=1 width=32) (actual time=102255.008..102255.008 rows=1 loops=1)
   Buffers: shared hit=9659676 read=530028
   ->  Merge Join  (cost=898713.08..922645.28 rows=278 width=15) (actual time=91050.997..102072.708 rows=1113120 loops=1)
         Merge Cond: (t.id = ci.movie_id)
         Buffers: shared hit=9659676 read=530028
         ->  Merge Join  (cost=128251.26..151467.94 rows=188 width=12) (actual time=8800.952..18535.496 rows=148552 loops=1)
               Merge Cond: (mk.movie_id = t.id)
               Buffers: shared hit=3954560 read=109421
               ->  Sort  (cost=128251.06..128251.07 rows=188 width=8) (actual time=8346.360..8371.300 rows=148552 loops=1)
                     Sort Key: mc.movie_id
                     Sort Method: quicksort  Memory: 13108kB
                     Buffers: shared hit=1466413 read=66561
                     ->  Merge Join  (cost=123653.61..128250.84 rows=188 width=8) (actual time=7285.132..8273.929 rows=148552 loops=1)
                           Merge Cond: (mc.company_id = cn.id)
                           Buffers: shared hit=1466409 read=66561
                           ->  Sort  (cost=123653.59..123653.61 rows=190 width=12) (actual time=7285.103..7309.948 rows=148552 loops=1)
                                 Sort Key: mc.company_id
                                 Sort Method: quicksort  Memory: 13108kB
                                 Buffers: shared hit=1234754 read=62727
                                 ->  Merge Join  (cost=55525.81..123653.37 rows=190 width=12) (actual time=4166.342..7216.729 rows=148552 loops=1)
                                       Merge Cond: (mc.movie_id = mk.movie_id)
                                       Buffers: shared hit=1234754 read=62727
                                       ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.036..2496.210 rows=2609129 loops=1)
                                             Buffers: shared hit=1213111 read=25913
                                       ->  Sort  (cost=55525.51..55525.52 rows=34 width=4) (actual time=4141.836..4156.617 rows=154814 loops=1)
                                             Sort Key: mk.movie_id
                                             Sort Method: quicksort  Memory: 3498kB
                                             Buffers: shared hit=21643 read=36814
                                             ->  Merge Join  (cost=54823.01..55525.49 rows=34 width=4) (actual time=4115.976..4128.854 rows=41840 loops=1)
                                                   Merge Cond: (k.id = mk.keyword_id)
                                                   Buffers: shared hit=21643 read=36814
                                                   ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=19.004..19.005 rows=1 loops=1)
                                                         Sort Key: k.id
                                                         Sort Method: quicksort  Memory: 25kB
                                                         Buffers: shared read=4
                                                         ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=18.969..18.971 rows=1 loops=1)
                                                               Index Cond: (keyword = 'character-name-in-title'::text)
                                                               Buffers: shared read=4
                                                   ->  Sort  (cost=54816.88..55168.11 rows=4523930 width=8) (actual time=4062.850..4087.664 rows=163762 loops=1)
                                                         Sort Key: mk.keyword_id
                                                         Sort Method: quicksort  Memory: 408668kB
                                                         Buffers: shared hit=21643 read=36810
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.035..2376.647 rows=4523930 loops=1)
                                                               Buffers: shared hit=21643 read=36810
                           ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4578.95 rows=234997 width=4) (actual time=0.022..879.168 rows=234933 loops=1)
                                 Buffers: shared hit=231655 read=3834
               ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=4) (actual time=0.014..9786.247 rows=2525672 loops=1)
                     Buffers: shared hit=2488147 read=42860
         ->  Sort  (cost=770461.82..770819.56 rows=4607690 width=19) (actual time=81984.447..82712.251 rows=5829787 loops=1)
               Sort Key: ci.movie_id
               Sort Method: quicksort  Memory: 555224kB
               Buffers: shared hit=5705116 read=420607
               ->  Merge Join  (cost=0.03..754624.24 rows=4607690 width=19) (actual time=68.170..79082.026 rows=4857682 loops=1)
                     Merge Cond: (ci.person_id = n.id)
                     Buffers: shared hit=5705116 read=420607
                     ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.020..55911.841 rows=36244344 loops=1)
                           Buffers: shared hit=1851766 read=351677
                     ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=529807 width=19) (actual time=68.083..13160.016 rows=522512 loops=1)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 3539430
                           Buffers: shared hit=3853350 read=68930
 Planning Time: 5376.640 ms
 Execution Time: 102322.285 ms
(63 rows)

