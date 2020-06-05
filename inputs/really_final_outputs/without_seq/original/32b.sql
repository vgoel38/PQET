                                                                                        QUERY PLAN                                                                                        
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=134.75..134.75 rows=1 width=96) (actual time=66280.153..66280.153 rows=1 loops=1)
   Buffers: shared hit=122306 read=17502
   ->  Nested Loop  (cost=0.07..134.75 rows=2 width=46) (actual time=120.710..66246.099 rows=4388 loops=1)
         Buffers: shared hit=122306 read=17502
         ->  Nested Loop  (cost=0.05..128.98 rows=2 width=33) (actual time=73.293..5314.265 rows=4388 loops=1)
               Buffers: shared hit=109847 read=12402
               ->  Nested Loop  (cost=0.04..128.90 rows=2 width=24) (actual time=52.414..1674.184 rows=4388 loops=1)
                     Buffers: shared hit=92870 read=11825
                     ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=52.377..1610.089 rows=4388 loops=1)
                           Buffers: shared hit=84094 read=11825
                           ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.985..1302.959 rows=41840 loops=1)
                                 Buffers: shared hit=3 read=11659
                                 ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.138..13.140 rows=1 loops=1)
                                       Index Cond: (keyword = 'character-name-in-title'::text)
                                       Buffers: shared read=4
                                 ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.816..1271.338 rows=41840 loops=1)
                                       Index Cond: (keyword_id = k.id)
                                       Buffers: shared hit=3 read=11655
                           ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.005..0.006 rows=0 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=84091 read=166
                     ->  Index Scan using link_type_pkey on link_type lt  (cost=0.00..0.00 rows=1 width=16) (actual time=0.009..0.009 rows=1 loops=4388)
                           Index Cond: (id = ml.link_type_id)
                           Buffers: shared hit=8776
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (actual time=0.826..0.826 rows=1 loops=4388)
                     Index Cond: (id = mk.movie_id)
                     Buffers: shared hit=16977 read=577
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (actual time=13.881..13.881 rows=1 loops=4388)
               Index Cond: (id = ml.linked_movie_id)
               Buffers: shared hit=12459 read=5100
 Planning Time: 1431.466 ms
 Execution Time: 66290.678 ms
(32 rows)

