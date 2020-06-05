                                                                                                       QUERY PLAN                                                                                                        
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1459905.91..1459905.91 rows=1 width=128) (actual time=103908.528..103908.528 rows=1 loops=1)
   Buffers: shared hit=8327342 read=595784
   ->  Merge Join  (cost=1412199.05..1459905.91 rows=1 width=80) (actual time=99558.805..103882.005 rows=26153 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8327342 read=595784
         ->  Sort  (cost=1412199.01..1412199.01 rows=1 width=69) (actual time=99518.198..99522.155 rows=26154 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 5063kB
               Buffers: shared hit=4388740 read=525102
               ->  Merge Join  (cost=1388823.49..1412199.01 rows=1 width=69) (actual time=90038.061..99494.807 rows=42900 loops=1)
                     Merge Cond: (t.id = mi.movie_id)
                     Buffers: shared hit=4388736 read=525102
                     ->  Merge Join  (cost=731477.24..754869.07 rows=9601 width=39) (actual time=77865.902..87836.004 rows=333556 loops=1)
                           Merge Cond: (t.id = ci.movie_id)
                           Buffers: shared hit=4353487 read=406760
                           ->  Merge Join  (cost=16648.76..39866.69 rows=12213 width=31) (actual time=1524.284..11229.346 rows=459920 loops=1)
                                 Merge Cond: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=2501721 read=55083
                                 ->  Sort  (cost=16648.74..16649.69 rows=12213 width=10) (actual time=1505.366..1556.719 rows=459920 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 33847kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=16407.86..16622.99 rows=12213 width=10) (actual time=1298.698..1403.603 rows=459925 loops=1)
                                             Merge Cond: (it2.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.078..0.078 rows=1 loops=1)
                                                   Sort Key: it2.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=16401.73..16508.88 rows=1380035 width=14) (actual time=1225.989..1272.947 rows=919851 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 128214kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.032..785.781 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.022..9102.918 rows=2525782 loops=1)
                                       Buffers: shared hit=2488149 read=42862
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=76152.491..76307.061 rows=1244682 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=30.976..75382.462 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Sort  (cost=657346.25..657346.25 rows=1 width=50) (actual time=11593.090..11605.503 rows=81751 loops=1)
                           Sort Key: mi.movie_id
                           Sort Method: quicksort  Memory: 6867kB
                           Buffers: shared hit=35249 read=118342
                           ->  Merge Join  (cost=657343.18..657346.25 rows=1 width=50) (actual time=11447.619..11566.632 rows=68040 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=35249 read=118342
                                 ->  Sort  (cost=657300.25..657301.78 rows=19733 width=54) (actual time=11336.994..11407.325 rows=416852 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 279963kB
                                       Buffers: shared hit=35235 read=118325
                                       ->  Merge Join  (cost=617617.89..657256.53 rows=19733 width=54) (actual time=7284.088..10338.971 rows=2394761 loops=1)
                                             Merge Cond: (mi.movie_id = mk.movie_id)
                                             Buffers: shared hit=35235 read=118325
                                             ->  Sort  (cost=617617.87..617618.00 rows=1674 width=46) (actual time=7284.039..7298.334 rows=186594 loops=1)
                                                   Sort Key: mi.movie_id
                                                   Sort Method: quicksort  Memory: 14891kB
                                                   Buffers: shared hit=8 read=81515
                                                   ->  Merge Join  (cost=0.02..617615.09 rows=1674 width=46) (actual time=1726.617..7185.712 rows=186594 loops=1)
                                                         Merge Cond: (it1.id = mi.info_type_id)
                                                         Buffers: shared hit=8 read=81515
                                                         ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.027..0.079 rows=1 loops=1)
                                                               Filter: ((info)::text = 'genres'::text)
                                                               Rows Removed by Filter: 112
                                                               Buffers: shared hit=2
                                                         ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1726.577..7137.038 rows=186595 loops=1)
                                                               Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                               Rows Removed by Filter: 8435310
                                                               Buffers: shared hit=6 read=81515
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..1984.798 rows=5398657 loops=1)
                                                   Buffers: shared hit=35227 read=36810
                                 ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=78.084..78.085 rows=7 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=14 read=17
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=29.098..78.044 rows=7 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                             Buffers: shared hit=14 read=17
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.018..4168.089 rows=1739579 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 2427912
               Buffers: shared hit=3938602 read=70682
 Planning Time: 9760.364 ms
 Execution Time: 103995.937 ms
(92 rows)

