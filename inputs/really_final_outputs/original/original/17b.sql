                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=160.24..160.24 rows=1 width=64) (actual time=1605784.155..1605784.156 rows=1 loops=1)
   Buffers: shared hit=5302938 read=313589
   ->  Nested Loop  (cost=0.10..160.23 rows=19 width=15) (actual time=5453.190..1605697.754 rows=52306 loops=1)
         Buffers: shared hit=5302938 read=313589
         ->  Nested Loop  (cost=0.08..159.90 rows=19 width=19) (actual time=5447.353..1574797.821 rows=52306 loops=1)
               Buffers: shared hit=5096801 read=310315
               ->  Nested Loop  (cost=0.07..159.74 rows=10 width=27) (actual time=5400.423..1544662.025 rows=6642 loops=1)
                     Buffers: shared hit=5072601 read=302886
                     ->  Nested Loop  (cost=0.06..159.57 rows=10 width=23) (actual time=5358.712..1497269.460 rows=6642 loops=1)
                           Buffers: shared hit=5052314 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1130 width=12) (actual time=74.473..1159215.654 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=45.199..6131.263 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=34.844..34.845 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.310..6050.379 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=3.161..27.532 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'Z%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091884 read=68904
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=7.130..7.130 rows=1 loops=6642)
                           Index Cond: (id = ci.movie_id)
                           Buffers: shared hit=20287 read=6305
               ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=3.729..4.526 rows=8 loops=6642)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=24200 read=7429
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.589..0.589 rows=1 loops=52306)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=206137 read=3274
 Planning Time: 5327.568 ms
 Execution Time: 1605784.581 ms
(39 rows)

