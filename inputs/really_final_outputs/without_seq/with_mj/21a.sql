                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23588.99..23588.99 rows=1 width=96) (actual time=10043.835..10043.835 rows=1 loops=1)
   Buffers: shared hit=540744 read=17156
   ->  Merge Join  (cost=18951.49..23588.99 rows=1 width=48) (actual time=9913.046..10019.619 rows=1410 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=540744 read=17156
         ->  Sort  (cost=18951.48..18951.48 rows=1 width=33) (actual time=9597.699..9597.964 rows=3029 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 333kB
               Buffers: shared hit=468464 read=15615
               ->  Merge Join  (cost=17220.63..18951.48 rows=1 width=33) (actual time=9509.744..9592.291 rows=3029 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=468460 read=15615
                     ->  Sort  (cost=17220.62..17220.62 rows=1 width=32) (actual time=8830.456..8830.685 rows=4198 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 520kB
                           Buffers: shared hit=332496 read=12305
                           ->  Merge Join  (cost=17220.61..17220.61 rows=1 width=32) (actual time=8826.003..8828.353 rows=4198 loops=1)
                                 Merge Cond: (mc.company_type_id = ct.id)
                                 Buffers: shared hit=332496 read=12305
                                 ->  Sort  (cost=17214.49..17214.49 rows=1 width=36) (actual time=8825.911..8826.276 rows=4365 loops=1)
                                       Sort Key: mc.company_type_id
                                       Sort Method: quicksort  Memory: 534kB
                                       Buffers: shared hit=332495 read=12304
                                       ->  Merge Join  (cost=14609.82..17214.49 rows=1 width=36) (actual time=8633.486..8823.552 rows=4365 loops=1)
                                             Merge Cond: (mc.movie_id = ml.movie_id)
                                             Buffers: shared hit=332495 read=12304
                                             ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=21.323..357.999 rows=33502 loops=1)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 34712
                                                   Buffers: shared hit=30102 read=674
                                             ->  Sort  (cost=14609.81..14609.81 rows=1 width=24) (actual time=8452.760..8453.185 rows=4358 loops=1)
                                                   Sort Key: mk.movie_id
                                                   Sort Method: quicksort  Memory: 78kB
                                                   Buffers: shared hit=302393 read=11630
                                                   ->  Merge Join  (cost=14609.09..14609.81 rows=1 width=24) (actual time=8451.446..8452.167 rows=684 loops=1)
                                                         Merge Cond: (mk.keyword_id = k.id)
                                                         Buffers: shared hit=302393 read=11630
                                                         ->  Sort  (cost=14602.96..14603.31 rows=4615 width=28) (actual time=8410.691..8411.562 rows=4295 loops=1)
                                                               Sort Key: mk.keyword_id
                                                               Sort Method: quicksort  Memory: 1598kB
                                                               Buffers: shared hit=302393 read=11626
                                                               ->  Merge Join  (cost=365.85..14594.23 rows=4615 width=28) (actual time=441.583..8399.468 rows=15532 loops=1)
                                                                     Merge Cond: (mk.movie_id = ml.movie_id)
                                                                     Buffers: shared hit=302393 read=11626
                                                                     ->  Merge Join  (cost=4.04..659842.80 rows=1820285 width=12) (actual time=284.329..8296.782 rows=5464 loops=1)
                                                                           Merge Cond: (mi.movie_id = mk.movie_id)
                                                                           Buffers: shared hit=302310 read=11385
                                                                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..620104.07 rows=154416 width=4) (actual time=232.229..8167.769 rows=4118 loops=1)
                                                                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German}'::text[]))
                                                                                 Rows Removed by Filter: 510788
                                                                                 Buffers: shared hit=301972 read=10587
                                                                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.039..98.666 rows=99959 loops=1)
                                                                                 Buffers: shared hit=338 read=798
                                                                     ->  Sort  (cost=361.81..361.94 rows=1666 width=16) (actual time=90.595..92.893 rows=17060 loops=1)
                                                                           Sort Key: ml.movie_id
                                                                           Sort Method: quicksort  Memory: 205kB
                                                                           Buffers: shared hit=83 read=241
                                                                           ->  Merge Join  (cost=345.08..359.04 rows=1666 width=16) (actual time=86.912..88.673 rows=2315 loops=1)
                                                                                 Merge Cond: (lt.id = ml.link_type_id)
                                                                                 Buffers: shared hit=83 read=241
                                                                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.014..0.038 rows=2 loops=1)
                                                                                       Filter: ((link)::text ~~ '%follow%'::text)
                                                                                       Rows Removed by Filter: 16
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=345.08..347.41 rows=29997 width=8) (actual time=86.884..87.268 rows=2316 loops=1)
                                                                                       Sort Key: ml.link_type_id
                                                                                       Sort Method: quicksort  Memory: 2175kB
                                                                                       Buffers: shared hit=81 read=241
                                                                                       ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.019..71.660 rows=29997 loops=1)
                                                                                             Buffers: shared hit=81 read=241
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=38.327..38.328 rows=1 loops=1)
                                                               Sort Key: k.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared read=4
                                                               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.305..38.309 rows=1 loops=1)
                                                                     Index Cond: (keyword = 'sequel'::text)
                                                                     Buffers: shared read=4
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.038..0.038 rows=1 loops=1)
                                       Sort Key: ct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.028..0.028 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.022..755.816 rows=44153 loops=1)
                           Filter: ((production_year >= 1950) AND (production_year <= 2000))
                           Rows Removed by Filter: 94782
                           Buffers: shared hit=135964 read=3310
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=38.632..419.328 rows=14127 loops=1)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 59500
               Buffers: shared hit=72280 read=1541
 Planning Time: 5577.730 ms
 Execution Time: 10062.561 ms
(94 rows)

