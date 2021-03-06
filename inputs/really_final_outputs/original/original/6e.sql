                                                                                    QUERY PLAN                                                                                    
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=147.08..147.08 rows=1 width=96) (actual time=17470.150..17470.151 rows=1 loops=1)
   Buffers: shared hit=3185 read=3003
   ->  Nested Loop  (cost=0.07..147.08 rows=1 width=48) (actual time=4098.374..17470.078 rows=6 loops=1)
         Buffers: shared hit=3185 read=3003
         ->  Nested Loop  (cost=0.06..134.99 rows=617 width=37) (actual time=182.114..7557.225 rows=1224 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=225 read=1062
               ->  Nested Loop  (cost=0.04..129.99 rows=19 width=41) (actual time=136.462..688.032 rows=11 loops=1)
                     Buffers: shared hit=25 read=50
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=96.518..159.543 rows=14 loops=1)
                           Buffers: shared hit=1 read=18
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=59.814..59.816 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using movie_keyword_idx_keywordid on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=36.668..99.642 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared hit=1 read=14
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=37.739..37.739 rows=1 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2000)
                           Rows Removed by Filter: 0
                           Buffers: shared hit=24 read=32
               ->  Index Scan using cast_info_idx_mid on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=35.322..623.952 rows=111 loops=11)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=200 read=1012
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=8.091..8.091 rows=0 loops=1224)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=2960 read=1941
 Planning Time: 2491.590 ms
 Execution Time: 17470.807 ms
(32 rows)

