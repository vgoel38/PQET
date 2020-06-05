                                                                                                              QUERY PLAN                                                                                                               
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=23703.70..23703.70 rows=1 width=96) (actual time=9429.413..9429.413 rows=1 loops=1)
   Buffers: shared hit=536993 read=16167
   ->  Merge Join  (cost=19066.21..23703.70 rows=1 width=48) (actual time=9011.587..9405.236 rows=1874 loops=1)
         Merge Cond: (mc.company_id = cn.id)
         Buffers: shared hit=536993 read=16167
         ->  Sort  (cost=19066.20..19066.20 rows=1 width=33) (actual time=8969.357..8969.796 rows=4395 loops=1)
               Sort Key: mc.company_id
               Sort Method: quicksort  Memory: 537kB
               Buffers: shared hit=464713 read=14626
               ->  Merge Join  (cost=17329.72..19066.20 rows=1 width=33) (actual time=8643.026..8963.529 rows=4395 loops=1)
                     Merge Cond: (ml.movie_id = t.id)
                     Buffers: shared hit=464709 read=14626
                     ->  Sort  (cost=17329.69..17329.69 rows=1 width=32) (actual time=8148.935..8149.213 rows=4395 loops=1)
                           Sort Key: mc.movie_id
                           Sort Method: quicksort  Memory: 536kB
                           Buffers: shared hit=305339 read=11252
                           ->  Merge Join  (cost=17327.41..17329.69 rows=1 width=32) (actual time=8141.302..8145.654 rows=4395 loops=1)
                                 Merge Cond: (mk.keyword_id = k.id)
                                 Buffers: shared hit=305339 read=11252
                                 ->  Sort  (cost=17321.28..17322.42 rows=14670 width=36) (actual time=8091.158..8095.488 rows=23870 loops=1)
                                       Sort Key: mk.keyword_id
                                       Sort Method: quicksort  Memory: 10887kB
                                       Buffers: shared hit=305339 read=11248
                                       ->  Merge Join  (cost=2985.56..17289.75 rows=14670 width=36) (actual time=648.532..8035.080 rows=100027 loops=1)
                                             Merge Cond: (mk.movie_id = ml.movie_id)
                                             Buffers: shared hit=305339 read=11248
                                             ->  Merge Join  (cost=3.34..662479.98 rows=11044249 width=12) (actual time=120.816..7530.994 rows=55032 loops=1)
                                                   Merge Cond: (mi.movie_id = mk.movie_id)
                                                   Buffers: shared hit=259418 read=10023
                                                   ->  Index Scan using movie_info_idx_mid on movie_info mi  (cost=0.01..620679.99 rows=936891 width=4) (actual time=120.753..7342.664 rows=28657 loops=1)
                                                         Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                                         Rows Removed by Filter: 414007
                                                         Buffers: shared hit=259127 read=9353
                                                   ->  Materialize  (cost=0.01..39637.03 rows=4523930 width=8) (actual time=0.054..124.911 rows=85569 loops=1)
                                                         Buffers: shared hit=291 read=670
                                                         ->  Index Scan using movie_keyword_idx_mid on movie_keyword mk  (cost=0.01..39285.80 rows=4523930 width=8) (actual time=0.040..95.022 rows=82171 loops=1)
                                                               Buffers: shared hit=291 read=670
                                             ->  Sort  (cost=2982.22..2982.29 rows=917 width=24) (actual time=439.178..448.078 rows=101304 loops=1)
                                                   Sort Key: mc.movie_id
                                                   Sort Method: quicksort  Memory: 536kB
                                                   Buffers: shared hit=45921 read=1225
                                                   ->  Merge Join  (cost=2980.18..2980.82 rows=917 width=24) (actual time=430.168..434.801 rows=4393 loops=1)
                                                         Merge Cond: (mc.company_type_id = ct.id)
                                                         Buffers: shared hit=45921 read=1225
                                                         ->  Sort  (cost=2974.06..2974.34 rows=3669 width=28) (actual time=429.665..430.534 rows=5069 loops=1)
                                                               Sort Key: mc.company_type_id
                                                               Sort Method: quicksort  Memory: 589kB
                                                               Buffers: shared hit=45920 read=1224
                                                               ->  Merge Join  (cost=361.82..2967.31 rows=3669 width=28) (actual time=73.345..427.077 rows=5069 loops=1)
                                                                     Merge Cond: (mc.movie_id = ml.movie_id)
                                                                     Buffers: shared hit=45920 read=1224
                                                                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..67925.24 rows=1271989 width=12) (actual time=8.803..346.976 rows=49142 loops=1)
                                                                           Filter: (note IS NULL)
                                                                           Rows Removed by Filter: 50735
                                                                           Buffers: shared hit=45837 read=983
                                                                     ->  Sort  (cost=361.81..361.94 rows=1666 width=16) (actual time=64.259..64.859 rows=5369 loops=1)
                                                                           Sort Key: ml.movie_id
                                                                           Sort Method: quicksort  Memory: 205kB
                                                                           Buffers: shared hit=83 read=241
                                                                           ->  Merge Join  (cost=345.08..359.04 rows=1666 width=16) (actual time=62.638..63.426 rows=2315 loops=1)
                                                                                 Merge Cond: (lt.id = ml.link_type_id)
                                                                                 Buffers: shared hit=83 read=241
                                                                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..9.19 rows=1 width=16) (actual time=0.037..0.047 rows=2 loops=1)
                                                                                       Filter: ((link)::text ~~ '%follow%'::text)
                                                                                       Rows Removed by Filter: 16
                                                                                       Buffers: shared hit=2
                                                                                 ->  Sort  (cost=345.08..347.41 rows=29997 width=8) (actual time=62.595..62.774 rows=2316 loops=1)
                                                                                       Sort Key: ml.link_type_id
                                                                                       Sort Method: quicksort  Memory: 2175kB
                                                                                       Buffers: shared hit=81 read=241
                                                                                       ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..275.80 rows=29997 width=8) (actual time=0.055..52.674 rows=29997 loops=1)
                                                                                             Buffers: shared hit=81 read=241
                                                         ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=0.058..0.058 rows=1 loops=1)
                                                               Sort Key: ct.id
                                                               Sort Method: quicksort  Memory: 25kB
                                                               Buffers: shared hit=1 read=1
                                                               ->  Index Scan using company_type_kind_key on company_type ct  (cost=0.00..6.12 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                                                     Index Cond: ((kind)::text = 'production companies'::text)
                                                                     Buffers: shared hit=1 read=1
                                 ->  Sort  (cost=6.13..6.13 rows=1 width=4) (actual time=37.573..37.573 rows=1 loops=1)
                                       Sort Key: k.id
                                       Sort Method: quicksort  Memory: 25kB
                                       Buffers: shared read=4
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=37.553..37.556 rows=1 loops=1)
                                             Index Cond: (keyword = 'sequel'::text)
                                             Buffers: shared read=4
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..23434.65 rows=1900368 width=21) (actual time=0.033..798.544 rows=126603 loops=1)
                           Filter: ((production_year >= 1950) AND (production_year <= 2010))
                           Rows Removed by Filter: 35755
                           Buffers: shared hit=159370 read=3374
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..4633.69 rows=49161 width=23) (actual time=41.998..432.966 rows=14127 loops=1)
               Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
               Rows Removed by Filter: 59500
               Buffers: shared hit=72280 read=1541
 Planning Time: 5554.273 ms
 Execution Time: 9447.474 ms
(96 rows)

