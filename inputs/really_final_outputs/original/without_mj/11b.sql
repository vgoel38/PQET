                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.05..129.05 rows=1 width=96) (actual time=2475.520..2475.521 rows=1 loops=1)
   Buffers: shared hit=22921 read=5785
   ->  Nested Loop  (cost=0.08..129.05 rows=1 width=48) (actual time=1073.195..2475.470 rows=14 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=22921 read=5785
         ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=484.068..2259.174 rows=102 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 1
               Buffers: shared hit=22529 read=5769
               ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=483.921..2258.452 rows=103 loops=1)
                     Buffers: shared hit=22427 read=5768
                     ->  Nested Loop  (cost=0.05..128.96 rows=1 width=32) (actual time=107.309..1780.052 rows=288 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=21342 read=5701
                           ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=68.201..1553.919 rows=64 loops=1)
                                 Join Filter: (ml.link_type_id = lt.id)
                                 Rows Removed by Join Filter: 187
                                 Buffers: shared hit=21080 read=5651
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.131..0.152 rows=1 loops=1)
                                       Filter: ((link)::text ~~ '%follows%'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared read=1
                                 ->  Nested Loop  (cost=0.04..128.89 rows=2 width=12) (actual time=68.055..1553.585 rows=251 loops=1)
                                       Buffers: shared hit=21080 read=5650
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.592..1410.696 rows=10544 loops=1)
                                             Buffers: shared read=5606
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=23.206..23.209 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=44.376..1381.513 rows=10544 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared read=5602
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.012..0.012 rows=0 loops=10544)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=21080 read=44
                           ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=3.404..3.526 rows=4 loops=64)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=262 read=50
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=1.659..1.659 rows=0 loops=288)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1085 read=67
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=103)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=102 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.119..2.119 rows=0 loops=102)
               Index Cond: (id = mk.movie_id)
               Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
               Rows Removed by Filter: 1
               Buffers: shared hit=392 read=16
 Planning Time: 3011.249 ms
 Execution Time: 2487.911 ms
(56 rows)

