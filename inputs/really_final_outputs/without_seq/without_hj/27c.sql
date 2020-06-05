                                                                                                          QUERY PLAN                                                                                                          
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.19..129.19 rows=1 width=96) (actual time=2194.764..2194.764 rows=1 loops=1)
   Buffers: shared hit=37520 read=5753
   ->  Nested Loop  (cost=0.12..129.19 rows=1 width=48) (actual time=320.117..2181.176 rows=743 loops=1)
         Buffers: shared hit=37520 read=5753
         ->  Nested Loop  (cost=0.11..129.18 rows=1 width=52) (actual time=320.069..2177.289 rows=1028 loops=1)
               Join Filter: (ml.movie_id = t.id)
               Buffers: shared hit=35464 read=5753
               ->  Nested Loop  (cost=0.10..129.14 rows=1 width=55) (actual time=286.234..2090.623 rows=1028 loops=1)
                     Buffers: shared hit=31359 read=5746
                     ->  Nested Loop  (cost=0.10..129.13 rows=2 width=59) (actual time=286.191..2086.533 rows=1028 loops=1)
                           Join Filter: (ml.movie_id = mi.movie_id)
                           Buffers: shared hit=29303 read=5746
                           ->  Nested Loop  (cost=0.08..128.98 rows=1 width=55) (actual time=227.887..1834.691 rows=229 loops=1)
                                 Buffers: shared hit=26052 read=5720
                                 ->  Nested Loop  (cost=0.07..128.95 rows=1 width=40) (actual time=77.314..1547.914 rows=552 loops=1)
                                       Buffers: shared hit=23877 read=5687
                                       ->  Nested Loop  (cost=0.07..128.95 rows=2 width=44) (actual time=77.280..1545.374 rows=581 loops=1)
                                             Join Filter: (ml.movie_id = mc.movie_id)
                                             Buffers: shared hit=22715 read=5687
                                             ->  Nested Loop  (cost=0.05..128.91 rows=1 width=32) (actual time=51.096..1408.562 rows=98 loops=1)
                                                   Join Filter: (ml.movie_id = cc.movie_id)
                                                   Buffers: shared hit=22264 read=5663
                                                   ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=49.152..1334.404 rows=199 loops=1)
                                                         Buffers: shared hit=21588 read=5644
                                                         ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=49.130..1332.953 rows=251 loops=1)
                                                               Buffers: shared hit=21086 read=5644
                                                               ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=49.095..1253.041 rows=10544 loops=1)
                                                                     Buffers: shared hit=2 read=5604
                                                                     ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=25.785..25.788 rows=1 loops=1)
                                                                           Index Cond: (keyword = 'sequel'::text)
                                                                           Buffers: shared read=4
                                                                     ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.300..1221.578 rows=10544 loops=1)
                                                                           Index Cond: (keyword_id = k.id)
                                                                           Buffers: shared hit=2 read=5600
                                                               ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.006..0.006 rows=0 loops=10544)
                                                                     Index Cond: (movie_id = mk.movie_id)
                                                                     Buffers: shared hit=21084 read=40
                                                         ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.004..0.004 rows=1 loops=251)
                                                               Index Cond: (id = ml.link_type_id)
                                                               Filter: ((link)::text ~~ '%follow%'::text)
                                                               Rows Removed by Filter: 0
                                                               Buffers: shared hit=502
                                                   ->  Index Scan using movie_id_complete_cast on complete_cast cc  (cost=0.01..0.01 rows=1 width=12) (actual time=0.241..0.371 rows=0 loops=199)
                                                         Index Cond: (movie_id = mk.movie_id)
                                                         Buffers: shared hit=676 read=19
                                             ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=1.356..1.391 rows=6 loops=98)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Filter: (note IS NULL)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=451 read=24
                                       ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=581)
                                             Index Cond: (id = mc.company_type_id)
                                             Filter: ((kind)::text = 'production companies'::text)
                                             Rows Removed by Filter: 0
                                             Buffers: shared hit=1162
                                 ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.518..0.518 rows=0 loops=552)
                                       Index Cond: (id = mc.company_id)
                                       Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=2175 read=33
                           ->  Index Scan using movie_id_movie_info on movie_info mi  (cost=0.01..0.16 rows=1 width=4) (actual time=0.806..1.096 rows=4 loops=229)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (info = ANY ('{Sweden,Norway,Germany,Denmark,Swedish,Denish,Norwegian,German,English}'::text[]))
                                 Rows Removed by Filter: 14
                                 Buffers: shared hit=3251 read=26
                     ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=1028)
                           Index Cond: (id = cc.status_id)
                           Filter: ((kind)::text ~~ 'complete%'::text)
                           Buffers: shared hit=2056
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.083..0.083 rows=1 loops=1028)
                     Index Cond: (id = mk.movie_id)
                     Filter: ((production_year >= 1950) AND (production_year <= 2010))
                     Buffers: shared hit=4105 read=7
         ->  Index Scan using comp_cast_type_pkey on comp_cast_type cct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=1028)
               Index Cond: (id = cc.subject_id)
               Filter: ((kind)::text = 'cast'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=2056
 Planning Time: 11600.369 ms
 Execution Time: 2209.371 ms
(80 rows)

