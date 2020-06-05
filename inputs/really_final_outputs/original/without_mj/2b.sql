                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.08..133.08 rows=1 width=32) (actual time=28010.527..28010.527 rows=1 loops=1)
   Buffers: shared hit=777976 read=38378
   ->  Nested Loop  (cost=0.07..133.08 rows=2 width=17) (actual time=727.777..27988.760 rows=5228 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=777976 read=38378
         ->  Nested Loop  (cost=0.05..132.99 rows=2 width=8) (actual time=671.249..15232.767 rows=5228 loops=1)
               Buffers: shared hit=760882 read=34548
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=109.827..7832.376 rows=148552 loops=1)
                     Buffers: shared hit=169745 read=30735
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.657..4370.828 rows=41840 loops=1)
                           Buffers: shared read=11662
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=31.024..31.025 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.611..4320.026 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=11658
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.061..0.080 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169745 read=19073
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.049..0.049 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[nl]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591137 read=3813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.437..2.437 rows=1 loops=5228)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=17094 read=3830
 Planning Time: 1999.359 ms
 Execution Time: 28034.922 ms
(30 rows)

