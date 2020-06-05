 Aggregate  (cost=134.45..134.45 rows=1 width=32) (actual time=36575.076..36575.077 rows=1 loops=1)
   Buffers: shared hit=902335 read=60420
   ->  Nested Loop  (cost=0.07..134.44 rows=68 width=17) (actual time=214.778..36516.895 rows=68316 loops=1)
         Buffers: shared hit=902335 read=60420
         ->  Nested Loop  (cost=0.05..131.06 rows=190 width=21) (actual time=151.455..27612.616 rows=148552 loops=1)
               Join Filter: (t.id = mc.movie_id)
               Buffers: shared hit=311340 read=56607
               ->  Nested Loop  (cost=0.04..129.99 rows=34 width=25) (actual time=108.095..24141.902 rows=41840 loops=1)
                     Buffers: shared hit=141595 read=37534
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.632..3880.363 rows=41840 loops=1)
                           Buffers: shared read=11662
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.976..30.977 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.633..3829.641 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=11658
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.483..0.483 rows=1 loops=41840)
                           Index Cond: (id = mk.movie_id)
                           Buffers: shared hit=141595 read=25872
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.063..0.080 rows=4 loops=41840)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=169745 read=19073
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.059..0.059 rows=0 loops=148552)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=590995 read=3813
 Planning Time: 2053.152 ms
 Execution Time: 36603.940 ms
