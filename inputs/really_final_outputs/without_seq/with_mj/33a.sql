                                                                                                                                             QUERY PLAN                                                                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=118263.47..118263.47 rows=1 width=192) (actual time=13354.839..13354.839 rows=1 loops=1)
   Buffers: shared hit=2836626 read=57621
   ->  Merge Join  (cost=118263.47..118263.47 rows=1 width=84) (actual time=13354.792..13354.794 rows=8 loops=1)
         Merge Cond: (mi_idx1.info_type_id = it1.id)
         Buffers: shared hit=2836626 read=57621
         ->  Sort  (cost=118257.34..118257.34 rows=1 width=88) (actual time=13354.768..13354.770 rows=24 loops=1)
               Sort Key: mi_idx1.info_type_id
               Sort Method: quicksort  Memory: 29kB
               Buffers: shared hit=2836624 read=57621
               ->  Merge Join  (cost=118257.34..118257.34 rows=1 width=88) (actual time=13350.351..13350.359 rows=24 loops=1)
                     Merge Cond: (t2.kind_id = kt2.id)
                     Buffers: shared hit=2836620 read=57621
                     ->  Sort  (cost=118251.22..118251.22 rows=8 width=92) (actual time=13350.322..13350.324 rows=24 loops=1)
                           Sort Key: t2.kind_id
                           Sort Method: quicksort  Memory: 29kB
                           Buffers: shared hit=2836618 read=57621
                           ->  Merge Join  (cost=113654.02..118251.21 rows=8 width=92) (actual time=13301.982..13350.300 rows=24 loops=1)
                                 Merge Cond: (cn2.id = mc2.company_id)
                                 Buffers: shared hit=2836618 read=57621
                                 ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..4578.95 rows=234997 width=23) (actual time=0.040..40.229 rows=71404 loops=1)
                                       Buffers: shared hit=71593
                                 ->  Sort  (cost=113654.01..113654.01 rows=8 width=77) (actual time=13301.916..13301.918 rows=24 loops=1)
                                       Sort Key: mc2.company_id
                                       Sort Method: quicksort  Memory: 28kB
                                       Buffers: shared hit=2765025 read=57621
                                       ->  Merge Join  (cost=45526.20..113654.01 rows=8 width=77) (actual time=13301.879..13301.890 rows=24 loops=1)
                                             Merge Cond: (mc2.movie_id = t2.id)
                                             Buffers: shared hit=2765025 read=57621
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc2  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.028..4.665 rows=15063 loops=1)
                                                   Buffers: shared hit=6680
                                             ->  Sort  (cost=45526.19..45526.19 rows=8 width=85) (actual time=13295.435..13295.437 rows=21 loops=1)
                                                   Sort Key: ml.linked_movie_id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=2758345 read=57621
                                                   ->  Merge Join  (cost=45526.05..45526.19 rows=8 width=85) (actual time=13295.417..13295.419 rows=6 loops=1)
                                                         Merge Cond: (mi_idx2.info_type_id = it2.id)
                                                         Buffers: shared hit=2758345 read=57621
                                                         ->  Sort  (cost=45519.92..45519.99 rows=899 width=89) (actual time=13295.264..13295.295 rows=633 loops=1)
                                                               Sort Key: mi_idx2.info_type_id
                                                               Sort Method: quicksort  Memory: 134kB
                                                               Buffers: shared hit=2758344 read=57620
                                                               ->  Merge Join  (cost=45517.51..45518.55 rows=899 width=89) (actual time=13294.737..13294.970 rows=633 loops=1)
                                                                     Merge Cond: (kt1.id = t1.kind_id)
                                                                     Buffers: shared hit=2758344 read=57620
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.074..0.075 rows=1 loops=1)
                                                                           Sort Key: kt1.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using kind_type_kind_key on kind_type kt1  (cost=0.00..6.12 rows=1 width=4) (actual time=0.054..0.055 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'tv series'::text)
                                                                                 Buffers: shared hit=1 read=1
                                                                     ->  Sort  (cost=45511.39..45511.88 rows=6291 width=93) (actual time=13294.658..13294.690 rows=634 loops=1)
                                                                           Sort Key: t1.kind_id
                                                                           Sort Method: quicksort  Memory: 149kB
                                                                           Buffers: shared hit=2758343 read=57619
                                                                           ->  Merge Join  (cost=43224.23..45499.06 rows=6291 width=93) (actual time=13141.234..13294.123 rows=693 loops=1)
                                                                                 Merge Cond: (ml.movie_id = t1.id)
                                                                                 Buffers: shared hit=2758343 read=57619
                                                                                 ->  Merge Join  (cost=43224.21..43786.94 rows=6291 width=84) (actual time=13140.374..13158.473 rows=693 loops=1)
                                                                                       Merge Cond: (ml.movie_id = mi_idx1.movie_id)
                                                                                       Buffers: shared hit=2601911 read=57619
                                                                                       ->  Sort  (cost=43224.20..43224.36 rows=2097 width=70) (actual time=13140.222..13140.260 rows=238 loops=1)
                                                                                             Sort Key: ml.movie_id
                                                                                             Sort Method: quicksort  Memory: 59kB
                                                                                             Buffers: shared hit=2601219 read=57619
                                                                                             ->  Merge Join  (cost=38615.78..43220.60 rows=2097 width=70) (actual time=12748.209..13139.874 rows=238 loops=1)
                                                                                                   Merge Cond: (cn1.id = mc1.company_id)
                                                                                                   Buffers: shared hit=2601219 read=57619
                                                                                                   ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..4597.20 rows=84843 width=23) (actual time=0.032..429.526 rows=27029 loops=1)
                                                                                                         Filter: ((country_code)::text = '[us]'::text)
                                                                                                         Rows Removed by Filter: 47128
                                                                                                         Buffers: shared hit=72807 read=1544
                                                                                                   ->  Sort  (cost=38615.77..38616.22 rows=5809 width=55) (actual time=12705.946..12706.235 rows=1610 loops=1)
                                                                                                         Sort Key: mc1.company_id
                                                                                                         Sort Method: quicksort  Memory: 265kB
                                                                                                         Buffers: shared hit=2528412 read=56075
                                                                                                         ->  Merge Join  (cost=35994.56..38604.49 rows=5809 width=55) (actual time=12337.418..12703.918 rows=1610 loops=1)
                                                                                                               Merge Cond: (mc1.movie_id = ml.movie_id)
                                                                                                               Buffers: shared hit=2528412 read=56075
                                                                                                               ->  Index Scan using movie_companies_idx_mid on movie_companies mc1  (cost=0.01..67925.24 rows=2609129 width=8) (actual time=0.028..336.731 rows=99877 loops=1)
                                                                                                                     Buffers: shared hit=45837 read=983
                                                                                                               ->  Sort  (cost=35994.55..35994.65 rows=1286 width=47) (actual time=12330.418..12330.647 rows=1615 loops=1)
                                                                                                                     Sort Key: ml.movie_id
                                                                                                                     Sort Method: quicksort  Memory: 63kB
                                                                                                                     Buffers: shared hit=2482575 read=55092
                                                                                                                     ->  Merge Join  (cost=372.34..35992.49 rows=1286 width=47) (actual time=556.787..12329.973 rows=308 loops=1)
                                                                                                                           Merge Cond: (ml.linked_movie_id = t2.id)
                                                                                                                           Buffers: shared hit=2482575 read=55092
                                                                                                                           ->  Merge Join  (cost=369.69..12553.36 rows=7293 width=22) (actual time=65.771..1712.508 rows=2944 loops=1)
                                                                                                                                 Merge Cond: (ml.linked_movie_id = mi_idx2.movie_id)
                                                                                                                                 Buffers: shared hit=13436 read=12285
                                                                                                                                 ->  Sort  (cost=368.81..369.20 rows=5000 width=8) (actual time=65.269..65.973 rows=2315 loops=1)
                                                                                                                                       Sort Key: ml.linked_movie_id
                                                                                                                                       Sort Method: quicksort  Memory: 205kB
                                                                                                                                       Buffers: shared hit=83 read=241
                                                                                                                                       ->  Merge Join  (cost=345.08..359.27 rows=5000 width=8) (actual time=62.630..63.981 rows=2315 loops=1)
                                                                                                                                             Merge Cond: (ml.link_type_id = lt.id)
                                                                                                                                             Buffers: shared hit=83 read=241
                                                                                                                                             ->  Sort  (cost=345.08..347.41 rows=29997 width=12) (actual time=62.612..62.881 rows=2316 loops=1)
                                                                                                                                                   Sort Key: ml.link_type_id
                                                                                                                                                   Sort Method: quicksort  Memory: 2175kB
                                                                                                                                                   Buffers: shared hit=81 read=241
                                                                                                                                                   ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.028..44.632 rows=29997 loops=1)
                                                                                                                                                         Buffers: shared hit=81 read=241
                                                                                                                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=3 width=4) (actual time=0.013..0.025 rows=2 loops=1)
                                                                                                                                                   Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                                                                                                   Rows Removed by Filter: 16
                                                                                                                                                   Buffers: shared hit=2
                                                                                                                                 ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx2  (cost=0.01..12138.14 rows=658313 width=14) (actual time=0.012..1539.907 rows=650201 loops=1)
                                                                                                                                       Filter: (info < '3.0'::text)
                                                                                                                                       Rows Removed by Filter: 713230
                                                                                                                                       Buffers: shared hit=13353 read=12044
                                                                                                                           ->  Index Scan using title_idx_id on title t2  (cost=0.01..23434.65 rows=445860 width=25) (actual time=33.321..10548.176 rows=443399 loops=1)
                                                                                                                                 Filter: ((production_year >= 2005) AND (production_year <= 2008))
                                                                                                                                 Rows Removed by Filter: 2063148
                                                                                                                                 Buffers: shared hit=2469139 read=42807
                                                                                       ->  Index Scan using movie_info_idx_idx_mid on movie_info_idx mi_idx1  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.039..11.451 rows=52135 loops=1)
                                                                                             Buffers: shared hit=692
                                                                                 ->  Index Scan using title_idx_id on title t1  (cost=0.01..23042.05 rows=2528312 width=25) (actual time=0.034..115.708 rows=156058 loops=1)
                                                                                       Buffers: shared hit=156432
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.039..0.039 rows=1 loops=1)
                                                               Sort Key: it2.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using info_type_info_key on info_type it2  (cost=0.00..6.13 rows=1 width=4) (actual time=0.028..0.029 rows=1 loops=1)
                                                                     Index Cond: ((info)::text = 'rating'::text)
                                                                     Buffers: shared hit=1 read=1
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.024..0.024 rows=1 loops=1)
                           Sort Key: kt2.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared hit=2
                           ->  Index Scan using kind_type_kind_key on kind_type kt2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.011..0.011 rows=1 loops=1)
                                 Index Cond: ((kind)::text = 'tv series'::text)
                                 Buffers: shared hit=2
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.016..0.016 rows=1 loops=1)
               Sort Key: it1.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared hit=2
               ->  Index Scan using info_type_info_key on info_type it1  (cost=0.00..6.13 rows=1 width=4) (actual time=0.009..0.009 rows=1 loops=1)
                     Index Cond: ((info)::text = 'rating'::text)
                     Buffers: shared hit=2
 Planning Time: 5866.633 ms
 Execution Time: 13376.637 ms
(143 rows)

