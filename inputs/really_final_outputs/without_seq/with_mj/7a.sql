                                                                                                               QUERY PLAN                                                                                                                
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10000949583.47..10000949583.47 rows=1 width=64) (actual time=89608.370..89608.371 rows=1 loops=1)
   Buffers: shared hit=7472484 read=436447
   ->  Merge Join  (cost=10000949583.47..10000949583.47 rows=1 width=32) (actual time=89608.270..89608.305 rows=32 loops=1)
         Merge Cond: (pi.info_type_id = it.id)
         Buffers: shared hit=7472484 read=436447
         ->  Sort  (cost=10000949577.34..10000949577.34 rows=1 width=36) (actual time=89601.636..89601.642 rows=32 loops=1)
               Sort Key: pi.info_type_id
               Sort Method: quicksort  Memory: 27kB
               Buffers: shared hit=7472484 read=436445
               ->  Merge Join  (cost=10000949577.34..10000949577.34 rows=1 width=36) (actual time=89596.907..89596.916 rows=32 loops=1)
                     Merge Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=7472480 read=436445
                     ->  Sort  (cost=10000949571.22..10000949571.22 rows=1 width=40) (actual time=89596.863..89596.870 rows=108 loops=1)
                           Sort Key: ml.link_type_id
                           Sort Method: quicksort  Memory: 34kB
                           Buffers: shared hit=7472479 read=436444
                           ->  Merge Join  (cost=10000926161.52..10000949571.22 rows=1 width=40) (actual time=86540.161..89596.787 rows=110 loops=1)
                                 Merge Cond: (t.id = ci.movie_id)
                                 Buffers: shared hit=7472479 read=436444
                                 ->  Merge Join  (cost=10000000079.10..10000023511.70 rows=4036 width=29) (actual time=391.780..10239.332 rows=6748 loops=1)
                                       Merge Cond: (ml.linked_movie_id = t.id)
                                       Buffers: shared hit=2487461 read=43020
                                       ->  Sort  (cost=10000000076.46..10000000078.79 rows=29997 width=8) (actual time=49.056..55.008 rows=29995 loops=1)
                                             Sort Key: ml.linked_movie_id
                                             Sort Method: quicksort  Memory: 2175kB
                                             Buffers: shared read=163
                                             ->  Seq Scan on movie_link ml  (cost=10000000000.00..10000000007.19 rows=29997 width=8) (actual time=0.590..23.746 rows=29997 loops=1)
                                                   Buffers: shared read=163
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=340186 width=21) (actual time=0.033..10135.010 rows=339774 loops=1)
                                             Filter: ((production_year >= 1980) AND (production_year <= 1995))
                                             Rows Removed by Filter: 2185142
                                             Buffers: shared hit=2487461 read=42857
                                 ->  Sort  (cost=926082.43..926082.43 rows=41 width=23) (actual time=79355.053..79355.798 rows=3426 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 359kB
                                       Buffers: shared hit=4985018 read=393424
                                       ->  Merge Join  (cost=0.33..926082.39 rows=41 width=23) (actual time=1977.263..79353.331 rows=3354 loops=1)
                                             Merge Cond: (an.person_id = n.id)
                                             Buffers: shared hit=4985018 read=393424
                                             ->  Merge Join  (cost=0.32..875938.81 rows=2838 width=20) (actual time=1856.503..74083.633 rows=9590 loops=1)
                                                   Merge Cond: (an.person_id = ci.person_id)
                                                   Buffers: shared hit=1046413 read=322745
                                                   ->  Merge Join  (cost=0.03..198682.83 rows=81 width=12) (actual time=423.204..13133.733 rows=62 loops=1)
                                                         Merge Cond: (pi.person_id = an.person_id)
                                                         Buffers: shared hit=224002 read=67633
                                                         ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..156069.36 rows=64 width=8) (actual time=238.518..9317.307 rows=44 loops=1)
                                                               Filter: (note = 'Volker Boehm'::text)
                                                               Rows Removed by Filter: 1876459
                                                               Buffers: shared hit=74580 read=55041
                                                         ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42561.30 rows=671965 width=4) (actual time=11.555..3743.592 rows=320093 loops=1)
                                                               Filter: (name ~~ '%a%'::text)
                                                               Rows Removed by Filter: 119434
                                                               Buffers: shared hit=149422 read=12592
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.023..55026.388 rows=19925498 loops=1)
                                                         Buffers: shared hit=822411 read=255112
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..50106.62 rows=472998 width=19) (actual time=0.029..5193.986 rows=543291 loops=1)
                                                   Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'B%'::text))))
                                                   Rows Removed by Filter: 3624200
                                                   Buffers: shared hit=3938605 read=70679
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.026..0.026 rows=1 loops=1)
                           Sort Key: lt.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.017..0.018 rows=1 loops=1)
                                 Index Cond: ((link)::text = 'features'::text)
                                 Buffers: shared hit=1 read=1
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=6.625..6.625 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared read=2
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=6.614..6.617 rows=1 loops=1)
                     Index Cond: ((info)::text = 'mini biography'::text)
                     Buffers: shared read=2
 Planning Time: 6328.228 ms
 Execution Time: 89634.899 ms
(75 rows)

