                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.45..134.45 rows=1 width=32) (actual time=37326.104..37326.104 rows=1 loops=1)
   Buffers: shared hit=902354 read=60401
   ->  Nested Loop  (cost=0.07..134.44 rows=68 width=17) (actual time=89.768..37273.322 rows=68316 loops=1)
         Buffers: shared hit=902354 read=60401
         ->  Nested Loop  (cost=0.05..131.06 rows=190 width=21) (actual time=63.866..28582.779 rows=148552 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=311353 read=56594
               ->  Nested Loop  (cost=0.04..129.99 rows=34 width=25) (actual time=58.100..25077.148 rows=41840 loops=1)
                     Buffers: shared hit=141602 read=37527
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.306..3328.015 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=21.463..21.464 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.807..3286.239 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.518..0.518 rows=1 loops=41840)
                           Index Cond: (id = mk.movie_id)
                           Buffers: shared hit=141599 read=25868
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.064..0.080 rows=4 loops=41840)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=169751 read=19067
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.058..0.058 rows=0 loops=148552)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=591001 read=3807
 Planning Time: 2291.127 ms
 Execution Time: 37358.650 ms
(30 rows)

