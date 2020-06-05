                                                                                                  QUERY PLAN                                                                                                  
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=387.55..387.55 rows=1 width=96) (actual time=6295.797..6295.797 rows=1 loops=1)
   Buffers: shared hit=173816 read=17722
   ->  Nested Loop  (cost=0.08..387.55 rows=13 width=60) (actual time=209.190..6273.526 rows=14899 loops=1)
         Buffers: shared hit=173816 read=17722
         ->  Nested Loop  (cost=0.06..387.24 rows=14 width=45) (actual time=200.948..5564.564 rows=14916 loops=1)
               Join Filter: (mc.company_type_id = ct.id)
               Rows Removed by Join Filter: 1782
               Buffers: shared hit=114351 read=17510
               ->  Nested Loop  (cost=0.06..387.20 rows=19 width=49) (actual time=200.928..5553.987 rows=15510 loops=1)
                     Join Filter: (ml.movie_id = mc.movie_id)
                     Buffers: shared hit=114350 read=17510
                     ->  Nested Loop  (cost=0.05..387.01 rows=6 width=29) (actual time=151.281..4941.414 rows=1460 loops=1)
                           Join Filter: (ml.link_type_id = lt.id)
                           Rows Removed by Join Filter: 24820
                           Buffers: shared hit=107674 read=17289
                           ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=4) (actual time=0.003..0.012 rows=18 loops=1)
                                 Buffers: shared hit=1
                           ->  Materialize  (cost=0.05..386.95 rows=6 width=33) (actual time=4.217..274.263 rows=1460 loops=18)
                                 Buffers: shared hit=107673 read=17289
                                 ->  Nested Loop  (cost=0.05..386.95 rows=6 width=33) (actual time=75.902..4932.886 rows=1460 loops=1)
                                       Join Filter: (ml.movie_id = t.id)
                                       Buffers: shared hit=107673 read=17289
                                       ->  Nested Loop  (cost=0.04..386.65 rows=7 width=12) (actual time=49.455..3560.302 rows=1460 loops=1)
                                             Buffers: shared hit=102094 read=17026
                                             ->  Nested Loop  (cost=0.03..385.60 rows=101 width=4) (actual time=37.478..3171.779 rows=47403 loops=1)
                                                   Buffers: shared hit=7192 read=16914
                                                   ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..18.40 rows=3 width=4) (actual time=23.825..95.322 rows=3 loops=1)
                                                         Index Cond: (keyword = ANY ('{sequel,revenge,based-on-novel}'::text[]))
                                                         Buffers: shared hit=6 read=9
                                                   ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=7.061..1017.985 rows=15801 loops=3)
                                                         Index Cond: (keyword_id = k.id)
                                                         Buffers: shared hit=7186 read=16905
                                             ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=8) (actual time=0.007..0.007 rows=0 loops=47403)
                                                   Index Cond: (movie_id = mk.movie_id)
                                                   Buffers: shared hit=94902 read=112
                                       ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.938..0.938 rows=1 loops=1460)
                                             Index Cond: (id = mk.movie_id)
                                             Filter: (production_year > 1950)
                                             Buffers: shared hit=5579 read=263
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=1 width=36) (actual time=0.372..0.415 rows=11 loops=1460)
                           Index Cond: (movie_id = mk.movie_id)
                           Filter: (note IS NOT NULL)
                           Rows Removed by Filter: 2
                           Buffers: shared hit=6676 read=221
               ->  Materialize  (cost=0.00..0.03 rows=3 width=4) (actual time=0.000..0.000 rows=1 loops=15510)
                     Buffers: shared hit=1
                     ->  Seq Scan on company_type ct  (cost=0.00..0.03 rows=3 width=4) (actual time=0.010..0.018 rows=3 loops=1)
                           Filter: ((kind IS NOT NULL) AND ((kind)::text <> 'production companies'::text))
                           Rows Removed by Filter: 1
                           Buffers: shared hit=1
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=23) (actual time=0.047..0.047 rows=1 loops=14916)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text <> '[pl]'::text)
               Rows Removed by Filter: 0
               Buffers: shared hit=59465 read=212
 Planning Time: 3217.815 ms
 Execution Time: 6296.290 ms
(57 rows)

