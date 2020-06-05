                                                                                           QUERY PLAN                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=166.71..166.71 rows=1 width=32) (actual time=1507486.279..1507486.280 rows=1 loops=1)
   Buffers: shared hit=9215984 read=319665
   ->  Nested Loop  (cost=0.10..166.69 rows=278 width=15) (actual time=1339.177..1506719.095 rows=1113120 loops=1)
         Buffers: shared hit=9215984 read=319665
         ->  Nested Loop  (cost=0.08..162.73 rows=278 width=19) (actual time=1308.342..1486581.969 rows=1113120 loops=1)
               Buffers: shared hit=5873353 read=318823
               ->  Nested Loop  (cost=0.07..160.40 rows=145 width=27) (actual time=96.887..1473592.880 rows=149494 loops=1)
                     Buffers: shared hit=5173342 read=301390
                     ->  Nested Loop  (cost=0.06..138.11 rows=1138 width=16) (actual time=80.075..1135905.578 rows=1038393 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=1081968 read=232486
                           ->  Nested Loop  (cost=0.04..129.16 rows=34 width=8) (actual time=58.799..12039.500 rows=41840 loops=1)
                                 Buffers: shared hit=121541 read=16468
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=41.454..6087.932 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=22.609..22.610 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=18.814..6020.795 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Only Scan using title_idx_id on title t  (cost=0.01..0.02 rows=1 width=4) (actual time=0.139..0.139 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Heap Fetches: 0
                                       Buffers: shared hit=121538 read=4809
                           ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=2.616..26.826 rows=25 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=960427 read=216018
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.323..0.323 rows=0 loops=1038393)
                           Index Cond: (id = ci.person_id)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4091374 read=68904
               ->  Index Scan using movie_id_movie_companies on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.060..0.081 rows=7 loops=149494)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=700011 read=17433
         ->  Index Only Scan using company_name_pkey on company_name cn  (cost=0.01..0.01 rows=1 width=4) (actual time=0.017..0.017 rows=1 loops=1113120)
               Index Cond: (id = mc.company_id)
               Heap Fetches: 0
               Buffers: shared hit=3342631 read=842
 Planning Time: 5782.874 ms
 Execution Time: 1507487.077 ms
(42 rows)

