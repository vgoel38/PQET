                                                                                                                                                   QUERY PLAN                                                                                                                                                   
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=118345.93..118345.93 rows=1 width=192) (actual time=18384.535..18384.535 rows=1 loops=1)
   Buffers: shared hit=4011258 read=74829
   ->  Merge Join  (cost=118336.75..118345.93 rows=1 width=84) (actual time=18384.404..18384.442 rows=114 loops=1)
         Merge Cond: (kt.id = t.kind_id)
         Buffers: shared hit=4011258 read=74829
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.019..0.024 rows=2 loops=1)
               Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
               Rows Removed by Filter: 5
               Buffers: shared hit=2
         ->  Sort  (cost=118336.75..118336.75 rows=3 width=88) (actual time=18384.379..18384.385 rows=114 loops=1)
               Sort Key: t.kind_id
               Sort Method: quicksort  Memory: 42kB
               Buffers: shared hit=4011256 read=74829
               ->  Merge Join  (cost=116625.57..118336.75 rows=3 width=88) (actual time=18285.382..18379.862 rows=114 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=4011252 read=74829
                     ->  Sort  (cost=116625.55..116625.55 rows=3 width=79) (actual time=18267.001..18267.013 rows=114 loops=1)
                           Sort Key: ml.movie_id
                           Sort Method: quicksort  Memory: 42kB
                           Buffers: shared hit=3857968 read=74829
                           ->  Merge Join  (cost=112018.56..116625.55 rows=3 width=79) (actual time=18215.694..18266.938 rows=114 loops=1)
                                 Merge Cond: (cn1.id = mc.company_id)
                                 Buffers: shared hit=3857968 read=74829
                                 ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..4597.20 rows=126230 width=23) (actual time=35.149..82.478 rows=40589 loops=1)
                                       Filter: ((country_code)::text <> '[us]'::text)
                                       Rows Removed by Filter: 33305
                                       Buffers: shared hit=74085 read=3
                                 ->  Sort  (cost=112018.55..112018.55 rows=5 width=64) (actual time=18180.509..18180.519 rows=131 loops=1)
                                       Sort Key: mc.company_id
                                       Sort Method: quicksort  Memory: 43kB
                                       Buffers: shared hit=3783883 read=74826
                                       ->  Merge Join  (cost=109409.92..112018.55 rows=5 width=64) (actual time=18152.440..18180.413 rows=131 loops=1)
                                             Merge Cond: (mc.movie_id = ml.movie_id)
                                             Buffers: shared hit=3783883 read=74826
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.043..25.511 rows=76266 loops=1)
                                                   Buffers: shared hit=34785
                                             ->  Materialize  (cost=109409.91..109409.91 rows=1 width=56) (actual time=18145.436..18145.454 rows=129 loops=1)
                                                   Buffers: shared hit=3749098 read=74826
                                                   ->  Sort  (cost=109409.91..109409.91 rows=1 width=56) (actual time=18145.428..18145.433 rows=44 loops=1)
                                                         Sort Key: ml.movie_id
                                                         Sort Method: quicksort  Memory: 30kB
                                                         Buffers: shared hit=3749098 read=74826
                                                         ->  Merge Join  (cost=109409.90..109409.91 rows=1 width=56) (actual time=18145.375..18145.390 rows=44 loops=1)
                                                               Merge Cond: (mi_idx.info_type_id = it.id)
                                                               Buffers: shared hit=3749098 read=74826
                                                               ->  Sort  (cost=109403.78..109403.78 rows=42 width=60) (actual time=18145.317..18145.328 rows=132 loops=1)
                                                                     Sort Key: mi_idx.info_type_id
                                                                     Sort Method: quicksort  Memory: 43kB
                                                                     Buffers: shared hit=3749096 read=74826
                                                                     ->  Merge Join  (cost=104806.54..109403.74 rows=42 width=60) (actual time=17807.513..18145.177 rows=132 loops=1)
                                                                           Merge Cond: (mc.company_id = cn2.id)
                                                                           Buffers: shared hit=3749096 read=74826
                                                                           ->  Sort  (cost=104806.53..104806.53 rows=42 width=45) (actual time=17741.686..17741.712 rows=132 loops=1)
                                                                                 Sort Key: mc.company_id
                                                                                 Sort Method: quicksort  Memory: 39kB
                                                                                 Buffers: shared hit=3670713 read=73269
                                                                                 ->  Merge Join  (cost=104805.76..104806.50 rows=42 width=45) (actual time=17741.574..17741.621 rows=132 loops=1)
                                                                                       Merge Cond: (mi_idx.info_type_id = it.id)
                                                                                       Buffers: shared hit=3670713 read=73269
                                                                                       ->  Sort  (cost=104799.64..104800.00 rows=4704 width=49) (actual time=17739.294..17739.932 rows=12942 loops=1)
                                                                                             Sort Key: mi_idx.info_type_id
                                                                                             Sort Method: quicksort  Memory: 1978kB
                                                                                             Buffers: shared hit=3670712 read=73268
                                                                                             ->  Merge Join  (cost=104228.18..104790.73 rows=4704 width=49) (actual time=17709.828..17734.608 rows=12942 loops=1)
                                                                                                   Merge Cond: (ml.movie_id = mi_idx.movie_id)
                                                                                                   Buffers: shared hit=3670712 read=73268
                                                                                                   ->  Sort  (cost=104228.17..104228.29 rows=1568 width=35) (actual time=17709.574..17710.030 rows=4550 loops=1)
                                                                                                         Sort Key: ml.movie_id
                                                                                                         Sort Method: quicksort  Memory: 582kB
                                                                                                         Buffers: shared hit=3669871 read=73268
                                                                                                         ->  Merge Join  (cost=92031.62..104225.59 rows=1568 width=35) (actual time=17099.093..17706.245 rows=4550 loops=1)
                                                                                                               Merge Cond: (t.id = mi_idx.movie_id)
                                                                                                               Buffers: shared hit=3669871 read=73268
                                                                                                               ->  Sort  (cost=92031.61..92032.04 rows=5609 width=37) (actual time=17078.184..17078.701 rows=3304 loops=1)
                                                                                                                     Sort Key: mc.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 379kB
                                                                                                                     Buffers: shared hit=3667574 read=68640
                                                                                                                     ->  Merge Join  (cost=92008.14..92020.76 rows=5609 width=37) (actual time=17074.302..17076.287 rows=3304 loops=1)
                                                                                                                           Merge Cond: (t.kind_id = kt.id)
                                                                                                                           Buffers: shared hit=3667574 read=68640
                                                                                                                           ->  Sort  (cost=92008.14..92009.66 rows=19633 width=41) (actual time=17074.218..17074.574 rows=3799 loops=1)
                                                                                                                                 Sort Key: t.kind_id
                                                                                                                                 Sort Method: quicksort  Memory: 442kB
                                                                                                                                 Buffers: shared hit=3667572 read=68640
                                                                                                                                 ->  Merge Join  (cost=375.60..91964.66 rows=19633 width=41) (actual time=576.421..17070.609 rows=3799 loops=1)
                                                                                                                                       Merge Cond: (ml.linked_movie_id = t.id)
                                                                                                                                       Buffers: shared hit=3667572 read=68640
                                                                                                                                       ->  Merge Join  (cost=372.95..68474.85 rows=47601 width=16) (actual time=95.765..4921.777 rows=9208 loops=1)
                                                                                                                                             Merge Cond: (mc.movie_id = ml.linked_movie_id)
                                                                                                                                             Buffers: shared hit=1198433 read=25833
                                                                                                                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.027..4250.208 rows=2575001 loops=1)
                                                                                                                                                   Buffers: shared hit=1198350 read=25592
                                                                                                                                             ->  Sort  (cost=368.81..369.20 rows=5000 width=8) (actual time=67.855..69.578 rows=9403 loops=1)
                                                                                                                                                   Sort Key: ml.linked_movie_id
                                                                                                                                                   Sort Method: quicksort  Memory: 205kB
                                                                                                                                                   Buffers: shared hit=83 read=241
                                                                                                                                                   ->  Merge Join  (cost=345.08..359.27 rows=5000 width=8) (actual time=65.649..66.710 rows=2315 loops=1)
                                                                                                                                                         Merge Cond: (lt.id = ml.link_type_id)
                                                                                                                                                         Buffers: shared hit=83 read=241
                                                                                                                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=3 width=4) (actual time=0.020..0.032 rows=2 loops=1)
                                                                                                                                                               Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                                                                                                               Rows Removed by Filter: 16
                                                                                                                                                               Buffers: shared hit=2
                                                                                                                                                         ->  Sort  (cost=345.08..347.41 rows=29997 width=12) (actual time=65.623..65.855 rows=2316 loops=1)
                                                                                                                                                               Sort Key: ml.link_type_id
                                                                                                                                                               Sort Method: quicksort  Memory: 2175kB
                                                                                                                                                               Buffers: shared hit=81 read=241
                                                                                                                                                               ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.028..50.553 rows=29997 loops=1)
                                                                                                                                                                     Buffers: shared hit=81 read=241
                                                                                                                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=25) (actual time=43.282..11968.254 rows=1036588 loops=1)
                                                                                                                                             Filter: ((production_year >= 2000) AND (production_year <= 2010))
                                                                                                                                             Rows Removed by Filter: 1469959
                                                                                                                                             Buffers: shared hit=2469139 read=42807
                                                                                                                           ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..9.19 rows=2 width=4) (actual time=0.018..0.022 rows=2 loops=1)
                                                                                                                                 Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                                                                                                 Rows Removed by Filter: 5
                                                                                                                                 Buffers: shared hit=2
                                                                                                               ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=706570 width=14) (actual time=0.024..573.594 rows=264307 loops=1)
                                                                                                                     Filter: (info < '3.5'::text)
                                                                                                                     Rows Removed by Filter: 268127
                                                                                                                     Buffers: shared hit=2297 read=4628
                                                                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.014..13.740 rows=76354 loops=1)
                                                                                                         Buffers: shared hit=841
                                                                                       ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                                                             Sort Key: it.id
                                                                                             Sort Method: quicksort  Memory: 25kB
                                                                                             Buffers: shared hit=1 read=1
                                                                                             ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.025..0.025 rows=1 loops=1)
                                                                                                   Index Cond: ((info)::text = 'rating'::text)
                                                                                                   Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..4578.95 rows=234997 width=23) (actual time=0.016..393.644 rows=79742 loops=1)
                                                                                 Buffers: shared hit=78383 read=1557
                                                               ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                                                     Sort Key: it.id
                                                                     Sort Method: quicksort  Memory: 25kB
                                                                     Buffers: shared hit=2
                                                                     ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1)
                                                                           Index Cond: ((info)::text = 'rating'::text)
                                                                           Buffers: shared hit=2
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.013..95.871 rows=152916 loops=1)
                           Buffers: shared hit=153284
 Planning Time: 5900.245 ms
 Execution Time: 18414.464 ms
(143 rows)

