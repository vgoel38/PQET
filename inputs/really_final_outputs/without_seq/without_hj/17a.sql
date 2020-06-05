                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=165.13..165.13 rows=1 width=64) (actual time=1519184.649..1519184.649 rows=1 loops=1)
   Buffers: shared hit=8415838 read=321808
   ->  Nested Loop  (cost=0.10..165.12 rows=65 width=15) (actual time=3033.316..1518916.605 rows=258289 loops=1)
         Buffers: shared hit=8415838 read=321808
         ->  Nested Loop  (cost=0.08..161.91 rows=180 width=19) (actual time=2157.187..1484068.046 rows=702849 loops=1)
               Buffers: shared hit=5604834 read=318025
               ->  Nested Loop  (cost=0.07..160.40 rows=94 width=27) (actual time=104.068..1470723.468 rows=93315 loops=1)
                     Buffers: shared hit=5173553 read=301390
                     ->  Nested Loop  (cost=0.06..138.11 rows=1138 width=16) (actual time=87.247..1133019.055 rows=1038393 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=1081968 read=232486
                           ->  Nested Loop  (cost=0.04..129.16 rows=34 width=8) (actual time=65.981..12213.832 rows=41840 loops=1)
                                 Buffers: shared hit=121541 read=16468
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=48.645..6211.061 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=30.959..30.960 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=17.642..6135.142 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.140..0.140 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=121538 read=4809
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.592..26.752 rows=25 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=960427 read=216018
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                           Index Cond: (id = ci.person_id)
                           Filter: (name ~~ 'B%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4091585 read=68904
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.104..0.137 rows=8 loops=93315)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=431281 read=16635
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.048..0.048 rows=0 loops=702849)
               Index Cond: (id = mc.company_id)
               Filter: ((country_code)::text = '[us]'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2811004 read=3783
 Planning Time: 5624.944 ms
 Execution Time: 1519199.854 ms
(43 rows)

