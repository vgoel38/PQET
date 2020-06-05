                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.04..133.04 rows=1 width=32) (actual time=12051.971..12051.971 rows=1 loops=1)
   Buffers: shared hit=760885 read=34548
   ->  Nested Loop  (cost=0.07..133.04 rows=1 width=17) (actual time=12051.965..12051.965 rows=0 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=760885 read=34548
         ->  Nested Loop  (cost=0.05..132.99 rows=1 width=8) (actual time=12051.964..12051.964 rows=0 loops=1)
               Buffers: shared hit=760885 read=34548
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=93.194..6518.357 rows=148552 loops=1)
                     Buffers: shared hit=169745 read=30735
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=59.383..3412.651 rows=41840 loops=1)
                           Buffers: shared read=11662
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.710..22.711 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.651..3373.083 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=11658
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.057..0.072 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169745 read=19073
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.037..0.037 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[sm]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591140 read=3813
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (never executed)
               Index Cond: (id = mk.movie_id)
 Planning Time: 1922.812 ms
 Execution Time: 12061.202 ms
(29 rows)

