                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=165.13..165.13 rows=1 width=64) (actual time=1523576.744..1523576.745 rows=1 loops=1)
   Buffers: shared hit=8415838 read=321808
   ->  Nested Loop  (cost=0.10..165.12 rows=65 width=15) (actual time=3024.961..1523296.375 rows=258289 loops=1)
         Buffers: shared hit=8415838 read=321808
         ->  Nested Loop  (cost=0.08..161.91 rows=180 width=19) (actual time=2148.877..1488354.290 rows=702849 loops=1)
               Buffers: shared hit=5604834 read=318025
               ->  Nested Loop  (cost=0.07..160.40 rows=94 width=27) (actual time=95.761..1475078.204 rows=93315 loops=1)
                     Buffers: shared hit=5173553 read=301390
                     ->  Nested Loop  (cost=0.06..138.11 rows=1138 width=16) (actual time=78.934..1136985.430 rows=1038393 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=1081968 read=232486
                           ->  Nested Loop  (cost=0.04..129.16 rows=34 width=8) (actual time=57.675..12212.304 rows=41840 loops=1)
                                 Buffers: shared hit=121541 read=16468
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=40.319..6156.931 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.652..22.655 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.618..6086.379 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.142..0.142 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=121538 read=4809
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.606..26.846 rows=25 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=960427 read=216018
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                           Index Cond: (id = ci.person_id)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4091585 read=68904
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.103..0.136 rows=8 loops=93315)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=431281 read=16635
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.049..0.049 rows=0 loops=702849)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2811004 read=3783
 Planning Time: 5709.197 ms
 Execution Time: 1523591.032 ms
(43 rows)

