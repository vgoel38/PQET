                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=160.30..160.30 rows=1 width=64) (actual time=1503736.024..1503736.025 rows=1 loops=1)
   Buffers: shared hit=5250832 read=306842
   ->  Nested Loop  (cost=0.10..160.30 rows=19 width=15) (actual time=5287.873..1503667.459 rows=52306 loops=1)
         Buffers: shared hit=5250832 read=306842
         ->  Nested Loop  (cost=0.08..160.03 rows=19 width=19) (actual time=5268.463..1491065.561 rows=52306 loops=1)
               Buffers: shared hit=5094529 read=306039
               ->  Nested Loop  (cost=0.07..159.87 rows=10 width=27) (actual time=5232.383..1464625.234 rows=6642 loops=1)
                     Buffers: shared hit=5070329 read=298610
                     ->  Nested Loop  (cost=0.06..159.72 rows=10 width=23) (actual time=5204.852..1454364.437 rows=6642 loops=1)
                           Buffers: shared hit=5052314 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=45.598..1117090.547 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=31.987..5697.353 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=13.133..13.135 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.823..5639.220 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.456..26.536 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091884 read=68904
                     ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.01 rows=1 width=4) (actual time=1.541..1.541 rows=1 loops=6642)
                           Index Cond: (id = ci.movie_id)
                           Heap Fetches: 0
                           Buffers: shared hit=18015 read=2029
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=3.212..3.973 rows=8 loops=6642)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=24200 read=7429
         ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..0.01 rows=1 width=4) (actual time=0.239..0.239 rows=1 loops=52306)
               Index Cond: (id = mc.company_id)
               Heap Fetches: 0
               Buffers: shared hit=156303 read=803
 Planning Time: 5845.477 ms
 Execution Time: 1503755.785 ms
(41 rows)

