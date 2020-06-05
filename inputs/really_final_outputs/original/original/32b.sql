                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=137.71..137.71 rows=1 width=96) (actual time=65012.642..65012.643 rows=1 loops=1)
   Buffers: shared hit=113529 read=17504
   ->  Nested Loop  (cost=0.06..137.70 rows=3 width=46) (actual time=138.748..64978.913 rows=4388 loops=1)
         Buffers: shared hit=113529 read=17504
         ->  Nested Loop  (cost=0.05..129.06 rows=3 width=33) (actual time=79.928..5998.152 rows=4388 loops=1)
               Buffers: shared hit=101045 read=12429
               ->  Nested Loop  (cost=0.04..128.93 rows=3 width=24) (actual time=47.205..1819.219 rows=4388 loops=1)
                     Join Filter: (ml.link_type_id = lt.id)
                     Rows Removed by Join Filter: 74596
                     Buffers: shared hit=84093 read=11827
                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.008..0.039 rows=18 loops=1)
                           Buffers: shared hit=1
                     ->  Materialize  (cost=0.04..128.89 rows=3 width=16) (actual time=2.585..98.914 rows=4388 loops=18)
                           Buffers: shared hit=84092 read=11827
                           ->  Nested Loop  (cost=0.04..128.89 rows=3 width=16) (actual time=46.511..1762.633 rows=4388 loops=1)
                                 Buffers: shared hit=84092 read=11827
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=35.463..1523.182 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=25.105..25.107 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.314..1480.997 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using movie_link_idx_mid on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.005..0.005 rows=0 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=84089 read=168
               ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=0.946..0.946 rows=1 loops=4388)
                     Index Cond: (id = mk.movie_id)
                     Buffers: shared hit=16952 read=602
         ->  Index Scan using title_idx_id on title t  (cost=0.01..2.88 rows=1 width=21) (actual time=13.436..13.436 rows=1 loops=4388)
               Index Cond: (id = ml.linked_movie_id)
               Buffers: shared hit=12484 read=5075
 Planning Time: 1117.913 ms
 Execution Time: 65032.921 ms
(35 rows)

