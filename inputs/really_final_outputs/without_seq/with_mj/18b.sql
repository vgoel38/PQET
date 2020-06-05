                                                                                                     QUERY PLAN                                                                                                     
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=1413701.30..1413701.30 rows=1 width=96) (actual time=110655.768..110655.768 rows=1 loops=1)
   Buffers: shared hit=8306859 read=648182
   ->  Merge Join  (cost=1366078.86..1413701.30 rows=1 width=65) (actual time=108212.316..110655.703 rows=11 loops=1)
         Merge Cond: (ci.person_id = n.id)
         Buffers: shared hit=8306859 read=648182
         ->  Sort  (cost=1366078.85..1366078.85 rows=1 width=69) (actual time=106308.370..106308.395 rows=145 loops=1)
               Sort Key: ci.person_id
               Sort Method: quicksort  Memory: 46kB
               Buffers: shared hit=4368257 read=577500
               ->  Merge Join  (cost=1342413.06..1366078.85 rows=1 width=69) (actual time=97944.874..106303.109 rows=268 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=4368253 read=577500
                     ->  Merge Join  (cost=627584.58..651056.92 rows=1 width=77) (actual time=20667.049..29883.625 rows=358 loops=1)
                           Merge Cond: (t.id = mi.movie_id)
                           Buffers: shared hit=2516487 read=225823
                           ->  Merge Join  (cost=12281.95..35754.18 rows=145 width=31) (actual time=1979.686..11366.412 rows=6152 loops=1)
                                 Merge Cond: (mi_idx.movie_id = t.id)
                                 Buffers: shared hit=2501719 read=55081
                                 ->  Sort  (cost=12281.94..12281.97 rows=468 width=10) (actual time=1386.650..1389.196 rows=15849 loops=1)
                                       Sort Key: mi_idx.movie_id
                                       Sort Method: quicksort  Memory: 1127kB
                                       Buffers: shared hit=13572 read=12221
                                       ->  Merge Join  (cost=12273.05..12281.29 rows=468 width=10) (actual time=1377.371..1381.246 rows=15849 loops=1)
                                             Merge Cond: (it2.id = mi_idx.info_type_id)
                                             Buffers: shared hit=13572 read=12221
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.083..0.083 rows=1 loops=1)
                                                   Sort Key: it2.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.059..0.060 rows=1 loops=1)
                                                         Index Cond: ((info)::text = 'rating'::text)
                                                         Buffers: shared hit=1 read=1
                                             ->  Sort  (cost=12266.92..12271.03 rows=52860 width=14) (actual time=1370.747..1373.718 rows=52842 loops=1)
                                                   Sort Key: mi_idx.info_type_id
                                                   Sort Method: quicksort  Memory: 4065kB
                                                   Buffers: shared hit=13571 read=12220
                                                   ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx  (cost=0.01..12138.14 rows=52860 width=14) (actual time=0.124..1339.505 rows=52862 loops=1)
                                                         Filter: (info > '8.0'::text)
                                                         Rows Removed by Filter: 1327173
                                                         Buffers: shared hit=13571 read=12220
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=784488 width=21) (actual time=55.614..9876.803 rows=784237 loops=1)
                                       Filter: ((production_year >= 2008) AND (production_year <= 2014))
                                       Rows Removed by Filter: 1741490
                                       Buffers: shared hit=2488147 read=42860
                           ->  Sort  (cost=615302.63..615302.68 rows=587 width=46) (actual time=18500.891..18506.511 rows=72231 loops=1)
                                 Sort Key: mi.movie_id
                                 Sort Method: quicksort  Memory: 6460kB
                                 Buffers: shared hit=14768 read=170742
                                 ->  Merge Join  (cost=0.02..615301.79 rows=587 width=46) (actual time=1942.129..18459.126 rows=72258 loops=1)
                                       Merge Cond: (it1.id = mi.info_type_id)
                                       Buffers: shared hit=14768 read=170742
                                       ->  Index Scan using info_type_pkey on info_type it1  (cost=0.00..9.21 rows=1 width=4) (actual time=0.013..0.039 rows=1 loops=1)
                                             Filter: ((info)::text = 'genres'::text)
                                             Rows Removed by Filter: 112
                                             Buffers: shared hit=2
                                       ->  Index Scan using movie_info_info_type_id on movie_info mi  (cost=0.01..615287.40 rows=66310 width=50) (actual time=1942.103..18433.658 rows=72259 loops=1)
                                             Filter: ((note IS NULL) AND (info = ANY ('{Horror,Thriller}'::text[])))
                                             Rows Removed by Filter: 13634891
                                             Buffers: shared hit=14766 read=170742
                     ->  Sort  (cost=714828.48..714925.20 rows=1245851 width=8) (actual time=76133.745..76268.449 rows=1243723 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 107499kB
                           Buffers: shared hit=1851766 read=351677
                           ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..710911.26 rows=1245851 width=8) (actual time=45.481..75350.688 rows=1244716 loops=1)
                                 Filter: (note = ANY ('{(writer),"(head writer)","(written by)",(story),"(story editor)"}'::text[]))
                                 Rows Removed by Filter: 34999628
                                 Buffers: shared hit=1851766 read=351677
         ->  Index Scan using name_pkey on name n  (cost=0.01..48812.37 rows=623581 width=4) (actual time=1860.056..4247.567 rows=961555 loops=1)
               Filter: ((gender IS NOT NULL) AND ((gender)::text = 'f'::text))
               Rows Removed by Filter: 3205936
               Buffers: shared hit=3938602 read=70682
 Planning Time: 5282.859 ms
 Execution Time: 110684.683 ms
(73 rows)

