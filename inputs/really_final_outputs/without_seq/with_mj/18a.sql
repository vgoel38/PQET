                                                                                                      QUERY PLAN                                                                                                       
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1418254.58..1418254.58 rows=1 width=96) (actual time=115130.331..115130.331 rows=1 loops=1)
   Buffers: shared hit=8362173 read=678933
   ->  Merge Join  (cost=1370360.16..1418254.58 rows=2 width=65) (actual time=110927.010..115115.581 rows=410 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8362173 read=678933
         ->  Sort  (cost=1370360.15..1370360.30 rows=1969 width=69) (actual time=110885.880..110894.485 rows=47106 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 12052kB
               Buffers: shared hit=4423571 read=608251
               ->  Merge Join  (cost=1346788.92..1370356.80 rows=1969 width=69) (actual time=100082.456..110826.867 rows=107339 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4423567 read=608251
                     ->  Merge Join  (cost=632301.07..655523.26 rows=1025 width=77) (actual time=22807.735..32941.229 rows=45431 loops=1)
                           Merge Cond: (t.id = mi.movie_id)
                           Buffers: shared hit=2571801 read=256574
                           ->  Merge Join  (cost=16648.76..39866.69 rows=12213 width=31) (actual time=1724.268..11813.039 rows=459893 loops=1)
                                 Merge Cond: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=2501717 read=55080
                                 ->  Sort  (cost=16648.74..16649.69 rows=12213 width=10) (actual time=1700.626..1752.199 rows=459893 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 33847kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=16407.86..16622.99 rows=12213 width=10) (actual time=1492.692..1598.259 rows=459925 loops=1)
                                             Merge Cond: (it2.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.077..0.077 rows=1 loops=1)
                                                   Sort Key: it2.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.055..0.056 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'votes'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=16401.73..16508.88 rows=1380035 width=14) (actual time=1419.517..1466.591 rows=919851 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 128214kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.032..882.135 rows=1380035 loops=1)
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.021..9480.696 rows=2525602 loops=1)
                                       Buffers: shared hit=2488145 read=42859
                           ->  Sort  (cost=615652.31..615662.50 rows=131290 width=46) (actual time=21013.186..21036.400 rows=121863 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 9046kB
                                 Buffers: shared hit=70084 read=201494
                                 ->  Merge Join  (cost=0.10..615305.68 rows=131290 width=46) (actual time=20884.363..20954.853 rows=121863 loops=1)
                                       Merge Cond: (it1.id = mi.info_type_id)
                                       Buffers: shared hit=70084 read=201494
                                       ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.097..0.102 rows=1 loops=1)
                                             Filter: ((info)::text = 'budget'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..614135.56 rows=14835720 width=50) (actual time=54.368..17795.646 rows=14528933 loops=1)
                                             Buffers: shared hit=70082 read=201494
                     ->  Sort  (cost=714487.85..714671.95 rows=2371250 width=8) (actual time=77274.701..77563.812 rows=2378942 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 209833kB
                           Buffers: shared hit=1851766 read=351677
                           ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..706690.26 rows=2371250 width=8) (actual time=21.334..75678.737 rows=2379271 loops=1)
                                 Filter: (note = ANY ('{(producer),"(executive producer)"}'::text[]))
                                 Rows Removed by Filter: 33865073
                                 Buffers: shared hit=1851766 read=351677
         ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=4470 width=4) (actual time=30.419..4212.683 rows=9062 loops=1)
               Filter: ((name ~~ '%Tim%'::text) AND ((gender)::text = 'm'::text))
               Rows Removed by Filter: 4158429
               Buffers: shared hit=3938602 read=70682
 Planning Time: 5317.441 ms
 Execution Time: 115172.621 ms
(67 rows)

