                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.31..387.31 rows=1 width=96) (actual time=4785.418..4785.419 rows=1 loops=1)
   Buffers: shared hit=202962 read=17484
   ->  Nested Loop  (cost=0.08..387.31 rows=1 width=60) (actual time=2447.675..4780.770 rows=6946 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=202962 read=17484
         ->  Nested Loop  (cost=0.06..387.27 rows=1 width=55) (actual time=2408.898..4620.444 rows=6946 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 42158
               Buffers: shared hit=175188 read=17474
               ->  Nested Loop  (cost=0.06..387.23 rows=1 width=59) (actual time=2408.781..4595.978 rows=6946 loops=1)
                     Buffers: shared hit=168243 read=17473
                     ->  Nested Loop  (cost=0.05..386.92 rows=14 width=44) (actual time=201.243..4021.330 rows=14916 loops=1)
                           Join Filter: (mc.company_type_id = ct.id)
                           Rows Removed by Join Filter: 1782
                           Buffers: shared hit=108760 read=17258
                           ->  Nested Loop  (cost=0.05..386.88 rows=19 width=48) (actual time=201.096..4009.712 rows=15510 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=108760 read=17257
                                 ->  Nested Loop  (cost=0.04..386.66 rows=7 width=12) (actual time=107.951..3493.405 rows=1460 loops=1)
                                       Buffers: shared hit=102086 read=17034
                                       ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=107.220..3118.782 rows=47403 loops=1)
                                             Buffers: shared hit=7189 read=16917
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=52.863..125.688 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=30.158..990.413 rows=15801 loops=3)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=7183 read=16908
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=47403)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=94897 read=117
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.314..0.348 rows=11 loops=1460)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=6674 read=223
                           ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.000..0.000 rows=1 loops=15510)
                                 Buffers: shared read=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.130..0.136 rows=3 loops=1)
                                       Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared read=1
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.038..0.038 rows=0 loops=14916)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=59483 read=215
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.001..0.001 rows=7 loops=6946)
                     Buffers: shared hit=6945 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.022..0.022 rows=1 loops=6946)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1950)
               Buffers: shared hit=27774 read=10
 Planning Time: 2983.565 ms
 Execution Time: 4785.959 ms
(55 rows)

