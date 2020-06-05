                                                                                             QUERY PLAN                                                                                              
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.54..387.54 rows=1 width=96) (actual time=6127.961..6127.962 rows=1 loops=1)
   Buffers: shared hit=206294 read=17723
   ->  Nested Loop  (cost=0.08..387.53 rows=12 width=60) (actual time=234.943..6106.851 rows=14899 loops=1)
         Buffers: shared hit=206294 read=17723
         ->  Nested Loop  (cost=0.07..387.25 rows=13 width=45) (actual time=227.264..5416.569 rows=14916 loops=1)
               Buffers: shared hit=146829 read=17511
               ->  Nested Loop  (cost=0.07..387.17 rows=17 width=49) (actual time=227.227..5381.924 rows=15510 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=115809 read=17511
                     ->  Nested Loop  (cost=0.05..386.98 rows=6 width=29) (actual time=121.363..4772.881 rows=1460 loops=1)
                           Buffers: shared hit=109133 read=17290
                           ->  Nested Loop  (cost=0.05..386.96 rows=6 width=33) (actual time=102.827..4747.628 rows=1460 loops=1)
                                 Join Filter: (ml.movie_id = t.id)
                                 Buffers: shared hit=107673 read=17289
                                 ->  Nested Loop  (cost=0.04..386.66 rows=7 width=12) (actual time=76.415..3251.546 rows=1460 loops=1)
                                       Buffers: shared hit=102094 read=17026
                                       ->  Nested Loop  (cost=0.03..385.61 rows=101 width=4) (actual time=51.157..2845.110 rows=47403 loops=1)
                                             Buffers: shared hit=7192 read=16914
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=25.776..97.205 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                             ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=16.273..908.664 rows=15801 loops=3)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=7186 read=16905
                                       ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.008..0.008 rows=0 loops=47403)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=94902 read=112
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.023..1.023 rows=1 loops=1460)
                                       Index Cond: (id = mk.movie_id)
                                       Filter: (production_year > 1950)
                                       Buffers: shared hit=5579 read=263
                           ->  Index Only Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=4) (actual time=0.015..0.015 rows=1 loops=1460)
                                 Index Cond: (id = ml.link_type_id)
                                 Heap Fetches: 0
                                 Buffers: shared hit=1460 read=1
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.349..0.413 rows=11 loops=1460)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NOT NULL)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=6676 read=221
               ->  Index Scan using company_type_pkey on company_type ct  (cost=0.00..0.00 rows=1 width=4) (actual time=0.001..0.001 rows=1 loops=15510)
                     Index Cond: (id = mc.company_type_id)
                     Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                     Rows Removed by Filter: 0
                     Buffers: shared hit=31020
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.046..0.046 rows=1 loops=14916)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text <> '[pl]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=59465 read=212
 Planning Time: 3323.849 ms
 Execution Time: 6128.741 ms
(52 rows)

