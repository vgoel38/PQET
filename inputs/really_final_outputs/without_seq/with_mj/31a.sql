                                                                                                                     QUERY PLAN                                                                                                                     
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1517557.28..1517557.28 rows=1 width=128) (actual time=128199.301..128199.302 rows=1 loops=1)
   Buffers: shared hit=9989499 read=714196
   ->  Merge Join  (cost=1469850.42..1517557.28 rows=1 width=80) (actual time=123872.816..128198.475 rows=1273 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=9989499 read=714196
         ->  Sort  (cost=1469850.37..1469850.37 rows=1 width=69) (actual time=123805.667..123805.863 rows=1274 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 171kB
               Buffers: shared hit=6050897 read=643514
               ->  Merge Join  (cost=1446506.99..1469850.37 rows=1 width=69) (actual time=120474.094..123800.475 rows=1556 loops=1)
                     Merge Cond: (t.id = mi_idx.movie_id)
                     Buffers: shared hit=6050893 read=643514
                     ->  Merge Join  (cost=1330131.78..1353510.76 rows=656 width=75) (actual time=96303.326..105108.308 rows=39296 loops=1)
                           Merge Cond: (t.id = ci.movie_id)
                           Buffers: shared hit=4343536 read=565248
                           ->  Merge Join  (cost=615303.31..638524.48 rows=650 width=67) (actual time=18454.597..27529.604 rows=71454 loops=1)
                                 Merge Cond: (mi.movie_id = t.id)
                                 Buffers: shared hit=2491770 read=213571
                                 ->  Sort  (cost=615303.29..615303.34 rows=650 width=46) (actual time=18027.733..18036.349 rows=71454 loops=1)
                                       Sort Key: mi.movie_id
                                       Sort Method: quicksort  Memory: 6460kB
                                       Buffers: shared hit=14768 read=170742
                                       ->  Merge Join  (cost=0.02..615302.35 rows=650 width=46) (actual time=1946.933..17978.447 rows=72258 loops=1)
                                             Merge Cond: (it1.id = mi.info_type_id)
                                             Buffers: shared hit=14768 read=170742
                                             ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.029..0.056 rows=1 loops=1)
                                                   Filter: ((info)::text = 'genres'::text)
                                                   Rows Removed by Filter: 112
                                                   Buffers: shared hit=2
                                             ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=73417 width=50) (actual time=1946.891..17950.483 rows=72259 loops=1)
                                                   Filter: (info = ANY ('{Horror,Thriller}'::text[]))
                                                   Rows Removed by Filter: 13634891
                                                   Buffers: shared hit=14766 read=170742
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23042.05 rows=2528312 width=21) (actual time=0.018..9136.074 rows=2514430 loops=1)
                                       Buffers: shared hit=2477002 read=42829
                           ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=77268.523..77405.279 rows=1247094 loops=1)
                                 Sort Key: ci.movie_id
                                 Sort Method: quicksort  Memory: 107499kB
                                 Buffers: shared hit=1851766 read=351677
                                 ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=24.741..76421.054 rows=1244716 loops=1)
                                       Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                       Rows Removed by Filter: 34999628
                                       Buffers: shared hit=1851766 read=351677
                     ->  Sort  (cost=116375.20..116375.20 rows=1 width=18) (actual time=18686.893..18687.271 rows=2438 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 164kB
                           Buffers: shared hit=1707357 read=78266
                           ->  Merge Join  (cost=116375.19..116375.20 rows=1 width=18) (actual time=18677.339..18685.228 rows=1547 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=1707357 read=78266
                                 ->  Sort  (cost=116332.26..116332.27 rows=39 width=22) (actual time=18598.012..18601.023 rows=10596 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 8728kB
                                       Buffers: shared hit=1707343 read=78249
                                       ->  Merge Join  (cost=76696.36..116332.23 rows=39 width=22) (actual time=15591.136..18552.167 rows=72391 loops=1)
                                             Merge Cond: (mi_idx.movie_id = mk.movie_id)
                                             Buffers: shared hit=1707343 read=78249
                                             ->  Sort  (cost=76696.34..76696.34 rows=4 width=14) (actual time=15376.108..15376.341 rows=1449 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 116kB
                                                   Buffers: shared hit=1685469 read=41746
                                                   ->  Merge Join  (cost=76696.28..76696.34 rows=4 width=14) (actual time=15375.119..15375.653 rows=1449 loops=1)
                                                         Merge Cond: (mi_idx.info_type_id = it2.id)
                                                         Buffers: shared hit=1685469 read=41746
                                                         ->  Sort  (cost=76690.15..76690.18 rows=425 width=18) (actual time=15374.625..15374.895 rows=2899 loops=1)
                                                               Sort Key: mi_idx.info_type_id
                                                               Sort Method: quicksort  Memory: 465kB
                                                               Buffers: shared hit=1685468 read=41745
                                                               ->  Merge Join  (cost=64551.62..76689.57 rows=425 width=18) (actual time=14030.064..15371.482 rows=4370 loops=1)
                                                                     Merge Cond: (mc.movie_id = mi_idx.movie_id)
                                                                     Buffers: shared hit=1685468 read=41745
                                                                     ->  Sort  (cost=64551.61..64551.63 rows=333 width=4) (actual time=13994.533..13994.920 rows=1814 loops=1)
                                                                           Sort Key: mc.movie_id
                                                                           Sort Method: quicksort  Memory: 134kB
                                                                           Buffers: shared hit=1671981 read=29622
                                                                           ->  Merge Join  (cost=0.03..64551.17 rows=333 width=4) (actual time=12156.107..13993.892 rows=1814 loops=1)
                                                                                 Merge Cond: (cn.id = mc.company_id)
                                                                                 Buffers: shared hit=1671981 read=29622
                                                                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4597.20 rows=30 width=4) (actual time=259.716..846.163 rows=10 loops=1)
                                                                                       Filter: (name ~~ 'Lionsgate%'::text)
                                                                                       Rows Removed by Filter: 234987
                                                                                       Buffers: shared hit=231720 read=3834
                                                                                 ->  Index Scan using movie_companies_idx_cid on movie_companies mc  (cost=0.01..59751.38 rows=2609129 width=8) (actual time=0.020..12703.386 rows=2562825 loops=1)
                                                                                       Buffers: shared hit=1440261 read=25788
                                                                     ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.013..1051.873 rows=1369714 loops=1)
                                                                           Buffers: shared hit=13487 read=12123
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.043..0.043 rows=1 loops=1)
                                                               Sort Key: it2.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.033..0.033 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'votes'::text)
                                                                     Buffers: shared hit=1 read=1
                                             ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.015..2431.628 rows=4517951 loops=1)
                                                   Buffers: shared hit=21874 read=36503
                                 ->  Sort  (cost=42.93..42.93 rows=7 width=4) (actual time=78.210..78.212 rows=7 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=14 read=17
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..42.93 rows=7 width=4) (actual time=29.215..78.172 rows=7 loops=1)
                                             Index Cond: (keyword = ANY ('{murder,violence,blood,gore,death,female-nudity,hospital}'::text[]))
                                             Buffers: shared hit=14 read=17
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=1739438 width=19) (actual time=0.018..4211.111 rows=1739579 loops=1)
               Filter: ((gender)::text = 'm'::text)
               Rows Removed by Filter: 2427912
               Buffers: shared hit=3938602 read=70682
 Planning Time: 14862.531 ms
 Execution Time: 128229.725 ms
(108 rows)

