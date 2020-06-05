                                                                                                                                      QUERY PLAN                                                                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23611.33..23611.33 rows=1 width=96) (actual time=10886.939..10886.939 rows=1 loops=1)
   Buffers: shared hit=554723 read=17713
   ->  Merge Join  (cost=23611.33..23611.33 rows=1 width=48) (actual time=10858.535..10858.809 rows=247 loops=1)
         Merge Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=554723 read=17713
         ->  Sort  (cost=23605.19..23605.19 rows=1 width=52) (actual time=10832.038..10832.181 rows=742 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 318kB
               Buffers: shared hit=554723 read=17709
               ->  Merge Join  (cost=21893.84..23605.19 rows=1 width=52) (actual time=10826.289..10826.907 rows=1919 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=554719 read=17709
                     ->  Sort  (cost=21893.82..21893.82 rows=26 width=55) (actual time=10086.791..10087.136 rows=6483 loops=1)
                           Sort Key: mk.movie_id
                           Sort Method: quicksort  Memory: 1050kB
                           Buffers: shared hit=418755 read=14399
                           ->  Merge Join  (cost=21893.79..21893.80 rows=26 width=55) (actual time=10081.738..10084.134 rows=6483 loops=1)
                                 Merge Cond: (ct.id = mc.company_type_id)
                                 Buffers: shared hit=418755 read=14399
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.080..0.081 rows=1 loops=1)
                                       Sort Key: ct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.049..0.051 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=21887.66..21887.67 rows=102 width=59) (actual time=10081.577..10081.976 rows=6768 loops=1)
                                       Sort Key: mc.company_type_id
                                       Sort Method: quicksort  Memory: 1143kB
                                       Buffers: shared hit=418754 read=14398
                                       ->  Merge Join  (cost=17249.98..21887.56 rows=102 width=59) (actual time=9958.223..10078.599 rows=6768 loops=1)
                                             Merge Cond: (cn.id = mc.company_id)
                                             Buffers: shared hit=418754 read=14398
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=40.443..453.349 rows=14128 loops=1)
                                                   Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                   Rows Removed by Filter: 59511
                                                   Buffers: shared hit=72292 read=1541
                                             ->  Sort  (cost=17249.97..17250.00 rows=489 width=44) (actual time=9618.520..9619.656 rows=16189 loops=1)
                                                   Sort Key: mc.company_id
                                                   Sort Method: quicksort  Memory: 1649kB
                                                   Buffers: shared hit=346462 read=12857
                                                   ->  Merge Join  (cost=14644.51..17249.29 rows=489 width=44) (actual time=9426.279..9611.769 rows=16189 loops=1)
                                                         Merge Cond: (mc.movie_id = ml.movie_id)
                                                         Buffers: shared hit=346462 read=12857
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=5.824..343.928 rows=33502 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 34712
                                                               Buffers: shared hit=30102 read=674
                                                         ->  Sort  (cost=14644.50..14644.51 rows=222 width=32) (actual time=9252.579..9253.476 rows=16182 loops=1)
                                                               Sort Key: mk.movie_id
                                                               Sort Method: quicksort  Memory: 193kB
                                                               Buffers: shared hit=316360 read=12183
                                                               ->  Merge Join  (cost=14644.07..14644.23 rows=222 width=32) (actual time=9249.734..9251.267 rows=1853 loops=1)
                                                                     Merge Cond: (cc.status_id = cct2.id)
                                                                     Buffers: shared hit=316360 read=12183
                                                                     ->  Sort  (cost=14637.95..14638.02 rows=888 width=36) (actual time=9249.682..9249.905 rows=1854 loops=1)
                                                                           Sort Key: cc.status_id
                                                                           Sort Method: quicksort  Memory: 281kB
                                                                           Buffers: shared hit=316359 read=12182
                                                                           ->  Merge Join  (cost=14627.08..14636.60 rows=888 width=36) (actual time=9244.696..9247.467 rows=2366 loops=1)
                                                                                 Merge Cond: (cc.subject_id = cct1.id)
                                                                                 Buffers: shared hit=316359 read=12182
                                                                                 ->  Sort  (cost=14627.08..14627.21 rows=1775 width=40) (actual time=9244.673..9245.075 rows=2366 loops=1)
                                                                                       Sort Key: cc.subject_id
                                                                                       Sort Method: quicksort  Memory: 281kB
                                                                                       Buffers: shared hit=316357 read=12182
                                                                                       ->  Merge Join  (cost=14609.83..14624.10 rows=1775 width=40) (actual time=9241.695..9243.294 rows=2366 loops=1)
                                                                                             Merge Cond: (ml.link_type_id = lt.id)
                                                                                             Buffers: shared hit=316357 read=12182
                                                                                             ->  Sort  (cost=14609.83..14612.31 rows=31943 width=32) (actual time=9241.671..9241.908 rows=2367 loops=1)
                                                                                                   Sort Key: ml.link_type_id
                                                                                                   Sort Method: quicksort  Memory: 341kB
                                                                                                   Buffers: shared hit=316355 read=12182
                                                                                                   ->  Merge Join  (cost=5.98..14535.61 rows=31943 width=32) (actual time=1235.184..9239.215 rows=3134 loops=1)
                                                                                                         Merge Cond: (ml.movie_id = mk.movie_id)
                                                                                                         Buffers: shared hit=316355 read=12182
                                                                                                         ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.051..110.960 rows=29997 loops=1)
                                                                                                               Buffers: shared hit=81 read=241
                                                                                                         ->  Materialize  (cost=5.97..660975.89 rows=479103 width=24) (actual time=959.572..9118.373 rows=3215 loops=1)
                                                                                                               Buffers: shared hit=316274 read=11941
                                                                                                               ->  Merge Join  (cost=5.97..660938.69 rows=479103 width=24) (actual time=959.564..9117.737 rows=299 loops=1)
                                                                                                                     Merge Cond: (mk.movie_id = mi.movie_id)
                                                                                                                     Buffers: shared hit=316274 read=11941
                                                                                                                     ->  Merge Join  (cost=1.36..42961.29 rows=1369129 width=20) (actual time=19.992..437.335 rows=20774 loops=1)
                                                                                                                           Merge Cond: (cc.movie_id = mk.movie_id)
                                                                                                                           Buffers: shared hit=4808 read=941
                                                                                                                           ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.029..175.399 rows=6219 loops=1)
                                                                                                                                 Buffers: shared hit=4398 read=104
                                                                                                                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.028..225.577 rows=109551 loops=1)
                                                                                                                                 Buffers: shared hit=410 read=837
                                                                                                                     ->  Materialize  (cost=0.01..617810.81 rows=134293 width=4) (actual time=245.475..8673.058 rows=3856 loops=1)
                                                                                                                           Buffers: shared hit=311466 read=11000
                                                                                                                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..617800.38 rows=134293 width=4) (actual time=245.464..8670.855 rows=3599 loops=1)
                                                                                                                                 Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                                                                                 Rows Removed by Filter: 530358
                                                                                                                                 Buffers: shared hit=311466 read=11000
                                                                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.017..0.028 rows=2 loops=1)
                                                                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                   Rows Removed by Filter: 16
                                                                                                   Buffers: shared hit=2
                                                                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct1  (cost=0.00..9.19 rows=2 width=4) (actual time=0.016..0.019 rows=2 loops=1)
                                                                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                                       Buffers: shared hit=2
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.046..0.046 rows=1 loops=1)
                                                                           Sort Key: cct2.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct2  (cost=0.00..6.12 rows=1 width=4) (actual time=0.035..0.036 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'complete'::text)
                                                                                 Buffers: shared hit=1 read=1
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23238.35 rows=46583 width=21) (actual time=365.226..738.279 rows=3273 loops=1)
                           Filter: (production_year = 1998)
                           Rows Removed by Filter: 135662
                           Buffers: shared hit=135964 read=3310
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=26.200..26.200 rows=1 loops=1)
               Sort Key: k.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=26.184..26.187 rows=1 loops=1)
                     Index Cond: (keyword = 'sequel'::text)
                     Buffers: shared read=4
 Planning Time: 10977.487 ms
 Execution Time: 10905.621 ms
(123 rows)

