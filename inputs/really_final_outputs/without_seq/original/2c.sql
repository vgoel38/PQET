                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=133.04..133.04 rows=1 width=32) (actual time=12234.827..12234.827 rows=1 loops=1)
   Buffers: shared hit=760900 read=34533
   ->  Nested Loop  (cost=0.07..133.04 rows=1 width=17) (actual time=12234.808..12234.808 rows=0 loops=1)
         Join Filter: (mc.movie_id = t.id)
         Buffers: shared hit=760900 read=34533
         ->  Nested Loop  (cost=0.05..132.99 rows=1 width=8) (actual time=12234.807..12234.807 rows=0 loops=1)
               Buffers: shared hit=760900 read=34533
               ->  Nested Loop  (cost=0.04..129.61 rows=190 width=12) (actual time=41.045..6217.575 rows=148552 loops=1)
                     Buffers: shared hit=169754 read=30726
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.340..3312.181 rows=41840 loops=1)
                           Buffers: shared hit=3 read=11659
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=21.500..21.502 rows=1 loops=1)
                                 Index Cond: (keyword = 'character-name-in-title'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.810..3273.785 rows=41840 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=3 read=11655
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.03 rows=2 width=8) (actual time=0.054..0.067 rows=4 loops=41840)
                           Index Cond: (movie_id = mk.movie_id)
                           Buffers: shared hit=169751 read=19067
               ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.040..0.040 rows=0 loops=148552)
                     Index Cond: (id = mc.company_id)
                     Filter: ((country_code)::text = '[sm]'::text)
                     Rows Removed by Filter: 1
                     Buffers: shared hit=591146 read=3807
         ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (never executed)
               Index Cond: (id = mk.movie_id)
 Planning Time: 2632.606 ms
 Execution Time: 12300.880 ms
(29 rows)

