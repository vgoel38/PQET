                                                                                            QUERY PLAN                                                                                             
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=168.39..168.39 rows=1 width=32) (actual time=1656587.194..1656587.194 rows=1 loops=1)
   Buffers: shared hit=10346211 read=343677
   ->  Nested Loop  (cost=0.10..168.37 rows=279 width=15) (actual time=1546.164..1655838.654 rows=1113120 loops=1)
         Buffers: shared hit=10346211 read=343677
         ->  Nested Loop  (cost=0.08..163.42 rows=279 width=19) (actual time=1505.515..1618193.720 rows=1113120 loops=1)
               Buffers: shared hit=5893414 read=339882
               ->  Nested Loop  (cost=0.07..161.07 rows=146 width=27) (actual time=94.026..1603419.594 rows=149494 loops=1)
                     Buffers: shared hit=5193403 read=322449
                     ->  Nested Loop  (cost=0.06..138.94 rows=1130 width=16) (actual time=77.196..1264629.144 rows=1038393 loops=1)
                           Join Filter: (t.id = ci.movie_id)
                           Buffers: shared hit=1102029 read=253545
                           ->  Nested Loop  (cost=0.04..129.98 rows=34 width=8) (actual time=73.045..101913.910 rows=41840 loops=1)
                                 Buffers: shared hit=141602 read=37527
                                 ->  Nested Loop  (cost=0.03..128.54 rows=34 width=4) (actual time=47.944..6537.158 rows=41840 loops=1)
                                       Buffers: shared hit=3 read=11659
                                       ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=4) (actual time=37.590..37.592 rows=1 loops=1)
                                             Index Cond: (keyword = 'character-name-in-title'::text)
                                             Buffers: shared read=4
                                       ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=10.306..6450.912 rows=41840 loops=1)
                                             Index Cond: (keyword_id = k.id)
                                             Buffers: shared hit=3 read=11655
                                 ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=4) (actual time=2.276..2.276 rows=1 loops=41840)
                                       Index Cond: (id = mk.movie_id)
                                       Buffers: shared hit=141599 read=25868
                           ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=3.197..27.752 rows=25 loops=41840)
                                 Index Cond: (movie_id = mk.movie_id)
                                 Buffers: shared hit=960427 read=216018
                     ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=0.324..0.324 rows=0 loops=1038393)
                           Index Cond: (id = ci.person_id)
                           Filter: (name ~~ '%B%'::text)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=4091374 read=68904
               ->  Index Scan using movie_companies_idx_mid on movie_companies mc  (cost=0.01..0.02 rows=2 width=8) (actual time=0.071..0.093 rows=7 loops=149494)
                     Index Cond: (movie_id = ci.movie_id)
                     Buffers: shared hit=700011 read=17433
         ->  Index Scan using company_name_pkey on company_name cn  (cost=0.01..0.02 rows=1 width=4) (actual time=0.032..0.032 rows=1 loops=1113120)
               Index Cond: (id = mc.company_id)
               Buffers: shared hit=4452797 read=3795
 Planning Time: 5324.799 ms
 Execution Time: 1656587.638 ms
(40 rows)

