                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.04..133.04 rows=1 width=32) (actual time=14111.457..14111.458 rows=1 loops=1)
   Buffers: shared hit=760900 read=34533
   ->  Nested Loop  (cost=0.07..133.04 rows=1 width=17) (actual time=14111.438..14111.438 rows=0 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=760900 read=34533
         ->  Nested Loop  (cost=0.05..132.99 rows=1 width=8) (actual time=14111.437..14111.437 rows=0 loops=1)
               Buffers: shared hit=760900 read=34533
               ->  Nested Loop  (cost=0.04..129.60 rows=190 width=12) (actual time=42.990..8004.252 rows=148552 loops=1)
                     Buffers: shared hit=169754 read=30726
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=42.174..3986.637 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.659..30.661 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.484..3938.776 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.077..0.094 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169751 read=19067
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.040..0.040 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[sm]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591146 read=3807
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (never executed)
               Index Cond: (id = mk.movie_id)
 Planning Time: 2214.121 ms
 Execution Time: 14111.844 ms
(29 rows)

