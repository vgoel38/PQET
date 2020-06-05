                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.08..133.08 rows=1 width=32) (actual time=28286.562..28286.562 rows=1 loops=1)
   Buffers: shared hit=777993 read=38361
   ->  Nested Loop  (cost=0.07..133.08 rows=2 width=17) (actual time=561.058..28264.756 rows=5228 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=777993 read=38361
         ->  Nested Loop  (cost=0.05..132.99 rows=2 width=8) (actual time=515.658..15532.010 rows=5228 loops=1)
               Buffers: shared hit=760897 read=34533
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=41.005..7868.429 rows=148552 loops=1)
                     Buffers: shared hit=169754 read=30726
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.306..4183.333 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=21.465..21.466 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.808..4141.607 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.069..0.085 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169751 read=19067
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.051..0.051 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[nl]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591143 read=3807
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=2.433..2.433 rows=1 loops=5228)
               Index Cond: (id = mk.movie_id)
               Buffers: shared hit=17096 read=3828
 Planning Time: 2290.131 ms
 Execution Time: 28361.773 ms
(30 rows)

