                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.75..134.75 rows=1 width=96) (actual time=65638.566..65638.566 rows=1 loops=1)
   Buffers: shared hit=122306 read=17502
   ->  Nested Loop  (cost=0.07..134.75 rows=2 width=46) (actual time=137.386..65604.466 rows=4388 loops=1)
         Buffers: shared hit=122306 read=17502
         ->  Nested Loop  (cost=0.05..128.98 rows=2 width=33) (actual time=89.933..5427.933 rows=4388 loops=1)
               Buffers: shared hit=109847 read=12402
               ->  Nested Loop  (cost=0.04..128.90 rows=2 width=24) (actual time=69.070..1725.728 rows=4388 loops=1)
                     Buffers: shared hit=92870 read=11825
                     ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=69.039..1663.246 rows=4388 loops=1)
                           Buffers: shared hit=84094 read=11825
                           ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=48.621..1360.889 rows=41840 loops=1)
                                 Buffers: shared hit=3 read=11659
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.971..30.973 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.608..1311.835 rows=41840 loops=1)
                                       Index Cond: (keyword_id = k.id)
                                       Buffers: shared hit=3 read=11655
                           ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.005..0.006 rows=0 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=84091 read=166
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.009..0.009 rows=1 loops=4388)
                           Index Cond: (id = ml.link_type_id)
                           Buffers: shared hit=8776
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (actual time=0.841..0.841 rows=1 loops=4388)
                     Index Cond: (id = mk.movie_id)
                     Buffers: shared hit=16977 read=577
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (actual time=13.709..13.709 rows=1 loops=4388)
               Index Cond: (id = ml.linked_movie_id)
               Buffers: shared hit=12459 read=5100
 Planning Time: 1340.399 ms
 Execution Time: 65647.009 ms
(32 rows)

