                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.45..134.45 rows=1 width=32) (actual time=36301.193..36301.193 rows=1 loops=1)
   Buffers: shared hit=902354 read=60401
   ->  Nested Loop  (cost=0.07..134.44 rows=68 width=17) (actual time=81.459..36230.375 rows=68316 loops=1)
         Buffers: shared hit=902354 read=60401
         ->  Nested Loop  (cost=0.05..131.06 rows=190 width=21) (actual time=55.539..27039.716 rows=148552 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=311353 read=56594
               ->  Nested Loop  (cost=0.04..129.99 rows=34 width=25) (actual time=49.788..23977.843 rows=41840 loops=1)
                     Buffers: shared hit=141602 read=37527
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.998..3916.760 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.156..13.157 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.811..3884.182 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.478..0.478 rows=1 loops=41840)
                           Index Cond: (id = mk.movie_id)
                           Buffers: shared hit=141599 read=25868
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.056..0.070 rows=4 loops=41840)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=169751 read=19067
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.061..0.061 rows=0 loops=148552)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=591001 read=3807
 Planning Time: 2316.719 ms
 Execution Time: 36358.162 ms
(30 rows)

