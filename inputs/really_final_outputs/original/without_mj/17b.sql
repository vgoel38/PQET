                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=160.40..160.40 rows=1 width=64) (actual time=1549551.172..1549551.172 rows=1 loops=1)
   Buffers: shared hit=5302912 read=313615
   ->  Nested Loop  (cost=0.10..160.39 rows=19 width=15) (actual time=5407.690..1549468.059 rows=52306 loops=1)
         Buffers: shared hit=5302912 read=313615
         ->  Nested Loop  (cost=0.08..160.06 rows=19 width=19) (actual time=5360.165..1518955.898 rows=52306 loops=1)
               Buffers: shared hit=5096780 read=310336
               ->  Nested Loop  (cost=0.07..159.90 rows=10 width=27) (actual time=5329.932..1495000.475 rows=6642 loops=1)
                     Buffers: shared hit=5072584 read=302903
                     ->  Nested Loop  (cost=0.06..159.72 rows=10 width=23) (actual time=5279.881..1449023.347 rows=6642 loops=1)
                           Buffers: shared hit=5052299 read=296596
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=112.293..1112069.869 rows=1038393 loops=1)
                                 Buffers: shared hit=960419 read=227688
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=67.644..5653.041 rows=41840 loops=1)
                                       Buffers: shared read=11662
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.944..30.945 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.677..5575.807 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared read=11658
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.455..26.416 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960419 read=216026
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091880 read=68908
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=6.917..6.917 rows=1 loops=6642)
                           Index Cond: (id = ci.movie_id)
                           Buffers: shared hit=20285 read=6307
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=2.870..3.596 rows=8 loops=6642)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=24196 read=7433
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.581..0.581 rows=1 loops=52306)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=206132 read=3279
 Planning Time: 4972.262 ms
 Execution Time: 1549569.071 ms
(39 rows)

