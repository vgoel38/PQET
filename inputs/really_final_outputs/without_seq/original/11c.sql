                                                                                              QUERY PLAN                                                                                              
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.32..387.32 rows=1 width=96) (actual time=4795.582..4795.583 rows=1 loops=1)
   Buffers: shared hit=233998 read=17468
   ->  Nested Loop  (cost=0.08..387.32 rows=1 width=60) (actual time=2374.545..4791.515 rows=6946 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=233998 read=17468
         ->  Nested Loop  (cost=0.07..387.27 rows=1 width=55) (actual time=2347.022..4645.729 rows=6946 loops=1)
               Buffers: shared hit=206222 read=17460
               ->  Nested Loop  (cost=0.07..387.27 rows=1 width=59) (actual time=2327.613..4616.478 rows=6946 loops=1)
                     Buffers: shared hit=199276 read=17459
                     ->  Nested Loop  (cost=0.05..386.96 rows=14 width=44) (actual time=103.006..4077.099 rows=14916 loops=1)
                           Buffers: shared hit=139790 read=17247
                           ->  Nested Loop  (cost=0.05..386.88 rows=19 width=48) (actual time=102.971..4039.221 rows=15510 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=108770 read=17247
                                 ->  Nested Loop  (cost=0.04..386.66 rows=7 width=12) (actual time=60.736..3537.032 rows=1460 loops=1)
                                       Buffers: shared hit=102094 read=17026
                                       ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=60.232..3183.969 rows=47403 loops=1)
                                             Buffers: shared hit=7192 read=16914
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=34.848..99.899 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=16.270..1020.466 rows=15801 loops=3)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=7186 read=16905
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.006..0.006 rows=0 loops=47403)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=94902 read=112
                                 ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.292..0.339 rows=11 loops=1460)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=6676 read=221
                           ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.002..0.002 rows=1 loops=15510)
                                 Index Cond: (id = mc.company_type_id)
                                 Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                 Rows Removed by Filter: 0
                                 Buffers: shared hit=31020
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.036..0.036 rows=0 loops=14916)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=59486 read=212
               ->  Index Only Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.004..0.004 rows=1 loops=6946)
                     Index Cond: (id = ml.link_type_id)
                     Heap Fetches: 0
                     Buffers: shared hit=6946 read=1
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.020..0.020 rows=1 loops=6946)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1950)
               Buffers: shared hit=27776 read=8
 Planning Time: 3307.183 ms
 Execution Time: 4796.036 ms
(52 rows)

