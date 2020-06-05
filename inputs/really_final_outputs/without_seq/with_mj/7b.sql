                                                                                                  QUERY PLAN                                                                                                   
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10000948559.33..10000948559.33 rows=1 width=64) (actual time=82133.650..82133.650 rows=1 loops=1)
   Buffers: shared hit=7351966 read=414889
   ->  Merge Join  (cost=10000948559.33..10000948559.33 rows=1 width=32) (actual time=82133.589..82133.599 rows=16 loops=1)
         Merge Cond: (pi.info_type_id = it.id)
         Buffers: shared hit=7351966 read=414889
         ->  Sort  (cost=10000948553.20..10000948553.20 rows=1 width=36) (actual time=82125.269..82125.270 rows=16 loops=1)
               Sort Key: pi.info_type_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=7351966 read=414887
               ->  Merge Join  (cost=10000948553.20..10000948553.20 rows=1 width=36) (actual time=82120.639..82120.646 rows=16 loops=1)
                     Merge Cond: (ml.link_type_id = lt.id)
                     Buffers: shared hit=7351962 read=414887
                     ->  Sort  (cost=10000948547.07..10000948547.07 rows=1 width=40) (actual time=82120.590..82120.595 rows=46 loops=1)
                           Sort Key: ml.link_type_id
                           Sort Method: quicksort  Memory: 28kB
                           Buffers: shared hit=7351961 read=414886
                           ->  Merge Join  (cost=10000925161.29..10000948547.07 rows=1 width=40) (actual time=79392.346..82120.548 rows=46 loops=1)
                                 Merge Cond: (t.id = ci.movie_id)
                                 Buffers: shared hit=7351961 read=414886
                                 ->  Merge Join  (cost=10000000079.25..10000023490.92 rows=902 width=29) (actual time=383.519..10031.281 rows=1775 loops=1)
                                       Merge Cond: (ml.linked_movie_id = t.id)
                                       Buffers: shared hit=2471296 read=42976
                                       ->  Sort  (cost=10000000076.46..10000000078.79 rows=29997 width=8) (actual time=48.866..54.651 rows=29864 loops=1)
                                             Sort Key: ml.linked_movie_id
                                             Sort Method: quicksort  Memory: 2175kB
                                             Buffers: shared read=163
                                             ->  Seq Scan on movie_link ml  (cost=10000000000.00..10000000007.19 rows=29997 width=8) (actual time=0.223..26.242 rows=29997 loops=1)
                                                   Buffers: shared read=163
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=76065 width=21) (actual time=235.920..9960.394 rows=75100 loops=1)
                                             Filter: ((production_year >= 1980) AND (production_year <= 1984))
                                             Rows Removed by Filter: 2433609
                                             Buffers: shared hit=2471296 read=42813
                                 ->  Sort  (cost=925082.04..925082.04 rows=8 width=23) (actual time=72088.678..72088.778 rows=393 loops=1)
                                       Sort Key: ci.movie_id
                                       Sort Method: quicksort  Memory: 52kB
                                       Buffers: shared hit=4880665 read=371910
                                       ->  Merge Join  (cost=0.33..925082.04 rows=8 width=23) (actual time=15344.405..72088.542 rows=353 loops=1)
                                             Merge Cond: (an.person_id = n.id)
                                             Buffers: shared hit=4880665 read=371910
                                             ->  Merge Join  (cost=0.32..875938.81 rows=2838 width=20) (actual time=1873.640..67678.070 rows=6878 loops=1)
                                                   Merge Cond: (an.person_id = ci.person_id)
                                                   Buffers: shared hit=942061 read=301230
                                                   ->  Merge Join  (cost=0.03..198682.83 rows=81 width=12) (actual time=406.688..11784.394 rows=49 loops=1)
                                                         Merge Cond: (pi.person_id = an.person_id)
                                                         Buffers: shared hit=184177 read=66459
                                                         ->  Index Scan using person_info_idx_pid on person_info pi  (cost=0.01..156069.36 rows=64 width=8) (actual time=221.931..8847.484 rows=37 loops=1)
                                                               Filter: (note = 'Volker Boehm'::text)
                                                               Rows Removed by Filter: 1624156
                                                               Buffers: shared hit=54867 read=54011
                                                         ->  Index Scan using aka_name_idx_person on aka_name an  (cost=0.01..42561.30 rows=671965 width=4) (actual time=11.382..2862.893 rows=277874 loops=1)
                                                               Filter: (name ~~ '%a%'::text)
                                                               Rows Removed by Filter: 109123
                                                               Buffers: shared hit=129310 read=12448
                                                   ->  Index Scan using cast_info_idx_pid on cast_info ci  (cost=0.02..703876.26 rows=36244344 width=8) (actual time=0.033..50587.897 rows=17655576 loops=1)
                                                         Buffers: shared hit=757884 read=234771
                                             ->  Index Scan using name_pkey on name n  (cost=0.01..49135.93 rows=91148 width=19) (actual time=24.920..4396.167 rows=91976 loops=1)
                                                   Filter: (((name_pcode_cf)::text ~~ 'D%'::text) AND ((gender)::text = 'm'::text))
                                                   Rows Removed by Filter: 4075515
                                                   Buffers: shared hit=3938604 read=70680
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.035..0.035 rows=1 loops=1)
                           Sort Key: lt.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=1 read=1
                           ->  Index Scan using link_type_link_key on link_type lt  (cost=0.00..6.13 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                                 Index Cond: ((link)::text = 'features'::text)
                                 Buffers: shared hit=1 read=1
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=8.314..8.315 rows=1 loops=1)
               Sort Key: it.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared read=2
               ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=8.307..8.309 rows=1 loops=1)
                     Index Cond: ((info)::text = 'mini biography'::text)
                     Buffers: shared read=2
 Planning Time: 6634.315 ms
 Execution Time: 82154.174 ms
(75 rows)

