                                                                                                           QUERY PLAN                                                                                                           
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=10164.54..10164.54 rows=1 width=96) (actual time=2007.412..2007.412 rows=1 loops=1)
   Buffers: shared hit=294387 read=6718
   ->  Merge Join  (cost=5527.04..10164.54 rows=1 width=48) (actual time=1601.497..1983.750 rows=310 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=294387 read=6718
         ->  Sort  (cost=5527.03..5527.03 rows=1 width=33) (actual time=1561.144..1561.269 rows=664 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 76kB
               Buffers: shared hit=222107 read=5177
               ->  Merge Join  (cost=5526.39..5527.03 rows=1 width=33) (actual time=1559.805..1560.523 rows=664 loops=1)
                     Merge Cond: (mk.keyword_id = k.id)
                     Buffers: shared hit=222103 read=5177
                     ->  Sort  (cost=5520.26..5520.58 rows=4106 width=37) (actual time=1511.879..1513.250 rows=5831 loops=1)
                           Sort Key: mk.keyword_id
                           Sort Method: quicksort  Memory: 3335kB
                           Buffers: shared hit=222103 read=5173
                           ->  Merge Join  (cost=4657.89..5512.60 rows=4106 width=37) (actual time=1308.188..1496.570 rows=32130 loops=1)
                                 Merge Cond: (ml.movie_id = mk.movie_id)
                                 Buffers: shared hit=222103 read=5173
                                 ->  Sort  (cost=4657.87..4657.90 rows=330 width=45) (actual time=1308.101..1308.428 rows=2794 loops=1)
                                       Sort Key: mc.movie_id
                                       Sort Method: quicksort  Memory: 345kB
                                       Buffers: shared hit=221384 read=4505
                                       ->  Merge Join  (cost=4657.22..4657.45 rows=330 width=45) (actual time=1302.768..1305.423 rows=2794 loops=1)
                                             Merge Cond: (mc.company_type_id = ct.id)
                                             Buffers: shared hit=221384 read=4505
                                             ->  Sort  (cost=4651.09..4651.20 rows=1321 width=49) (actual time=1302.370..1302.864 rows=3313 loops=1)
                                                   Sort Key: mc.company_type_id
                                                   Sort Method: quicksort  Memory: 445kB
                                                   Buffers: shared hit=221383 read=4504
                                                   ->  Merge Join  (cost=2044.00..4648.97 rows=1321 width=49) (actual time=998.957..1300.534 rows=3313 loops=1)
                                                         Merge Cond: (mc.movie_id = ml.movie_id)
                                                         Buffers: shared hit=221383 read=4504
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=23.697..338.919 rows=41497 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 42261
                                                               Buffers: shared hit=38095 read=824
                                                         ->  Sort  (cost=2043.99..2044.04 rows=600 width=37) (actual time=949.791..950.144 rows=3472 loops=1)
                                                               Sort Key: ml.movie_id
                                                               Sort Method: quicksort  Memory: 168kB
                                                               Buffers: shared hit=183288 read=3680
                                                               ->  Merge Join  (cost=2032.23..2043.13 rows=600 width=37) (actual time=946.723..948.270 rows=1332 loops=1)
                                                                     Merge Cond: (ml.link_type_id = lt.id)
                                                                     Buffers: shared hit=183288 read=3680
                                                                     ->  Sort  (cost=2032.22..2033.06 rows=10804 width=29) (actual time=946.685..946.954 rows=1333 loops=1)
                                                                           Sort Key: ml.link_type_id
                                                                           Sort Method: quicksort  Memory: 1529kB
                                                                           Buffers: shared hit=183286 read=3680
                                                                           ->  Merge Join  (cost=0.02..2009.74 rows=10804 width=29) (actual time=238.437..928.957 rows=13627 loops=1)
                                                                                 Merge Cond: (ml.movie_id = t.id)
                                                                                 Buffers: shared hit=183286 read=3680
                                                                                 ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.034..8.332 rows=29997 loops=1)
                                                                                       Buffers: shared hit=81 read=241
                                                                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.048..907.632 rows=59833 loops=1)
                                                                                       Filter: ((production_year >= 1950) AND (production_year <= 2000))
                                                                                       Rows Removed by Filter: 126370
                                                                                       Buffers: shared hit=183205 read=3439
                                                                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.029..0.060 rows=2 loops=1)
                                                                           Filter: ((link)::text ~~ '%follow%'::text)
                                                                           Rows Removed by Filter: 16
                                                                           Buffers: shared hit=2
                                             ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.057..0.057 rows=1 loops=1)
                                                   Sort Key: ct.id
                                                   Sort Method: quicksort  Memory: 25kB
                                                   Buffers: shared hit=1 read=1
                                                   ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.040..0.042 rows=1 loops=1)
                                                         Index Cond: ((kind)::text = 'production companies'::text)
                                                         Buffers: shared hit=1 read=1
                                 ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.023..153.484 rows=111392 loops=1)
                                       Buffers: shared hit=719 read=668
                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=44.648..44.648 rows=1 loops=1)
                           Sort Key: k.id
                           Sort Method: quicksort  Memory: 25kB
                           Buffers: shared read=4
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=44.631..44.634 rows=1 loops=1)
                                 Index Cond: (keyword = 'sequel'::text)
                                 Buffers: shared read=4
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=39.703..420.648 rows=14127 loops=1)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 59500
               Buffers: shared hit=72280 read=1541
 Planning Time: 3219.442 ms
 Execution Time: 2037.137 ms
(83 rows)

