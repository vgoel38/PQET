                                                                                                                     QUERY PLAN                                                                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1519756.59..1519756.59 rows=1 width=128) (actual time=117650.221..117650.222 rows=1 loops=1)
   Buffers: shared hit=9741246 read=620490
   ->  Merge Join  (cost=1472181.37..1519756.59 rows=1 width=80) (actual time=113571.371..117648.563 rows=2825 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=9741246 read=620490
         ->  Sort  (cost=1472181.32..1472181.32 rows=1 width=69) (actual time=113502.818..113503.238 rows=2825 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 318kB
               Buffers: shared hit=6036137 read=554287
               ->  Merge Join  (cost=1448821.57..1472181.32 rows=1 width=69) (actual time=107649.927..113490.894 rows=2825 loops=1)
                     Merge Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=6036133 read=554287
                     ->  Merge Join  (cost=1332446.36..1355833.66 rows=1690 width=75) (actual time=85480.470..95471.583 rows=92400 loops=1)
                           Merge Cond: (t.id = ci.movie_id)
                           Buffers: shared hit=4328776 read=476021
                           ->  Merge Join  (cost=617617.89..640839.29 rows=1674 width=67) (actual time=7607.754..17860.488 rows=184487 loops=1)
                                 Merge Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=2477010 read=124344
                                 ->  Sort  (cost=617617.87..617618.00 rows=1674 width=46) (actual time=7298.460..7320.950 rows=184487 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 14891kB
                                       Buffers: shared hit=8 read=81515
                                       ->  Merge Join  (cost=0.02..617615.09 rows=1674 width=46) (actual time=1780.250..7187.453 rows=186594 loops=1)
                                             Merge Cond: (it1.id = mi.info_type_id)
                                             Buffers: shared hit=8 read=81515
                                             ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.030..0.093 rows=1 loops=1)
                                                   Filter: ((info)::text = 'genres'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..617591.08 rows=189170 width=50) (actual time=1780.207..7136.947 rows=186595 loops=1)
                                                   Filter: (info = ANY ('{Horror,Action,Sci-Fi,Thriller,Crime,War}'::text[]))
                                                   Rows Removed by Filter: 8435310
                                                   Buffers: shared hit=6 read=81515
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.017..10108.343 rows=2514430 loops=1)
                                       Buffers: shared hit=2477002 read=42829
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=77251.854..77400.085 rows=1266113 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=22.150..76416.406 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Sort  (cost=116375.20..116375.20 rows=1 width=18) (actual time=18008.025..18008.503 rows=3634 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 164kB
                           Buffers: shared hit=1707357 read=78266
                           ->  Merge Join  (cost=116375.19..116375.20 rows=1 width=18) (actual time=18000.897..18006.807 rows=1547 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=1707357 read=78266
                                 ->  Sort  (cost=116332.26..116332.27 rows=39 width=22) (actual time=17923.983..17926.659 rows=10596 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 8728kB
                                       Buffers: shared hit=1707343 read=78249
                                       ->  Merge Join  (cost=76696.36..116332.23 rows=39 width=22) (actual time=14839.161..17874.622 rows=72391 loops=1)
                                             Merge Cond: (mi_idx.movie_id = mk.movie_id)
                                             Buffers: shared hit=1707343 read=78249
                                             ->  Sort  (cost=76696.34..76696.34 rows=4 width=14) (actual time=14623.066..14623.298 rows=1449 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 116kB
                                                   Buffers: shared hit=1685469 read=41746
                                                   ->  Merge Join  (cost=76696.28..76696.34 rows=4 width=14) (actual time=14622.250..14622.689 rows=1449 loops=1)
                                                         Merge Cond: (mi_idx.info_type_id = it2.id)
                                                         Buffers: shared hit=1685469 read=41746
                                                         ->  Sort  (cost=76690.15..76690.18 rows=425 width=18) (actual time=14621.859..14622.068 rows=2899 loops=1)
                                                               Sort Key: mi_idx.info_type_id
                                                               Sort Method: quicksort  Memory: 465kB
                                                               Buffers: shared hit=1685468 read=41745
                                                               ->  Merge Join  (cost=64551.62..76689.57 rows=425 width=18) (actual time=13289.043..14619.093 rows=4370 loops=1)
                                                                     Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=1685468 read=41745
                                                                     ->  Sort  (cost=64551.61..64551.63 rows=333 width=4) (actual time=13241.876..13242.243 rows=1814 loops=1)
                                                                           Sort Key: mc.movie_id
                                                                           Sort Method: quicksort  Memory: 134kB
                                                                           Buffers: shared hit=1671981 read=29622
                                                                           ->  Merge Join  (cost=0.03..64551.17 rows=333 width=4) (actual time=11445.678..13241.352 rows=1814 loops=1)
                                                                                 Merge Cond: (cn.id = mc.company_id)
                                                                                 Buffers: shared hit=1671981 read=29622
                                                                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=268.855..872.908 rows=10 loops=1)
                                                                                       Filter: (name ~~ 'Lionsgate%'::text)
                                                                                       Rows Removed by Filter: 234987
                                                                                       Buffers: shared hit=231720 read=3834
                                                                                 ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.018..11929.852 rows=2562825 loops=1)
                                                                                       Buffers: shared hit=1440261 read=25788
                                                                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.013..1068.854 rows=1369714 loops=1)
                                                                           Buffers: shared hit=13487 read=12123
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                                               Sort Key: it2.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'votes'::text)
                                                                     Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.012..2491.005 rows=4517951 loops=1)
                                                   Buffers: shared hit=21874 read=36503
                                 ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=75.746..75.748 rows=7 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=14 read=17
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=26.742..75.706 rows=7 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                             Buffers: shared hit=14 read=17
         ->  Index Scan using name_pkey on name n  (cost=0.01..48488.80 rows=4167491 width=19) (actual time=0.013..3633.781 rows=3901342 loops=1)
               Buffers: shared hit=3705109 read=66203
 Planning Time: 14992.104 ms
 Execution Time: 117723.253 ms
(106 rows)

