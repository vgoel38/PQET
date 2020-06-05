                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.00..129.00 rows=1 width=96) (actual time=3025.362..3025.362 rows=1 loops=1)
   Buffers: shared hit=23540 read=5770
   ->  Nested Loop  (cost=0.08..129.00 rows=1 width=48) (actual time=1756.456..3025.267 rows=14 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=23540 read=5770
         ->  Nested Loop  (cost=0.07..128.96 rows=1 width=43) (actual time=333.915..2800.612 rows=102 loops=1)
               Buffers: shared hit=23146 read=5756
               ->  Nested Loop  (cost=0.07..128.95 rows=1 width=47) (actual time=333.874..2799.814 rows=103 loops=1)
                     Buffers: shared hit=22940 read=5756
                     ->  Nested Loop  (cost=0.05..128.93 rows=1 width=32) (actual time=65.583..1808.581 rows=288 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=21852 read=5692
                           ->  Nested Loop  (cost=0.04..128.90 rows=1 width=20) (actual time=55.177..1460.484 rows=64 loops=1)
                                 Buffers: shared hit=21588 read=5644
                                 ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=55.124..1458.689 rows=251 loops=1)
                                       Buffers: shared hit=21086 read=5644
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=55.088..1276.059 rows=10544 loops=1)
                                             Buffers: shared hit=2 read=5604
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.629..31.630 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=23.414..1238.634 rows=10544 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=2 read=5600
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.014..0.016 rows=0 loops=10544)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=21084 read=40
                                 ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.005..0.005 rows=0 loops=251)
                                       Index Cond: (id = ml.link_type_id)
                                       Filter: ((link)::text ~~ '%follows%'::text)
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=502
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=2.194..5.432 rows=4 loops=64)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=264 read=48
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=3.439..3.439 rows=0 loops=288)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1088 read=64
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.005..0.005 rows=1 loops=103)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 0
                     Buffers: shared hit=206
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.201..2.201 rows=0 loops=102)
               Index Cond: (id = mk.movie_id)
               Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
               Rows Removed by Filter: 1
               Buffers: shared hit=394 read=14
 Planning Time: 3397.644 ms
 Execution Time: 3059.662 ms
(54 rows)

