                                                                                   QUERY PLAN                                                                                   
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Aggregate  (cost=130.27..130.27 rows=1 width=96) (actual time=1306.288..1306.288 rows=1 loops=1)
   Buffers: shared hit=102 read=140
   ->  Nested Loop  (cost=0.07..130.27 rows=1 width=48) (actual time=933.777..1306.263 rows=2 loops=1)
         Buffers: shared hit=102 read=140
         ->  Nested Loop  (cost=0.06..130.25 rows=1 width=37) (actual time=252.107..971.088 rows=33 loops=1)
               Join Filter: (t.id = ci.movie_id)
               Buffers: shared hit=24 read=86
               ->  Nested Loop  (cost=0.04..129.99 rows=1 width=41) (actual time=171.695..662.238 rows=2 loops=1)
                     Buffers: shared hit=22 read=53
                     ->  Nested Loop  (cost=0.03..128.54 rows=34 width=20) (actual time=73.409..148.930 rows=14 loops=1)
                           Buffers: shared read=19
                           ->  Index Scan using keyword_idx_keyword on keyword k  (cost=0.01..6.13 rows=1 width=20) (actual time=29.207..29.209 rows=1 loops=1)
                                 Index Cond: (keyword = 'marvel-cinematic-universe'::text)
                                 Buffers: shared read=4
                           ->  Index Scan using keyword_id_movie_keyword on movie_keyword mk  (cost=0.01..122.40 rows=39 width=8) (actual time=44.177..119.656 rows=14 loops=1)
                                 Index Cond: (keyword_id = k.id)
                                 Buffers: shared read=15
                     ->  Index Scan using title_idx_id on title t  (cost=0.01..0.04 rows=1 width=21) (actual time=36.657..36.657 rows=0 loops=14)
                           Index Cond: (id = mk.movie_id)
                           Filter: (production_year > 2014)
                           Rows Removed by Filter: 1
                           Buffers: shared hit=22 read=34
               ->  Index Scan using movie_id_cast_info on cast_info ci  (cost=0.02..0.26 rows=23 width=8) (actual time=72.932..154.353 rows=16 loops=2)
                     Index Cond: (movie_id = mk.movie_id)
                     Buffers: shared hit=2 read=33
         ->  Index Scan using name_pkey on name n  (cost=0.01..0.02 rows=1 width=19) (actual time=10.150..10.150 rows=0 loops=33)
               Index Cond: (id = ci.person_id)
               Filter: (name ~~ '%Downey%Robert%'::text)
               Rows Removed by Filter: 1
               Buffers: shared hit=78 read=54
 Planning Time: 1450.092 ms
 Execution Time: 1321.650 ms
(32 rows)

