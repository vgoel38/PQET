                                                                                               QUERY PLAN                                                                                                
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=129.05..129.05 rows=1 width=96) (actual time=2428.463..2428.463 rows=1 loops=1)
   Buffers: shared hit=22936 read=5770
   ->  Nested Loop  (cost=0.08..129.05 rows=1 width=48) (actual time=976.090..2428.418 rows=14 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=22936 read=5770
         ->  Nested Loop  (cost=0.06..129.01 rows=1 width=43) (actual time=411.822..2195.454 rows=102 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 1
               Buffers: shared hit=22542 read=5756
               ->  Nested Loop  (cost=0.06..128.98 rows=1 width=47) (actual time=411.797..2194.814 rows=103 loops=1)
                     Buffers: shared hit=22439 read=5756
                     ->  Nested Loop  (cost=0.05..128.95 rows=1 width=32) (actual time=85.176..1726.602 rows=288 loops=1)
                           Join Filter: (ml.movie_id = mc.movie_id)
                           Buffers: shared hit=21351 read=5692
                           ->  Nested Loop  (cost=0.04..128.92 rows=1 width=20) (actual time=58.852..1496.947 rows=64 loops=1)
                                 Join Filter: (ml.link_type_id = lt.id)
                                 Rows Removed by Join Filter: 187
                                 Buffers: shared hit=21087 read=5644
                                 ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=1 width=16) (actual time=0.005..0.025 rows=1 loops=1)
                                       Filter: ((link)::text ~~ '%follows%'::text)
                                       Rows Removed by Filter: 17
                                       Buffers: shared hit=1
                                 ->  Nested Loop  (cost=0.04..128.89 rows=3 width=12) (actual time=58.833..1496.755 rows=251 loops=1)
                                       Buffers: shared hit=21086 read=5644
                                       ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=58.794..1385.193 rows=10544 loops=1)
                                             Buffers: shared hit=2 read=5604
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=42.883..42.885 rows=1 loops=1)
                                                   Index Cond: (keyword = 'sequel'::text)
                                                   Buffers: shared read=4
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=15.902..1336.531 rows=10544 loops=1)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=2 read=5600
                                       ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.009..0.009 rows=0 loops=10544)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=21084 read=40
                           ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=12) (actual time=3.461..3.582 rows=4 loops=64)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Filter: (note IS NULL)
                                 Rows Removed by Filter: 2
                                 Buffers: shared hit=264 read=48
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=1.624..1.624 rows=0 loops=288)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '%Film%'::text) OR (name ~~ '%Warner%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1088 read=64
               ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=1 width=4) (actual time=0.003..0.003 rows=1 loops=103)
                     Filter: ((kind)::text = 'production companies'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=103
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.282..2.282 rows=0 loops=102)
               Index Cond: (id = mk.movie_id)
               Filter: ((title ~~ '%Money%'::text) AND (production_year = 1998))
               Rows Removed by Filter: 1
               Buffers: shared hit=394 read=14
 Planning Time: 3219.797 ms
 Execution Time: 2429.405 ms
(56 rows)

