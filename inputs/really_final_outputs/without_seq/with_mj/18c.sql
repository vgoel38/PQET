                                                                                                 QUERY PLAN                                                                                                  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1420163.67..1420163.67 rows=1 width=96) (actual time=99742.582..99742.582 rows=1 loops=1)
   Buffers: shared hit=8292101 read=558957
   ->  Merge Join  (cost=1372456.80..1420163.67 rows=5 width=65) (actual time=95392.481..99713.671 rows=28073 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8292101 read=558957
         ->  Sort  (cost=1372456.76..1372456.76 rows=13 width=69) (actual time=95349.179..95354.395 rows=28074 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 5953kB
               Buffers: shared hit=4353499 read=488275
               ->  Merge Join  (cost=1349095.10..1372456.76 rows=13 width=69) (actual time=85107.183..95317.048 rows=54155 loops=1)
                     Merge Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=4353495 read=488275
                     ->  Merge Join  (cost=1332446.36..1355833.66 rows=1690 width=75) (actual time=83360.953..93620.663 rows=93237 loops=1)
                           Merge Cond: (t.id = ci.movie_id)
                           Buffers: shared hit=4339923 read=476054
                           ->  Merge Join  (cost=617617.89..640839.29 rows=1674 width=67) (actual time=7307.906..17775.533 rows=186591 loops=1)
                                 Merge Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=2488157 read=124377
                                 ->  Sort  (cost=617617.87..617618.00 rows=1674 width=46) (actual time=7000.468..7022.413 rows=186591 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 14891kB
                                       Buffers: shared hit=8 read=81515
                                       ->  Merge Join  (cost=0.02..617615.09 rows=1674 width=46) (actual time=1696.934..6897.612 rows=186594 loops=1)
                                             Merge Cond: (it1.id = mi.info_type_id)
                                             Buffers: shared hit=8 read=81515
                                             ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.027..0.105 rows=1 loops=1)
                                                   Filter: ((info)::text = 'genres'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1696.892..6847.215 rows=186595 loops=1)
                                                   Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                   Rows Removed by Filter: 8435310
                                                   Buffers: shared hit=6 read=81515
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.018..10318.351 rows=2525794 loops=1)
                                       Buffers: shared hit=2488149 read=42862
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=75475.786..75627.347 rows=1269376 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=30.407..74711.119 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Sort  (cost=16648.74..16649.69 rows=12213 width=10) (actual time=1568.444..1607.752 rows=487429 loops=1)
                           Sort Key: mi_idx.movie_id
                           Sort Method: quicksort  Memory: 33847kB
                           Buffers: shared hit=13572 read=12221
                           ->  Merge Join  (cost=16407.86..16622.99 rows=12213 width=10) (actual time=1363.652..1467.536 rows=459925 loops=1)
                                 Merge Cond: (it2.id = mi_idx.info_type_id)
                                 Buffers: shared hit=13572 read=12221
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                       Sort Key: it2.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.027..0.027 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'votes'::text)
                                             Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=16401.73..16508.88 rows=1380035 width=14) (actual time=1291.156..1336.791 rows=919851 loops=1)
                                       Sort Key: mi_idx.info_type_id
                                       Sort Method: quicksort  Memory: 128214kB
                                       Buffers: shared hit=13571 read=12220
                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.014..844.270 rows=1380035 loops=1)
                                             Buffers: shared hit=13571 read=12220
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=4) (actual time=0.018..4165.583 rows=1739579 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 2427912
               Buffers: shared hit=3938602 read=70682
 Planning Time: 5285.052 ms
 Execution Time: 99776.415 ms
(69 rows)

