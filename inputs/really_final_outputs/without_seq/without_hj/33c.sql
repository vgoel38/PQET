                                                                                                                  QUERY PLAN                                                                                                                   
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=917.92..917.92 rows=1 width=192) (actual time=15256.577..15256.578 rows=1 loops=1)
   Buffers: shared hit=64271 read=2507
   ->  Nested Loop  (cost=0.14..917.92 rows=1 width=84) (actual time=2258.169..15256.133 rows=114 loops=1)
         Buffers: shared hit=64271 read=2507
         ->  Nested Loop  (cost=0.13..917.92 rows=2 width=88) (actual time=1614.686..15255.076 rows=133 loops=1)
               Join Filter: (ml.linked_movie_id = t.id)
               Buffers: shared hit=64005 read=2507
               ->  Nested Loop  (cost=0.12..917.59 rows=5 width=79) (actual time=1566.056..14544.000 rows=218 loops=1)
                     Buffers: shared hit=63178 read=2462
                     ->  Nested Loop  (cost=0.11..917.42 rows=10 width=64) (actual time=1518.643..13942.209 rows=293 loops=1)
                           Buffers: shared hit=62081 read=2387
                           ->  Nested Loop  (cost=0.09..916.96 rows=10 width=72) (actual time=1487.391..13669.189 rows=84 loops=1)
                                 Buffers: shared hit=61714 read=2337
                                 ->  Nested Loop  (cost=0.08..916.79 rows=10 width=57) (actual time=1447.276..12877.480 rows=84 loops=1)
                                       Join Filter: (ml.linked_movie_id = mc.movie_id)
                                       Buffers: shared hit=61446 read=2269
                                       ->  Nested Loop  (cost=0.07..916.66 rows=1 width=49) (actual time=1413.600..12130.787 rows=41 loops=1)
                                             Join Filter: (it.id = mi_idx.info_type_id)
                                             Rows Removed by Join Filter: 2863
                                             Buffers: shared hit=61337 read=2197
                                             ->  Nested Loop  (cost=0.05..868.66 rows=38 width=43) (actual time=21.381..4199.615 rows=2064 loops=1)
                                                   Buffers: shared hit=53936 read=1382
                                                   ->  Nested Loop  (cost=0.05..868.08 rows=133 width=47) (actual time=21.334..4183.490 rows=2064 loops=1)
                                                         Join Filter: (ml.movie_id = t.id)
                                                         Buffers: shared hit=49808 read=1382
                                                         ->  Nested Loop  (cost=0.04..853.60 rows=133 width=22) (actual time=0.688..353.266 rows=2064 loops=1)
                                                               Buffers: shared hit=42187 read=745
                                                               ->  Merge Join  (cost=0.03..849.73 rows=796 width=26) (actual time=0.148..263.241 rows=20890 loops=1)
                                                                     Merge Cond: (mi_idx.movie_id = ml.movie_id)
                                                                     Buffers: shared hit=407 read=745
                                                                     ->  Nested Loop  (cost=0.02..12352.96 rows=12213 width=14) (actual time=0.109..193.838 rows=21301 loops=1)
                                                                           Join Filter: (mi_idx.info_type_id = it.id)
                                                                           Rows Removed by Join Filter: 42602
                                                                           Buffers: shared hit=324 read=506
                                                                           ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..12031.00 rows=1380035 width=14) (actual time=0.025..116.770 rows=63903 loops=1)
                                                                                 Buffers: shared hit=321 read=505
                                                                           ->  Materialize  (cost=0.01..12.25 rows=1 width=8) (actual time=0.000..0.000 rows=1 loops=63903)
                                                                                 Buffers: shared hit=3 read=1
                                                                                 ->  Nested Loop  (cost=0.01..12.25 rows=1 width=8) (actual time=0.057..0.060 rows=1 loops=1)
                                                                                       Buffers: shared hit=3 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.039..0.040 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'rating'::text)
                                                                                             Buffers: shared hit=1 read=1
                                                                                       ->  Index Scan using info_type_info_key on info_type it  (cost=0.00..6.13 rows=1 width=4) (actual time=0.013..0.014 rows=1 loops=1)
                                                                                             Index Cond: ((info)::text = 'rating'::text)
                                                                                             Buffers: shared hit=2
                                                                     ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..275.80 rows=29997 width=12) (actual time=0.031..39.333 rows=29997 loops=1)
                                                                           Buffers: shared hit=83 read=239
                                                               ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.003..0.003 rows=0 loops=20890)
                                                                     Index Cond: (id = ml.link_type_id)
                                                                     Filter: ((link)::text = ANY ('{sequel,follows,"followed by"}'::text[]))
                                                                     Rows Removed by Filter: 1
                                                                     Buffers: shared hit=41780
                                                         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.11 rows=1 width=25) (actual time=1.853..1.853 rows=1 loops=2064)
                                                               Index Cond: (id = mi_idx.movie_id)
                                                               Buffers: shared hit=7621 read=637
                                                   ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=2064)
                                                         Index Cond: (id = t.kind_id)
                                                         Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
                                                         Buffers: shared hit=4128
                                             ->  Index Scan using movie_id_movie_info_idx on movie_info_idx mi_idx  (cost=0.01..1.26 rows=2 width=14) (actual time=3.827..3.840 rows=1 loops=2064)
                                                   Index Cond: (movie_id = ml.linked_movie_id)
                                                   Filter: (info < '3.5'::text)
                                                   Rows Removed by Filter: 1
                                                   Buffers: shared hit=7401 read=815
                                       ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.13 rows=2 width=8) (actual time=16.845..18.204 rows=2 loops=41)
                                             Index Cond: (movie_id = mi_idx.movie_id)
                                             Buffers: shared hit=109 read=72
                                 ->  Index Scan using company_name_pkey on company_name cn2  (cost=0.01..0.02 rows=1 width=23) (actual time=9.419..9.419 rows=1 loops=84)
                                       Index Cond: (id = mc.company_id)
                                       Buffers: shared hit=268 read=68
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.05 rows=2 width=8) (actual time=2.274..3.242 rows=3 loops=84)
                                 Index Cond: (movie_id = t.id)
                                 Buffers: shared hit=367 read=50
                     ->  Index Scan using company_name_pkey on company_name cn1  (cost=0.01..0.02 rows=1 width=23) (actual time=2.051..2.051 rows=1 loops=293)
                           Index Cond: (id = mc.company_id)
                           Filter: ((country_code)::text <> '[us]'::text)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=1097 read=75
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.06 rows=1 width=25) (actual time=3.259..3.259 rows=1 loops=218)
                     Index Cond: (id = mc.movie_id)
                     Filter: ((production_year >= 2000) AND (production_year <= 2010))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=827 read=45
         ->  Index Scan using kind_type_pkey on kind_type kt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.006..0.006 rows=1 loops=133)
               Index Cond: (id = t.kind_id)
               Filter: ((kind)::text = ANY ('{"tv series",episode}'::text[]))
               Rows Removed by Filter: 0
               Buffers: shared hit=266
 Planning Time: 6195.307 ms
 Execution Time: 15349.236 ms
(91 rows)

