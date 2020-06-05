                                                                                                               QUERY PLAN                                                                                                                
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10000951347.06..10000951347.06 rows=1 width=64) (actual time=92895.020..92895.020 rows=1 loops=1)
   Buffers: shared hit=7543626 read=418434
   ->  Merge Join  (cost=10000951337.88..10000951347.06 rows=2 width=110) (actual time=92161.411..92190.538 rows=68185 loops=1)
         Merge Cond: (ml.link_type_id = lt.id)
         Buffers: shared hit=7472236 read=417890
         ->  Sort  (cost=10000951337.87..10000951337.87 rows=10 width=114) (actual time=92161.012..92168.942 rows=74280 loops=1)
               Sort Key: ml.link_type_id
               Sort Method: quicksort  Memory: 79272kB
               Buffers: shared hit=7472234 read=417890
               ->  Merge Join  (cost=10000927830.23..10000951337.87 rows=10 width=114) (actual time=82079.131..92097.039 rows=77651 loops=1)
                     Merge Cond: (t.id = ci.movie_id)
                     Buffers: shared hit=7472230 read=417890
                     ->  Merge Join  (cost=10000000079.11..10000023606.91 rows=18456 width=12) (actual time=391.927..10347.660 rows=19906 loops=1)
                           Merge Cond: (ml.linked_movie_id = t.id)
                           Buffers: shared hit=2487538 read=43020
                           ->  Sort  (cost=10000000076.46..10000000078.79 rows=29997 width=8) (actual time=48.416..54.214 rows=29997 loops=1)
                                 Sort Key: ml.linked_movie_id
                                 Sort Method: quicksort  Memory: 2175kB
                                 Buffers: shared read=163
                                 ->  Seq Scan on movie_link ml  (cost=10000000000.00..10000000007.19 rows=29997 width=8) (actual time=0.148..24.069 rows=29997 loops=1)
                                       Buffers: shared read=163
                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1555597 width=4) (actual time=0.018..10106.007 rows=1554656 loops=1)
                                 Filter: ((production_year >= 1980) AND (production_year <= 2010))
                                 Rows Removed by Filter: 970338
                                 Buffers: shared hit=2487538 read=42857
                     ->  Sort  (cost=927751.12..927751.16 rows=477 width=114) (actual time=81211.011..81512.729 rows=1661168 loops=1)
                           Sort Key: ci.movie_id
                           Sort Method: quicksort  Memory: 1633718kB
                           Buffers: shared hit=4984692 read=374870
                           ->  Merge Join  (cost=927742.05..927750.46 rows=477 width=114) (actual time=79503.853..80033.856 rows=1618304 loops=1)
                                 Merge Cond: (pi.info_type_id = it.id)
                                 Buffers: shared hit=4984692 read=374870
                                 ->  Sort  (cost=927735.93..927740.12 rows=53933 width=118) (actual time=79482.866..79589.668 rows=1618304 loops=1)
                                       Sort Key: pi.info_type_id
                                       Sort Method: quicksort  Memory: 1637172kB
                                       Buffers: shared hit=4984692 read=374868
                                       ->  Merge Join  (cost=0.33..927604.29 rows=53933 width=118) (actual time=150.469..77564.604 rows=1618304 loops=1)
                                             Merge Cond: (an.person_id = n.id)
                                             Buffers: shared hit=4984692 read=374868
                                             ->  Merge Join  (cost=0.32..877138.14 rows=3785907 width=115) (actual time=30.100..69196.958 rows=5465870 loops=1)
                                                   Merge Cond: (an.person_id = ci.person_id)
                                                   Buffers: shared hit=1046087 read=304189
                                                   ->  Merge Join  (cost=0.03..198537.46 rows=108291 width=107) (actual time=8.330..8513.583 rows=41941 loops=1)
                                                         Merge Cond: (pi.person_id = an.person_id)
                                                         Buffers: shared hit=190466 read=66611
                                                         ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..155839.26 rows=84183 width=103) (actual time=0.026..7362.117 rows=44624 loops=1)
                                                               Filter: (note IS NOT NULL)
                                                               Rows Removed by Filter: 1613492
                                                               Buffers: shared hit=57343 read=54144
                                                         ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42631.28 rows=681455 width=4) (actual time=8.279..1017.245 rows=291409 loops=1)
                                                               Filter: ((name IS NOT NULL) AND ((name ~~ '%a%'::text) OR (name ~~ 'A%'::text)))
                                                               Rows Removed by Filter: 105221
                                                               Buffers: shared hit=133123 read=12467
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.032..52949.075 rows=21375279 loops=1)
                                                         Buffers: shared hit=855621 read=237578
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..50106.62 rows=467046 width=19) (actual time=0.021..6711.339 rows=507621 loops=1)
                                                   Filter: (((name_pcode_cf)::text >= 'A'::text) AND ((name_pcode_cf)::text <= 'F'::text) AND (((gender)::text = 'm'::text) OR (((gender)::text = 'f'::text) AND (name ~~ 'A%'::text))))
                                                   Rows Removed by Filter: 3659870
                                                   Buffers: shared hit=3938605 read=70679
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=20.977..20.977 rows=1 loops=1)
                                       Sort Key: it.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=2
                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=20.960..20.963 rows=1 loops=1)
                                             Index Cond: ((info)::text = 'mini biography'::text)
                                             Buffers: shared read=2
         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=4 width=4) (actual time=0.015..0.032 rows=4 loops=1)
               Filter: ((link)::text = ANY ('{references,"referenced in",features,"featured in"}'::text[]))
               Rows Removed by Filter: 14
               Buffers: shared hit=2
 Planning Time: 6735.345 ms
 Execution Time: 93030.039 ms
(72 rows)

