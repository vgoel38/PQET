                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.78..134.78 rows=1 width=96) (actual time=65777.204..65777.205 rows=1 loops=1)
   Buffers: shared hit=113519 read=17514
   ->  Nested Loop  (cost=0.06..134.78 rows=2 width=46) (actual time=194.621..65742.825 rows=4388 loops=1)
         Buffers: shared hit=113519 read=17514
         ->  Nested Loop  (cost=0.05..129.02 rows=2 width=33) (actual time=135.799..6077.021 rows=4388 loops=1)
               Buffers: shared hit=101035 read=12439
               ->  Nested Loop  (cost=0.04..128.93 rows=2 width=24) (actual time=93.963..1696.539 rows=4388 loops=1)
                     Join Filter: (ml.link_type_id = lt.id)
                     Rows Removed by Join Filter: 74596
                     Buffers: shared hit=84085 read=11835
                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.121..0.157 rows=18 loops=1)
                           Buffers: shared read=1
                     ->  Materialize  (cost=0.04..128.89 rows=2 width=16) (actual time=3.865..92.017 rows=4388 loops=18)
                           Buffers: shared hit=84085 read=11834
                           ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=69.549..1637.232 rows=4388 loops=1)
                                 Buffers: shared hit=84085 read=11834
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.530..1391.078 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.869..30.871 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.639..1343.032 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.005..0.005 rows=0 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=84085 read=172
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (actual time=0.992..0.992 rows=1 loops=4388)
                     Index Cond: (id = mk.movie_id)
                     Buffers: shared hit=16950 read=604
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (actual time=13.593..13.593 rows=1 loops=4388)
               Index Cond: (id = ml.linked_movie_id)
               Buffers: shared hit=12484 read=5075
 Planning Time: 1016.720 ms
 Execution Time: 65784.493 ms
(35 rows)

