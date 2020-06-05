                                                                                                              QUERY PLAN                                                                                                              
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10349.12..10349.12 rows=1 width=96) (actual time=2731.549..2731.549 rows=1 loops=1)
   Buffers: shared hit=487559 read=9925
   ->  Merge Join  (cost=5711.62..10349.12 rows=1 width=48) (actual time=2619.422..2731.480 rows=14 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=487559 read=9925
         ->  Sort  (cost=5711.61..5711.61 rows=1 width=33) (actual time=2289.954..2289.960 rows=21 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 26kB
               Buffers: shared hit=415281 read=8384
               ->  Merge Join  (cost=5711.61..5711.61 rows=1 width=33) (actual time=2289.842..2289.867 rows=21 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=415277 read=8384
                     ->  Sort  (cost=5705.48..5705.48 rows=1 width=37) (actual time=2258.276..2258.285 rows=43 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 31kB
                           Buffers: shared hit=415277 read=8380
                           ->  Merge Join  (cost=4851.04..5705.48 rows=1 width=37) (actual time=2258.144..2258.213 rows=84 loops=1)
                                 Merge Cond: (ml.movie_id = mk.movie_id)
                                 Buffers: shared hit=415277 read=8380
                                 ->  Sort  (cost=4851.03..4851.03 rows=1 width=45) (actual time=2019.414..2019.418 rows=21 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 26kB
                                       Buffers: shared hit=415016 read=7813
                                       ->  Merge Join  (cost=4841.84..4851.03 rows=1 width=45) (actual time=2019.323..2019.369 rows=21 loops=1)
                                             Merge Cond: (ml.link_type_id = lt.id)
                                             Buffers: shared hit=415016 read=7813
                                             ->  Sort  (cost=4841.84..4841.84 rows=1 width=37) (actual time=2019.294..2019.298 rows=22 loops=1)
                                                   Sort Key: ml.link_type_id
                                                   Sort Method: quicksort  Memory: 29kB
                                                   Buffers: shared hit=415014 read=7813
                                                   ->  Merge Join  (cost=4841.84..4841.84 rows=1 width=37) (actual time=2019.139..2019.210 rows=57 loops=1)
                                                         Merge Cond: (mc.company_type_id = ct.id)
                                                         Buffers: shared hit=415014 read=7813
                                                         ->  Sort  (cost=4835.71..4835.71 rows=1 width=41) (actual time=2019.018..2019.029 rows=57 loops=1)
                                                               Sort Key: mc.company_type_id
                                                               Sort Method: quicksort  Memory: 29kB
                                                               Buffers: shared hit=415013 read=7812
                                                               ->  Merge Join  (cost=0.04..4835.71 rows=1 width=41) (actual time=1172.314..1992.253 rows=57 loops=1)
                                                                     Merge Cond: (ml.movie_id = mc.movie_id)
                                                                     Buffers: shared hit=415013 read=7812
                                                                     ->  Merge Join  (cost=0.02..2231.03 rows=1 width=29) (actual time=800.469..1620.310 rows=19 loops=1)
                                                                           Merge Cond: (ml.movie_id = t.id)
                                                                           Buffers: shared hit=384877 read=7138
                                                                           ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.029..40.194 rows=29997 loops=1)
                                                                                 Buffers: shared hit=81 read=241
                                                                           ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=24 width=21) (actual time=754.462..1572.445 rows=3 loops=1)
                                                                                 Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
                                                                                 Rows Removed by Filter: 390794
                                                                                 Buffers: shared hit=384796 read=6897
                                                                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=23.162..361.776 rows=33546 loops=1)
                                                                           Filter: (note IS NULL)
                                                                           Rows Removed by Filter: 34729
                                                                           Buffers: shared hit=30136 read=674
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.108..0.108 rows=1 loops=1)
                                                               Sort Key: ct.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.074..0.076 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'production companies'::text)
                                                                     Buffers: shared hit=1 read=1
                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.022..0.042 rows=1 loops=1)
                                                   Filter: ((link)::text ~~ '%follows%'::text)
                                                   Rows Removed by Filter: 17
                                                   Buffers: shared hit=2
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.032..215.723 rows=69497 loops=1)
                                       Buffers: shared hit=261 read=567
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=31.541..31.541 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.506..31.509 rows=1 loops=1)
                                 Index Cond: (keyword = 'sequel'::text)
                                 Buffers: shared read=4
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=44.159..439.835 rows=14125 loops=1)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 59500
               Buffers: shared hit=72278 read=1541
 Planning Time: 3309.846 ms
 Execution Time: 2787.055 ms
(79 rows)

