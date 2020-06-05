 Aggregate  (cost=133.33..133.33 rows=1 width=32) (actual time=30169.535..30169.535 rows=1 loops=1)
   Buffers: shared hit=786529 read=40263
   ->  Nested Loop  (cost=0.07..133.33 rows=8 width=17) (actual time=422.050..30147.046 rows=7834 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=786529 read=40263
         ->  Nested Loop  (cost=0.05..132.99 rows=8 width=8) (actual time=383.222..15706.665 rows=7834 loops=1)
               Buffers: shared hit=760882 read=34548
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=101.462..7899.759 rows=148552 loops=1)
                     Buffers: shared hit=169745 read=30735
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.641..4140.595 rows=41840 loops=1)
                           Buffers: shared read=11662
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.982..30.983 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.636..4091.071 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=11658
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.070..0.087 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169745 read=19073
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.052..0.052 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[de]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591137 read=3813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=1.841..1.841 rows=1 loops=7834)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=25647 read=5715
 Planning Time: 1938.412 ms
 Execution Time: 30188.130 ms
