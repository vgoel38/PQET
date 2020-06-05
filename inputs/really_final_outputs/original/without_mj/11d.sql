                                                                                                 QUERY PLAN                                                                                                 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.53..387.53 rows=1 width=96) (actual time=6291.571..6291.571 rows=1 loops=1)
   Buffers: shared hit=173799 read=17739
   ->  Nested Loop  (cost=0.08..387.53 rows=12 width=60) (actual time=297.834..6270.373 rows=14899 loops=1)
         Buffers: shared hit=173799 read=17739
         ->  Nested Loop  (cost=0.06..387.24 rows=13 width=45) (actual time=260.778..5642.466 rows=14916 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 1782
               Buffers: shared hit=114337 read=17524
               ->  Nested Loop  (cost=0.06..387.20 rows=17 width=49) (actual time=239.637..5611.630 rows=15510 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=114337 read=17523
                     ->  Nested Loop  (cost=0.05..387.01 rows=6 width=29) (actual time=206.637..5005.265 rows=1460 loops=1)
                           Join Filter: (ml.link_type_id = lt.id)
                           Rows Removed by Join Filter: 24820
                           Buffers: shared hit=107663 read=17300
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.063..0.073 rows=18 loops=1)
                                 Buffers: shared read=1
                           ->  Materialize  (cost=0.05..386.96 rows=6 width=33) (actual time=6.826..277.820 rows=1460 loops=18)
                                 Buffers: shared hit=107663 read=17299
                                 ->  Nested Loop  (cost=0.05..386.96 rows=6 width=33) (actual time=122.847..4997.041 rows=1460 loops=1)
                                       Join Filter: (ml.movie_id = t.id)
                                       Buffers: shared hit=107663 read=17299
                                       ->  Nested Loop  (cost=0.04..386.66 rows=7 width=12) (actual time=79.118..3500.007 rows=1460 loops=1)
                                             Buffers: shared hit=102086 read=17034
                                             ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=78.358..3144.525 rows=47403 loops=1)
                                                   Buffers: shared hit=7189 read=16917
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=24.010..95.517 rows=3 loops=1)
                                                         Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                         Buffers: shared hit=6 read=9
                                                   ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=30.154..1009.049 rows=15801 loops=3)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=7183 read=16908
                                             ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.006..0.007 rows=0 loops=47403)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=94897 read=117
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.023..1.023 rows=1 loops=1460)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (production_year > 1950)
                                             Buffers: shared hit=5577 read=265
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.364..0.411 rows=11 loops=1460)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NOT NULL)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=6674 read=223
               ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.001..0.001 rows=1 loops=15510)
                     Buffers: shared read=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=21.120..21.126 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared read=1
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.041..0.041 rows=1 loops=14916)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text <> '[pl]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=59462 read=215
 Planning Time: 2954.126 ms
 Execution Time: 6292.072 ms
(57 rows)

