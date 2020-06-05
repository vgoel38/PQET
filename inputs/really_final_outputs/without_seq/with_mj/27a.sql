                                                                                                                                      QUERY PLAN                                                                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23630.83..23630.83 rows=1 width=96) (actual time=11095.666..11095.666 rows=1 loops=1)
   Buffers: shared hit=554723 read=17713
   ->  Merge Join  (cost=23630.83..23630.83 rows=1 width=48) (actual time=11067.412..11067.932 rows=477 loops=1)
         Merge Cond: (mk.keyword_id = k.id)
         Buffers: shared hit=554723 read=17713
         ->  Sort  (cost=23624.70..23624.70 rows=9 width=52) (actual time=11039.819..11040.188 rows=1884 loops=1)
               Sort Key: mk.keyword_id
               Sort Method: quicksort  Memory: 1051kB
               Buffers: shared hit=554723 read=17709
               ->  Merge Join  (cost=21893.84..23624.69 rows=9 width=52) (actual time=10951.429..11033.162 rows=6483 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=554719 read=17709
                     ->  Sort  (cost=21893.82..21893.82 rows=26 width=55) (actual time=10286.446..10286.793 rows=6483 loops=1)
                           Sort Key: mk.movie_id
                           Sort Method: quicksort  Memory: 1050kB
                           Buffers: shared hit=418755 read=14399
                           ->  Merge Join  (cost=21893.79..21893.80 rows=26 width=55) (actual time=10281.545..10283.890 rows=6483 loops=1)
                                 Merge Cond: (ct.id = mc.company_type_id)
                                 Buffers: shared hit=418755 read=14399
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.082..0.082 rows=1 loops=1)
                                       Sort Key: ct.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared hit=1 read=1
                                       ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.050..0.051 rows=1 loops=1)
                                             Index Cond: ((kind)::text = 'production companies'::text)
                                             Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=21887.66..21887.67 rows=102 width=59) (actual time=10281.382..10281.780 rows=6768 loops=1)
                                       Sort Key: mc.company_type_id
                                       Sort Method: quicksort  Memory: 1143kB
                                       Buffers: shared hit=418754 read=14398
                                       ->  Merge Join  (cost=17249.98..21887.56 rows=102 width=59) (actual time=10166.192..10278.416 rows=6768 loops=1)
                                             Merge Cond: (cn.id = mc.company_id)
                                             Buffers: shared hit=418754 read=14398
                                             ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=40.365..432.491 rows=14128 loops=1)
                                                   Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                                   Rows Removed by Filter: 59511
                                                   Buffers: shared hit=72292 read=1541
                                             ->  Sort  (cost=17249.97..17250.00 rows=489 width=44) (actual time=9839.305..9840.437 rows=16189 loops=1)
                                                   Sort Key: mc.company_id
                                                   Sort Method: quicksort  Memory: 1649kB
                                                   Buffers: shared hit=346462 read=12857
                                                   ->  Merge Join  (cost=14644.51..17249.29 rows=489 width=44) (actual time=9634.619..9829.815 rows=16189 loops=1)
                                                         Merge Cond: (mc.movie_id = ml.movie_id)
                                                         Buffers: shared hit=346462 read=12857
                                                         ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=5.815..357.794 rows=33502 loops=1)
                                                               Filter: (note IS NULL)
                                                               Rows Removed by Filter: 34712
                                                               Buffers: shared hit=30102 read=674
                                                         ->  Sort  (cost=14644.50..14644.51 rows=222 width=32) (actual time=9454.589..9455.818 rows=16182 loops=1)
                                                               Sort Key: mk.movie_id
                                                               Sort Method: quicksort  Memory: 193kB
                                                               Buffers: shared hit=316360 read=12183
                                                               ->  Merge Join  (cost=14644.07..14644.23 rows=222 width=32) (actual time=9453.476..9454.052 rows=1853 loops=1)
                                                                     Merge Cond: (cc.status_id = cct.id)
                                                                     Buffers: shared hit=316360 read=12183
                                                                     ->  Sort  (cost=14637.95..14638.02 rows=888 width=36) (actual time=9453.439..9453.523 rows=1854 loops=1)
                                                                           Sort Key: cc.status_id
                                                                           Sort Method: quicksort  Memory: 281kB
                                                                           Buffers: shared hit=316359 read=12182
                                                                           ->  Merge Join  (cost=14627.08..14636.60 rows=888 width=36) (actual time=9451.580..9452.573 rows=2366 loops=1)
                                                                                 Merge Cond: (cc.subject_id = cct.id)
                                                                                 Buffers: shared hit=316359 read=12182
                                                                                 ->  Sort  (cost=14627.08..14627.21 rows=1775 width=40) (actual time=9451.562..9451.706 rows=2366 loops=1)
                                                                                       Sort Key: cc.subject_id
                                                                                       Sort Method: quicksort  Memory: 281kB
                                                                                       Buffers: shared hit=316357 read=12182
                                                                                       ->  Merge Join  (cost=14609.83..14624.10 rows=1775 width=40) (actual time=9449.504..9450.593 rows=2366 loops=1)
                                                                                             Merge Cond: (ml.link_type_id = lt.id)
                                                                                             Buffers: shared hit=316357 read=12182
                                                                                             ->  Sort  (cost=14609.83..14612.31 rows=31943 width=32) (actual time=9449.481..9449.649 rows=2367 loops=1)
                                                                                                   Sort Key: ml.link_type_id
                                                                                                   Sort Method: quicksort  Memory: 341kB
                                                                                                   Buffers: shared hit=316355 read=12182
                                                                                                   ->  Merge Join  (cost=5.98..14535.61 rows=31943 width=32) (actual time=1307.139..9447.229 rows=3134 loops=1)
                                                                                                         Merge Cond: (ml.movie_id = mk.movie_id)
                                                                                                         Buffers: shared hit=316355 read=12182
                                                                                                         ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.040..89.597 rows=29997 loops=1)
                                                                                                               Buffers: shared hit=81 read=241
                                                                                                         ->  Materialize  (cost=5.97..660975.89 rows=479103 width=24) (actual time=1035.244..9346.388 rows=3215 loops=1)
                                                                                                               Buffers: shared hit=316274 read=11941
                                                                                                               ->  Merge Join  (cost=5.97..660938.69 rows=479103 width=24) (actual time=1035.235..9345.773 rows=299 loops=1)
                                                                                                                     Merge Cond: (mk.movie_id = mi.movie_id)
                                                                                                                     Buffers: shared hit=316274 read=11941
                                                                                                                     ->  Merge Join  (cost=1.36..42961.29 rows=1369129 width=20) (actual time=19.981..391.859 rows=20774 loops=1)
                                                                                                                           Merge Cond: (cc.movie_id = mk.movie_id)
                                                                                                                           Buffers: shared hit=4808 read=941
                                                                                                                           ->  Index Scan using complete_cast_idx_mid on complete_cast cc  (cost=0.01..3283.51 rows=135086 width=12) (actual time=0.029..159.965 rows=6219 loops=1)
                                                                                                                                 Buffers: shared hit=4398 read=104
                                                                                                                           ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.028..195.096 rows=109551 loops=1)
                                                                                                                                 Buffers: shared hit=410 read=837
                                                                                                                     ->  Materialize  (cost=0.01..617810.81 rows=134293 width=4) (actual time=253.816..8947.018 rows=3856 loops=1)
                                                                                                                           Buffers: shared hit=311466 read=11000
                                                                                                                           ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..617800.38 rows=134293 width=4) (actual time=253.804..8944.795 rows=3599 loops=1)
                                                                                                                                 Filter: (info = ANY ('{Sweden,Germany,Swedish,German}'::text[]))
                                                                                                                                 Rows Removed by Filter: 530358
                                                                                                                                 Buffers: shared hit=311466 read=11000
                                                                                             ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.016..0.025 rows=2 loops=1)
                                                                                                   Filter: ((link)::text ~~ '%follow%'::text)
                                                                                                   Rows Removed by Filter: 16
                                                                                                   Buffers: shared hit=2
                                                                                 ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..9.19 rows=2 width=4) (actual time=0.011..0.013 rows=2 loops=1)
                                                                                       Filter: ((kind)::text = ANY ('{cast,crew}'::text[]))
                                                                                       Buffers: shared hit=2
                                                                     ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1)
                                                                           Sort Key: cct.id
                                                                           Sort Method: quicksort  Memory: 25kB
                                                                           Buffers: shared hit=1 read=1
                                                                           ->  Index Scan using comp_cast_type_kind_key on comp_cast_type cct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.024..0.025 rows=1 loops=1)
                                                                                 Index Cond: ((kind)::text = 'complete'::text)
                                                                                 Buffers: shared hit=1 read=1
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=910581 width=21) (actual time=0.018..739.979 rows=44153 loops=1)
                           Filter: ((production_year >= 1950) AND (production_year <= 2000))
                           Rows Removed by Filter: 94782
                           Buffers: shared hit=135964 read=3310
         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=26.749..26.750 rows=1 loops=1)
               Sort Key: k.id
               Sort Method: quicksort  Memory: 25kB
               Buffers: shared read=4
               ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=26.735..26.738 rows=1 loops=1)
                     Index Cond: (keyword = 'sequel'::text)
                     Buffers: shared read=4
 Planning Time: 11256.627 ms
 Execution Time: 11118.531 ms
(123 rows)

