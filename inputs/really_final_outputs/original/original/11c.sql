                                                                                               QUERY PLAN                                                                                               
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.35..387.35 rows=1 width=96) (actual time=4941.697..4941.698 rows=1 loops=1)
   Buffers: shared hit=202979 read=17467
   ->  Nested Loop  (cost=0.08..387.35 rows=1 width=60) (actual time=2487.194..4938.004 rows=6946 loops=1)
         Join Filter: (ml.movie_id = t.id)
         Buffers: shared hit=202979 read=17467
         ->  Nested Loop  (cost=0.06..387.31 rows=1 width=55) (actual time=2440.353..4772.831 rows=6946 loops=1)
               Join Filter: (ml.link_type_id = lt.id)
               Rows Removed by Join Filter: 42158
               Buffers: shared hit=175203 read=17459
               ->  Nested Loop  (cost=0.06..387.27 rows=1 width=59) (actual time=2440.324..4754.653 rows=6946 loops=1)
                     Buffers: shared hit=168257 read=17459
                     ->  Nested Loop  (cost=0.05..386.92 rows=16 width=44) (actual time=149.037..4253.522 rows=14916 loops=1)
                           Join Filter: (mc.company_type_id = ct.id)
                           Rows Removed by Join Filter: 1782
                           Buffers: shared hit=108771 read=17247
                           ->  Nested Loop  (cost=0.05..386.87 rows=21 width=48) (actual time=149.006..4243.759 rows=15510 loops=1)
                                 Join Filter: (ml.movie_id = mc.movie_id)
                                 Buffers: shared hit=108770 read=17247
                                 ->  Nested Loop  (cost=0.04..386.65 rows=7 width=12) (actual time=81.523..3610.510 rows=1460 loops=1)
                                       Buffers: shared hit=102094 read=17026
                                       ->  Nested Loop  (cost=0.03..385.60 rows=101 width=4) (actual time=69.537..3213.275 rows=47403 loops=1)
                                             Buffers: shared hit=7192 read=16914
                                             ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=55.902..127.333 rows=3 loops=1)
                                                   Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                   Buffers: shared hit=6 read=9
                                             ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.063..1021.416 rows=15801 loops=3)
                                                   Index Cond: (keyword_id = k.id)
                                                   Buffers: shared hit=7186 read=16905
                                       ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=47403)
                                             Index Cond: (movie_id = mk.movie_id)
                                             Buffers: shared hit=94902 read=112
                                 ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.384..0.429 rows=11 loops=1460)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Filter: (note IS NOT NULL)
                                       Rows Removed by Filter: 2
                                       Buffers: shared hit=6676 read=221
                           ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.000..0.000 rows=1 loops=15510)
                                 Buffers: shared hit=1
                                 ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.015..0.021 rows=3 loops=1)
                                       Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                                       Rows Removed by Filter: 1
                                       Buffers: shared hit=1
                     ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.033..0.033 rows=0 loops=14916)
                           Index Cond: (id = mc.company_id)
                           Filter: (((country_code)::text <> '[pl]'::text) AND ((name ~~ '20th Century Fox%'::text) OR (name ~~ 'Twentieth Century Fox%'::text)))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=59486 read=212
               ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.000..0.001 rows=7 loops=6946)
                     Buffers: shared hit=6946
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.023..0.023 rows=1 loops=6946)
               Index Cond: (id = mk.movie_id)
               Filter: (production_year > 1950)
               Buffers: shared hit=27776 read=8
 Planning Time: 3144.059 ms
 Execution Time: 4942.160 ms
(55 rows)

