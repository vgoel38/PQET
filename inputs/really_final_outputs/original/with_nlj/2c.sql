 Aggregate  (cost=133.04..133.04 rows=1 width=32) (actual time=12876.447..12876.447 rows=1 loops=1)
   Buffers: shared hit=760885 read=34548
   ->  Nested Loop  (cost=0.07..133.04 rows=1 width=17) (actual time=12876.398..12876.398 rows=0 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=760885 read=34548
         ->  Nested Loop  (cost=0.05..132.99 rows=1 width=8) (actual time=12876.397..12876.397 rows=0 loops=1)
               Buffers: shared hit=760885 read=34548
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=101.454..7360.091 rows=148552 loops=1)
                     Buffers: shared hit=169745 read=30735
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.644..3930.915 rows=41840 loops=1)
                           Buffers: shared read=11662
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.975..30.976 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.646..3884.553 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=11658
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.063..0.080 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169745 read=19073
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.037..0.037 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[sm]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591140 read=3813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (never executed)
               Index Cond: (id = mk.movie_id)
 Planning Time: 2083.561 ms
 Execution Time: 12916.567 ms
