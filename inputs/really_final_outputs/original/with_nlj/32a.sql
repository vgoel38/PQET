 Aggregate  (cost=134.78..134.78 rows=1 width=96) (actual time=70.995..70.995 rows=1 loops=1)
   Buffers: shared read=11
   ->  Nested Loop  (cost=0.06..134.78 rows=2 width=46) (actual time=70.943..70.943 rows=0 loops=1)
         Buffers: shared read=11
         ->  Nested Loop  (cost=0.05..129.02 rows=2 width=33) (actual time=70.942..70.942 rows=0 loops=1)
               Buffers: shared read=11
               ->  Nested Loop  (cost=0.04..128.93 rows=2 width=24) (actual time=70.941..70.941 rows=0 loops=1)
                     Join Filter: (ml.link_type_id = lt.id)
                     Buffers: shared read=11
                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.149..0.155 rows=18 loops=1)
                           Buffers: shared read=1
                     ->  Materialize  (cost=0.04..128.89 rows=2 width=16) (actual time=3.932..3.932 rows=0 loops=18)
                           Buffers: shared read=10
                           ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=70.764..70.764 rows=0 loops=1)
                                 Buffers: shared read=10
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=52.501..52.505 rows=1 loops=1)
                                       Buffers: shared read=8
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=12.025..12.026 rows=1 loops=1)
                                             Index Cond: (keyword = '10,000-mile-club'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=40.455..40.456 rows=1 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=4
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=18.252..18.252 rows=0 loops=1)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared read=2
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (never executed)
                     Index Cond: (id = mk.movie_id)
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (never executed)
               Index Cond: (id = ml.linked_movie_id)
 Planning Time: 1217.856 ms
 Execution Time: 95.561 ms
