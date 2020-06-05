 Aggregate  (cost=134.78..134.78 rows=1 width=96) (actual time=65017.468..65017.468 rows=1 loops=1)
   Buffers: shared hit=113519 read=17514
   ->  Nested Loop  (cost=0.06..134.78 rows=2 width=46) (actual time=302.930..64983.055 rows=4388 loops=1)
         Buffers: shared hit=113519 read=17514
         ->  Nested Loop  (cost=0.05..129.02 rows=2 width=33) (actual time=244.099..6092.983 rows=4388 loops=1)
               Buffers: shared hit=101035 read=12439
               ->  Nested Loop  (cost=0.04..128.93 rows=2 width=24) (actual time=202.243..1789.695 rows=4388 loops=1)
                     Join Filter: (ml.link_type_id = lt.id)
                     Rows Removed by Join Filter: 74596
                     Buffers: shared hit=84085 read=11835
                     ->  Seq Scan on link_type lt  (cost=0.00..0.03 rows=18 width=16) (actual time=0.658..0.690 rows=18 loops=1)
                           Buffers: shared read=1
                     ->  Materialize  (cost=0.04..128.89 rows=2 width=16) (actual time=9.848..97.311 rows=4388 loops=18)
                           Buffers: shared hit=84085 read=11834
                           ->  Nested Loop  (cost=0.04..128.89 rows=2 width=16) (actual time=177.250..1733.370 rows=4388 loops=1)
                                 Buffers: shared hit=84085 read=11834
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=175.274..1476.268 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=138.620..138.621 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.631..1320.667 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_movie_link on movie_link ml  (cost=0.01..0.01 rows=5 width=12) (actual time=0.005..0.005 rows=0 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=84085 read=172
               ->  Index Scan using title_idx_id on title t1  (cost=0.01..0.04 rows=1 width=21) (actual time=0.975..0.975 rows=1 loops=4388)
                     Index Cond: (id = mk.movie_id)
                     Buffers: shared hit=16950 read=604
         ->  Index Scan using title_idx_id on title t2  (cost=0.01..2.88 rows=1 width=21) (actual time=13.416..13.416 rows=1 loops=4388)
               Index Cond: (id = ml.linked_movie_id)
               Buffers: shared hit=12484 read=5075
 Planning Time: 995.995 ms
 Execution Time: 65046.861 ms
