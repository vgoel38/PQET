                                                                                     QUERY PLAN                                                                                     
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.75..134.75 rows=1 width=96) (actual time=44.425..44.425 rows=1 loops=1)
   Buffers: shared hit=4 read=6
   ->  Nested Loop  (cost=0.07..134.75 rows=2 width=46) (actual time=44.372..44.372 rows=0 loops=1)
         Buffers: shared hit=4 read=6
         ->  Nested Loop  (cost=0.05..128.98 rows=2 width=33) (actual time=44.371..44.371 rows=0 loops=1)
               Buffers: shared hit=4 read=6
               ->  Nested Loop  (cost=0.04..128.90 rows=2 width=24) (actual time=44.371..44.371 rows=0 loops=1)
                     Buffers: shared hit=4 read=6
                     ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=44.370..44.370 rows=0 loops=1)
                           Buffers: shared hit=4 read=6
                           ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=44.337..44.341 rows=1 loops=1)
                                 Buffers: shared hit=2 read=6
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=12.231..12.232 rows=1 loops=1)
                                       Index Cond: (keyword = '10,000-mile-club'::text)
                                       Buffers: shared read=4
                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=32.077..32.079 rows=1 loops=1)
                                       Index Cond: (keyword_id = k.id)
                                       Buffers: shared hit=2 read=2
                           ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.023..0.024 rows=0 loops=1)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=2
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (never executed)
                           Index Cond: (id = ml.link_type_id)
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (never executed)
                     Index Cond: (id = mk.movie_id)
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (never executed)
               Index Cond: (id = ml.linked_movie_id)
 Planning Time: 1422.827 ms
 Execution Time: 70.399 ms
(29 rows)

