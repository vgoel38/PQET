                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23512.23..23512.23 rows=1 width=96) (actual time=9956.757..9956.757 rows=1 loops=1)
   Buffers: shared hit=520148 read=16815
   ->  Merge Join  (cost=18874.74..23512.23 rows=1 width=48) (actual time=9904.613..9956.682 rows=38 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=520148 read=16815
         ->  Sort  (cost=18874.72..18874.72 rows=1 width=33) (actual time=9588.107..9588.128 rows=133 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 35kB
               Buffers: shared hit=470813 read=15728
               ->  Merge Join  (cost=17143.12..18874.72 rows=1 width=33) (actual time=9583.233..9583.416 rows=133 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=470809 read=15728
                     ->  Sort  (cost=17143.11..17143.11 rows=1 width=32) (actual time=8773.884..8773.930 rows=730 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 82kB
                           Buffers: shared hit=334844 read=12418
                           ->  Merge Join  (cost=17143.11..17143.11 rows=1 width=32) (actual time=8773.152..8773.534 rows=730 loops=1)
                                 Merge Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=334844 read=12418
                                 ->  Sort  (cost=17136.98..17136.98 rows=1 width=36) (actual time=8773.096..8773.152 rows=749 loops=1)
                                       Sort Key: mc.company_type_id
                                       Sort Method: quicksort  Memory: 83kB
                                       Buffers: shared hit=334843 read=12417
                                       ->  Merge Join  (cost=14532.31..17136.98 rows=1 width=36) (actual time=8700.229..8772.758 rows=749 loops=1)
                                             Merge Cond: (mc.movie_id = ml.movie_id)
                                             Buffers: shared hit=334843 read=12417
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=21.383..239.196 rows=33502 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 34712
                                                   Buffers: shared hit=30102 read=674
                                             ->  Sort  (cost=14532.30..14532.30 rows=1 width=24) (actual time=8525.014..8525.077 rows=742 loops=1)
                                                   Sort Key: mk.movie_id
                                                   Sort Method: quicksort  Memory: 34kB
                                                   Buffers: shared hit=304741 read=11743
                                                   ->  Merge Join  (cost=14531.76..14532.30 rows=1 width=24) (actual time=8524.733..8524.882 rows=118 loops=1)
                                                         Merge Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=304741 read=11743
                                                         ->  Sort  (cost=14525.62..14525.89 rows=3489 width=28) (actual time=8467.991..8468.232 rows=1135 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 556kB
                                                               Buffers: shared hit=304741 read=11739
                                                               ->  Merge Join  (cost=367.12..14519.25 rows=3489 width=28) (actual time=433.336..8464.682 rows=4652 loops=1)
                                                                     Merge Cond: (mk.movie_id = ml.movie_id)
                                                                     Buffers: shared hit=304741 read=11739
                                                                     ->  Merge Join  (cost=5.31..656352.79 rows=1375953 width=12) (actual time=284.363..8376.410 rows=2870 loops=1)
                                                                           Merge Cond: (mi.movie_id = mk.movie_id)
                                                                           Buffers: shared hit=304658 read=11498
                                                                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..616648.54 rows=116723 width=4) (actual time=232.209..8200.798 rows=3053 loops=1)
                                                                                 Filter: (info = ANY ('{Germany,German}'::text[]))
                                                                                 Rows Removed by Filter: 517468
                                                                                 Buffers: shared hit=304345 read=10694
                                                                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.017..148.075 rows=99547 loops=1)
                                                                                 Buffers: shared hit=313 read=804
                                                                     ->  Sort  (cost=361.81..361.94 rows=1666 width=16) (actual time=83.433..84.514 rows=6573 loops=1)
                                                                           Sort Key: ml.movie_id
                                                                           Sort Method: quicksort  Memory: 205kB
                                                                           Buffers: shared hit=83 read=241
                                                                           ->  Merge Join  (cost=345.08..359.04 rows=1666 width=16) (actual time=80.515..81.933 rows=2315 loops=1)
                                                                                 Merge Cond: (lt.id = ml.link_type_id)
                                                                                 Buffers: shared hit=83 read=241
                                                                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.015..0.032 rows=2 loops=1)
                                                                                       Filter: ((link)::text ~~ '%follow%'::text)
                                                                                       Rows Removed by Filter: 16
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=345.08..347.41 rows=29997 width=8) (actual time=80.491..80.816 rows=2316 loops=1)
                                                                                       Sort Key: ml.link_type_id
                                                                                       Sort Method: quicksort  Memory: 2175kB
                                                                                       Buffers: shared hit=81 read=241
                                                                                       ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.020..63.516 rows=29997 loops=1)
                                                                                             Buffers: shared hit=81 read=241
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=56.037..56.037 rows=1 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=56.015..56.018 rows=1 loops=1)
                                                                     Index Cond: (keyword = 'sequel'::text)
                                                                     Buffers: shared read=4
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.045..0.045 rows=1 loops=1)
                                       Sort Key: ct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.030..0.031 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1042800 width=21) (actual time=8.395..800.760 rows=67419 loops=1)
                           Filter: ((production_year >= 2000) AND (production_year <= 2010))
                           Rows Removed by Filter: 71517
                           Buffers: shared hit=135965 read=3310
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=39.894..367.432 rows=9846 loops=1)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 40438
               Buffers: shared hit=49335 read=1087
 Planning Time: 5678.717 ms
 Execution Time: 9974.419 ms
(94 rows)

