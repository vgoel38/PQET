                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.33..133.33 rows=1 width=32) (actual time=29802.928..29802.928 rows=1 loops=1)
   Buffers: shared hit=786546 read=40246
   ->  Nested Loop  (cost=0.07..133.33 rows=8 width=17) (actual time=247.034..29776.563 rows=7834 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=786546 read=40246
         ->  Nested Loop  (cost=0.05..132.99 rows=8 width=8) (actual time=208.092..15527.269 rows=7834 loops=1)
               Buffers: shared hit=760897 read=34533
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=66.006..7666.454 rows=148552 loops=1)
                     Buffers: shared hit=169754 read=30726
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=65.296..3520.794 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.958..30.959 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=34.293..3469.259 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.076..0.096 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169751 read=19067
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.052..0.052 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[de]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591143 read=3807
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.816..1.816 rows=1 loops=7834)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=25649 read=5713
 Planning Time: 2245.374 ms
 Execution Time: 29822.916 ms
(30 rows)

