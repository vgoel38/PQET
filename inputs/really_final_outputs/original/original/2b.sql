                                                                                      QUERY PLAN                                                                                       
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.07..133.07 rows=1 width=32) (actual time=31385.181..31385.181 rows=1 loops=1)
   Buffers: shared hit=777993 read=38361
   ->  Nested Loop  (cost=0.07..133.07 rows=2 width=17) (actual time=702.816..31363.241 rows=5228 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=777993 read=38361
         ->  Nested Loop  (cost=0.05..132.99 rows=2 width=8) (actual time=657.264..17457.511 rows=5228 loops=1)
               Buffers: shared hit=760897 read=34533
               ->  Nested Loop  (cost=0.04..129.60 rows=190 width=12) (actual time=50.454..9573.837 rows=148552 loops=1)
                     Buffers: shared hit=169754 read=30726
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=49.760..5038.457 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=38.221..38.222 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=11.507..4980.303 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.085..0.106 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169751 read=19067
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.052..0.052 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[nl]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591143 read=3807
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.657..2.657 rows=1 loops=5228)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=17096 read=3828
 Planning Time: 2131.526 ms
 Execution Time: 31385.593 ms
(30 rows)

