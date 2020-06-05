                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=159.77..159.77 rows=1 width=64) (actual time=1453479.732..1453479.733 rows=1 loops=1)
   Buffers: shared hit=5064034 read=297611
   ->  Nested Loop  (cost=0.10..159.77 rows=1 width=15) (actual time=76161.677..1453475.541 rows=1918 loops=1)
         Buffers: shared hit=5064034 read=297611
         ->  Nested Loop  (cost=0.08..159.75 rows=1 width=27) (actual time=76150.472..1450895.843 rows=1918 loops=1)
               Buffers: shared hit=5058458 read=297418
               ->  Nested Loop  (cost=0.07..159.74 rows=1 width=31) (actual time=76126.982..1447146.300 rows=1918 loops=1)
                     Buffers: shared hit=5052988 read=297115
                     ->  Nested Loop  (cost=0.06..159.72 rows=1 width=23) (actual time=76096.592..1439964.326 rows=250 loops=1)
                           Buffers: shared hit=5052335 read=296581
                           ->  Nested Loop  (cost=0.04..137.43 rows=1138 width=12) (actual time=62.247..1103012.409 rows=1038393 loops=1)
                                 Buffers: shared hit=960430 read=227677
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=48.628..5688.370 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.963..30.965 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.621..5612.305 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.435..26.199 rows=25 loops=41840)
                                       Index Cond: (movie_id = mk.movie_id)
                                       Buffers: shared hit=960427 read=216018
                           ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                                 Index Cond: (id = ci.person_id)
                                 Filter: (name ~~ 'X%'::text)
                                 Rows Removed by Filter: 1
                                 Buffers: shared hit=4091905 read=68904
                     ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=19.434..28.715 rows=8 loops=250)
                           Index Cond: (movie_id = ci.movie_id)
                           Buffers: shared hit=653 read=534
               ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..0.01 rows=1 width=4) (actual time=1.952..1.952 rows=1 loops=1918)
                     Index Cond: (id = mc.company_id)
                     Heap Fetches: 0
                     Buffers: shared hit=5470 read=303
         ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.01 rows=1 width=4) (actual time=1.342..1.342 rows=1 loops=1918)
               Index Cond: (id = ci.movie_id)
               Heap Fetches: 0
               Buffers: shared hit=5576 read=193
 Planning Time: 5724.436 ms
 Execution Time: 1453512.063 ms
(41 rows)

